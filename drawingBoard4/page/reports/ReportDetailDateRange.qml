import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Shapes 1.11
import QtQuick.Templates 2.5
import QtQuick.Layouts 1.3
import QtQuick.Extras 1.4
import QtQuick.Dialogs.qml 1.0
import QtQuick.Controls.Universal 2.0
import Qt.labs.calendar 1.0
import QtQuick.Controls.Material 2.0
import QtQuick.Controls 2.3
import Qt.labs.settings 1.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Shapes 1.11
import "."
import "./../../images/"
import "./../../delegates/"
import "./../../models/"
import "./../newPatient/"
import ApplicationConstants 1.0


Rectangle{
    id:mainRec
    anchors.fill: parent
    color: StringConstants.actionBtnBackgroundColor
    width:  rectangleSub4.width+rectangleSub5.width
    GridLayout{
        id:mainGrid
        anchors.fill: parent
        rows: IntegerConstants.rowCount3
        columns: IntegerConstants.columnCount2
        NewPatientGroupLabel{
            id:contactDetailLabel1
            Layout.fillWidth: true
            Layout.row: IntegerConstants.rowCount1
            Layout.rowSpan: IntegerConstants.rowSpan1
            Layout.column: IntegerConstants.columnCount1
            Layout.columnSpan:IntegerConstants.columnSpan2
            text: StringConstants.lbl_rpDateRange
            Layout.preferredHeight: 30
            Layout.minimumHeight: 30
            Layout.maximumHeight: 30
        }
        Rectangle {
            id: rectangleSub4
            color:StringConstants.testPage_backgroundColor// "black"//
            Layout.row: IntegerConstants.rowCount2
            //Layout.rowSpan: IntegerConstants.rowSpan2
            Layout.column: IntegerConstants.columnCount1
            Layout.columnSpan:IntegerConstants.columnSpan1
            // Layout.row: 1
            // Layout.rowSpan: 3
            Layout.fillHeight: true
            // Layout.maximumWidth: 300//parent.width/4
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignRight
            Layout.preferredWidth: pageStartTumbler.width
            Layout.minimumWidth:pageStartTumbler.width
            Layout.maximumWidth: pageStartTumbler.width
            NewPatientDobTumbler{
                id:pageStartTumbler
                recTextVisible: false
                lblText:StringConstants.lbl_rpStartDate
                sortLeapYears:true
                firstOrLast: false
                //stopDateIndex: pageEndTumbler.curSetDate
               // stopMonthIndex: pageEndTumbler.curSetMonth
               // stopYearIndex: pageEndTumbler.curSetYear
                //anchors.fill: parent
                // width: parent.width/2
                // height: parent.height/2
                anchors.right: parent.right
                //anchors.horizontalCenter: parent.horizontalCenter
                /// anchors.verticalCenter: parent.verticalCenter
                Component.onCompleted: {
                 ////////////   pageStartTumbler.setDate.connect(pageSlider.setFromDate)
                   // pageStartTumbler.setDate.connect(pageEndTumbler.checkStopDateIndex)
                //////////////    pageStartTumbler.setMonth.connect(pageSlider.setFromMonth)
                  //  pageStartTumbler.setDate.connect(pageEndTumbler.checkStopMonthIndex)
                /////////////    pageStartTumbler.setYear.connect(pageSlider.setFromYear)
                 //   pageStartTumbler.setDate.connect(pageEndTumbler.checkStopYearIndex)
                }
            }//TestPageSwitchButtons
        }
        Rectangle {
            id: rectangleSub5
            color:StringConstants.testPage_backgroundColor// "black"//
            Layout.row: IntegerConstants.rowCount2
            Layout.column: IntegerConstants.columnCount2
            Layout.columnSpan:IntegerConstants.columnSpan1
            Layout.preferredWidth: pageEndTumbler.width
            Layout.minimumWidth:pageEndTumbler.width
            Layout.maximumWidth: pageEndTumbler.width
            //Layout.rowSpan: IntegerConstants.rowSpan3
            // Layout.row: 1
            // Layout.rowSpan: 3
            Layout.fillHeight: true
            // Layout.maximumWidth: 300//parent.width/4
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignRight
            NewPatientDobTumbler{
                id:pageEndTumbler
                recTextVisible: false
                lblText:StringConstants.lbl_rpEndDate
                //curSetDate:31
                //curSetMonth:Calendar.December
                //curSetYear:2019
                sortLeapYears:true
                firstOrLast: true
               // stopDateIndex: pageStartTumbler.curSetDate
               // stopMonthIndex: pageStartTumbler.curSetMonth
               // stopYearIndex: pageStartTumbler.curSetYear
                //dateModel:pageSlider.dateSliderTo //pageSlider.getDaysInMonth(slider2.sliderTo,slider3.sliderTo)//pageSlider.dateSliderTo
                //anchors.fill: parent
                // width: parent.width/2
                // height: parent.height/2
                anchors.right: parent.right
                //anchors.horizontalCenter: parent.horizontalCenter
                /// anchors.verticalCenter: parent.verticalCenter
                Component.onCompleted: {

                   // pageEndTumbler.setDate.connect(pageStartTumbler.checkStopDateIndex)
                  ///////////////  pageEndTumbler.setDate.connect(pageSlider.setToDate)
                  //  pageEndTumbler.setDate.connect(pageStartTumbler.checkStopMonthIndex)
                ///////////    pageEndTumbler.setMonth.connect(pageSlider.setToMonth)
                 //   pageEndTumbler.setDate.connect(pageStartTumbler.checkStopYearIndex)
                  //////////////  pageEndTumbler.setYear.connect(pageSlider.setToYear)
                    // setTumblerDate(30)
                    // setTumblerMonth(11)
                    // setTumblerYear(IntegerConstants.dobEndDate - IntegerConstants.dobStartDate - 1)
                }
            }//TestPageSwitchButtons
        }
        Rectangle {
            id: rectangleSub6
            color:StringConstants.testPage_backgroundColor// "black"//
            Layout.row: IntegerConstants.rowCount3
            Layout.column: IntegerConstants.columnCount1
            Layout.columnSpan:IntegerConstants.columnSpan2
            Layout.fillHeight: true
            Layout.fillWidth: true
            //Layout.preferredHeight: 100
            //Layout.alignment: Qt.AlignRight
            ReportDateRangeSlider{
                id:pageSlider
                anchors.fill: parent
                Component.onCompleted: {
                    pageSlider.dateFromChange.connect(pageStartTumbler.setTumblerDate)
                    pageSlider.dateToChange.connect(pageEndTumbler.setTumblerDate)
                    pageSlider.monthFromChange.connect(pageStartTumbler.setTumblerMonth)
                    pageSlider.monthToChange.connect(pageEndTumbler.setTumblerMonth)
                    pageSlider.calcYearFromChange.connect(pageStartTumbler.setTumblerYear)
                    pageSlider.calcYearToChange.connect(pageEndTumbler.setTumblerYear)
                }
                //slider1From: pageStartTumbler.dateTumblerModel.valueat(0)
            }
        }

    }
}

