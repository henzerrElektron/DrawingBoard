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
    color: StringConstants.actionBtnBackgroundColor//StringConstants.testPage_backgroundColor
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
            color:StringConstants.testPage_backgroundColor// "black"//StringConstants.actionBtnBackgroundColor//
            Layout.row: IntegerConstants.rowCount2
            //Layout.rowSpan: IntegerConstants.rowSpan2
            Layout.column: IntegerConstants.columnCount1
            Layout.columnSpan:IntegerConstants.columnSpan1
            // Layout.row: 1
            // Layout.rowSpan: 3
            //Layout.fillHeight: true
            // Layout.maximumWidth: 300//parent.width/4
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignRight|Qt.AlignTop
            Layout.preferredWidth: pageStartTumbler.width
            Layout.minimumWidth:pageStartTumbler.width
            Layout.maximumWidth: pageStartTumbler.width
            Layout.preferredHeight: pageEndTumbler.height
            Layout.minimumHeight: pageEndTumbler.height
            Layout.maximumHeight: pageEndTumbler.height
            NewPatientDobTumbler{
                id:pageStartTumbler
                recTextVisible: false
                lblText:StringConstants.lbl_rpStartDate
                sortLeapYears:true
                firstOrLast: false

                anchors.right: parent.right

                Component.onCompleted: {
                    pageStartTumbler.setDate.connect(pageSlider.setFromDate)
                    pageStartTumbler.setMonth.connect(pageSlider.setFromMonth)
                    pageStartTumbler.setYear.connect(pageSlider.setFromYear)
                    //pageStartTumbler.informOtherTumbler.connect(pageEndTumbler.maxYear)
                    pageStartTumbler.otherTumblerInfo.connect(pageEndTumbler.setOtherTumblerInfo)
                    //pageStartTumbler.informOtherTumbler.connect(pageEndTumbler.minYear)
                    pageStartTumbler.resetYear.connect(pageEndTumbler.resetYear)
                    setTumblerYear(0)//IntegerConstants.dobStartDate
                    setTumblerDate(0)
                    setTumblerMonth(0)

                }
            }//TestPageSwitchButtons
        }
        Rectangle {
            id: rectangleSub5
            color:StringConstants.testPage_backgroundColor
            anchors.left: rectangleSub4.right
            anchors.leftMargin: IntegerConstants.margin10
            //anchors.right: parent.right
            Layout.rightMargin: 10// "black"//StringConstants.actionBtnBackgroundColor//
            Layout.row: IntegerConstants.rowCount2
            Layout.column: IntegerConstants.columnCount2
            Layout.columnSpan:IntegerConstants.columnSpan1
            Layout.preferredWidth: pageEndTumbler.width
            Layout.minimumWidth:pageEndTumbler.width
            Layout.maximumWidth: pageEndTumbler.width

            //Layout.fillHeight: true
            Layout.preferredHeight: pageEndTumbler.height
            Layout.minimumHeight: pageEndTumbler.height
            Layout.maximumHeight: pageEndTumbler.height
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignRight|Qt.AlignTop
            NewPatientDobTumbler{
                id:pageEndTumbler
                recTextVisible: false
                lblText:StringConstants.lbl_rpEndDate
                sortLeapYears:true
                firstOrLast: true
                anchors.right: parent.right
                Component.onCompleted: {
                    pageEndTumbler.setDate.connect(pageSlider.setToDate)
                    pageEndTumbler.setMonth.connect(pageSlider.setToMonth)
                    pageEndTumbler.setYear.connect(pageSlider.setToYear)
                    //pageEndTumbler.informOtherTumbler.connect(pageStartTumbler.minYear)
                    pageEndTumbler.otherTumblerInfo.connect(pageStartTumbler.setOtherTumblerInfo)
                    //pageEndTumbler.informOtherTumbler.connect(pageStartTumbler.maxYear)
                    pageEndTumbler.resetYear.connect(pageStartTumbler.resetYear)
                    setTumblerYear(IntegerConstants.dobEndDate - IntegerConstants.dobStartDate)
                    setTumblerMonth(11)
                    setTumblerDate(30)
                }
            }//TestPageSwitchButtons
        }
        Rectangle {
            id: rectangleSub6
            color:StringConstants.actionBtnBackgroundColor
            Layout.rightMargin: 10
            Layout.leftMargin: 10//StringConstants.testPage_backgroundColor// "black"//
            Layout.row: IntegerConstants.rowCount3
            Layout.column: IntegerConstants.columnCount1
            Layout.columnSpan:IntegerConstants.columnSpan2
            //Layout.alignment: Qt.AlignTop
            anchors.top: rectangleSub5.bottom
            //Layout.fillHeight: true
            Layout.fillWidth: true
            ReportDateRangeSlider{
                id:pageSlider
                //anchors.fill: parent
                anchors.left: parent.left
                ///anchors.leftMargin: 10
                //anchors.rightMargin: 10
                anchors.right: parent.right
                height:100
                sliderDayVisible: false
                sliderMonthVisible: false
                sliderYearVisible: true
                Component.onCompleted: {
                    pageSlider.dateFromChange.connect(pageStartTumbler.setTumblerDate)
                    pageSlider.dateToChange.connect(pageEndTumbler.setTumblerDate)
                    pageSlider.monthFromChange.connect(pageStartTumbler.setTumblerMonth)
                    pageSlider.monthToChange.connect(pageEndTumbler.setTumblerMonth)
                    pageSlider.calcYearFromChange.connect(pageStartTumbler.setTumblerYear)
                    pageSlider.calcYearToChange.connect(pageEndTumbler.setTumblerYear)//checkEqualYear
                    pageSlider.calcYearFromChange.connect(checkEqualYear)
                    pageSlider.calcYearToChange.connect(checkEqualYear)
                    pageSlider.monthFromChange.connect(checkEqualMonth)
                    pageSlider.monthToChange.connect(checkEqualMonth)
                }
            }
        }

    }
}

