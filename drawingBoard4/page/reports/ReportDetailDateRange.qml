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
import "./../../common/"
import "./../../images/"
import "./../../delegates/"
import "./../../models/"
import "./../newPatient/"
import ApplicationConstants 1.0
/*!
   \qmltype ReportDetailDateRange
   \brief Contains the header section of the report page that comporises of Patient/Pratice details and the relevant date grids

  This contains patient/pratice details and also the relevant date grid.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of ReportDetails is demonstrated below
   \qml
        ReportDetailDateRange{
                        id:pageDateRange
                        anchors.fill: parent
                        Component.onCompleted: {
                                    pageDateRange.okClicked.connect(popup.closePopup)
                                    pageDateRange.cancelClicked.connect(popup.closePopup)
                                                 }
                                }
   \endqml

*/

Rectangle{
    id:mainRec
    anchors.fill: parent
    color: StringConstants.testPage_backgroundColor//StringConstants.actionBtnBackgroundColor//StringConstants.testPage_backgroundColor
    width:  rectangleSub4.width+rectangleSub5.width+60//rectangleSub5.rightMargin
    //height: mainGrid.height//rectangleSub4.height+rectangleSub5.height+rectangleSub6.height+rectangleSub7.height
    signal okClicked()
    signal cancelClicked()
    onOkClicked: {
        close()
    }
    onCancelClicked: {
        close()
    }

    GridLayout{
        id:mainGrid
        //anchors.rightMargin: 10
        //anchors.leftMargin: 10
        anchors.fill: parent
        rows: IntegerConstants.rowCount4
        columns: IntegerConstants.columnCount2
        //NewPatientGroupLabel{
         GroupLabel{
            id:contactDetailLabel1
            Layout.fillWidth: true
            Layout.row: IntegerConstants.rowCount1
            Layout.rowSpan: IntegerConstants.rowSpan1
            Layout.column: IntegerConstants.columnCount1
            Layout.columnSpan:IntegerConstants.columnSpan2
            text: StringConstants.lbl_rpDateRange
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            Layout.preferredHeight: 30
            //Layout.fillWidth: true
            Layout.minimumHeight: 30
            Layout.maximumHeight: 30
        }
        Rectangle {
            id: rectangleSub4
            color:StringConstants.actionBtnBackgroundColor//StringConstants.testPage_backgroundColor// "black"//StringConstants.actionBtnBackgroundColor//
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
                    pageStartTumbler.setYear.connect(pageSlider.checkEqualYear)
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
            color:StringConstants.actionBtnBackgroundColor//StringConstants.testPage_backgroundColor
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
                    pageEndTumbler.setYear.connect(pageSlider.checkEqualYear)
                    //pageEndTumbler.informOtherTumbler.connect(pageStartTumbler.minYear)
                    pageEndTumbler.otherTumblerInfo.connect(pageStartTumbler.setOtherTumblerInfo)
                    //pageEndTumbler.informOtherTumbler.connect(pageStartTumbler.maxYear)
                    pageEndTumbler.resetYear.connect(pageStartTumbler.resetYear)
                    setTumblerYear(IntegerConstants.dobEndDate - IntegerConstants.dobStartDate)
                    setTumblerMonth(11)
                    setPrevSetDate(30)
                    setTumblerDate(30)//getDaysInMonth(11,IntegerConstants.dobEndDate)
                }
            }//TestPageSwitchButtons
        }
        Rectangle {
            id: rectangleSub6
            color:"white"//StringConstants.testPage_backgroundColor//StringConstants.actionBtnBackgroundColor
            Layout.row: IntegerConstants.rowCount3
            Layout.rowSpan: IntegerConstants.rowCount1
            Layout.column: IntegerConstants.columnCount1
            Layout.columnSpan:IntegerConstants.columnSpan2
            //            anchors.top: rectangleSub5.bottom
            //            anchors.right: parent.right
            //            anchors.left: parent.left
            //            anchors.topMargin: 10
            //            anchors.rightMargin: 15
            //            anchors.leftMargin: 15
            //Layout.leftMargin: 15//20
            //Layout.rightMargin: 15//20
            //Layout.topMargin: 15//20
            //Layout.bottomMargin: 10
            //Layout.bottomMargin: 15
            Layout.fillWidth: true
            Layout.fillHeight: true
            anchors.left: rectangleSub4.left
            anchors.right: rectangleSub5.right
            anchors.top: rectangleSub5.bottom
            anchors.topMargin: 25
            Layout.maximumHeight: pageSlider.height
            //anchors.rightMargin: 10
            //anchors.leftMargin: 10
            //Layout.rightMargin: 10
            //Layout.leftMargin: 10//StringConstants.testPage_backgroundColor// "black"//
            //Layout.alignment: Qt.AlignTop
            //Layout.fillHeight: true
            ReportDateRangeSlider{
                id:pageSlider
                anchors.left: parent.left
                anchors.right: parent.right
                height:100
                sliderDayVisible: false//true//
                sliderMonthVisible: false//true//
                sliderYearVisible: true
                //anchors.fill: parent
                ///anchors.leftMargin: 10
                //anchors.rightMargin: 10
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
        //        Rectangle{
        //            id:rectangleSub7
        //            color:StringConstants.testPage_backgroundColor
        //            Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
        //            Layout.row: IntegerConstants.rowCount4
        //            Layout.rowSpan: IntegerConstants.rowCount1
        //            Layout.column: IntegerConstants.columnCount1
        //            Layout.columnSpan:IntegerConstants.columnSpan2
        //            anchors.top: rectangleSub6.bottom
        //            anchors.topMargin: 10
        //            anchors.left: rectangleSub6.left
        //            anchors.right: rectangleSub6.right
        //            anchors.bottom: parent.bottom
        //            anchors.bottomMargin: 5
        //            Layout.fillHeight: true
        //            Layout.fillWidth: true
        //            Layout.preferredHeight:100//(parent.height -  (rectangleSub6.height+rectangleSub5.height+rectangleSub4.height+contactDetailLabel1.height+50))
        //            Layout.minimumHeight: 100
        //            Layout.maximumHeight: 100
        //            ReportOkCancelGroup{
        //                id:pgOkCancel
        //                //anchors.left: parent.left
        //                //anchors.right: parent.right
        //                anchors.centerIn: parent
        //                //height: 100

        //                Component.onCompleted: {
        //                    pgOkCancel.okClicked.connect(mainRec.pgOkCancel)
        //                    pgOkCancel.cancelClicked.connect(mainRec.pgOkCancel)
        //                }
        //            }

        //        }

    }
}

