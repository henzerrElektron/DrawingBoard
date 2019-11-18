import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Shapes 1.11
import QtQuick.Templates 2.5
import QtQuick.Layouts 1.12
import QtQuick.Extras 1.4
import QtQuick.Dialogs.qml 1.0
import QtQuick.Controls.Universal 2.0
import Qt.labs.calendar 1.0
import QtQuick.Controls.Material 2.0
import QtQuick.Controls 2.3
import Qt.labs.settings 1.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Shapes 1.11
import QtQml.Models 2.12
import "."
import "./../../common/"
import "./../../images/"
//import "./../../imports/"
import "./../../models/"
import "./../../delegates/"
import "./../test/"
import "./../home/"
import "./../newPatient/"
import ApplicationConstants 1.0
Rectangle{
    id:reportHeaderItemRec
    anchors.fill: parent
    color: StringConstants.actionBtnBackgroundColor
    property alias filterName: dateGroupBtns.filterName
    signal openDateRange()
    signal todayClicked()
    signal thisWeekClicked()
    signal thisMonthClicked()
    signal sixMonthClicked()
    signal thisYearClicked()
    signal btn1Clicked()
    signal btn2Clicked()
    signal btn3Clicked()
    signal btn4Clicked()
    signal btn5Clicked()
    signal btn6Clicked()
    signal invokeSource(string source)
    onInvokeSource: {
        console.log("Source invoked"+source)
    }

    signal invokeIndex(int index)
    onInvokeIndex: {
        console.log("Index invoked"+index)
    }

    NewPatientGroupLabel{
        id:contactDetailLabel1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        height: 30
        //Layout.fillWidth: true
        //Layout.row: IntegerConstants.rowCount1
        //Layout.rowSpan: IntegerConstants.rowSpan1
        //Layout.column: 1
        //Layout.columnSpan: 3
        //Layout.column: IntegerConstants.columnCount1
        //Layout.columnSpan:IntegerConstants.columnSpan2
        //Layout.preferredHeight: 30
        //Layout.minimumHeight: 30
        //Layout.maximumHeight: 30
        text: StringConstants.lbl_rpDateRange

    }
    Rectangle {
        id:subRec
        anchors.top: contactDetailLabel1.bottom
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.leftMargin: parent.width/10
        //anchors.fill: parent
        anchors.topMargin: 30//contactDetailLabel1.height *3
       // anchors.centerIn: parent
      //  width: parent.width - parent.width/4//mainRow.width
      //  height: (parent.height- (2*contactDetailLabel1.height))// - (2*contactDetailLabel1.height)// - (parent.height- contactDetailLabel1.height)/4//mainRow.height+contactDetailLabel1.height
        color: StringConstants.actionBtnBackgroundColor
        ReportPageDateBtnGroup{
            id:dateGroupBtns
            anchors.fill: parent
            //group1: modelName//StringConstants.modelReportPatientItems
            //group: modelName//StringConstants.modelReportPatientItems
            //filterName: modelName//.modelReportPatientItems
            verticalLayoutDirection: Grid.TopToBottom
            layoutDirection: Qt.LeftToRight
            flow: Grid.LeftToRight
            flickableDirection: Flickable.HorizontalAndVerticalFlick
            Component.onCompleted: {
                dateGroupBtns.invokeSource.connect(reportHeaderItemRec.invokeSource)
                dateGroupBtns.invokeIndex.connect(reportHeaderItemRec.invokeIndex)
                // homePageLabel.invokeSource.connect(homePage.invokeSource)
            }
        }

        //        GridLayout{
        //            id: mainRow
        //            //anchors.fill: parent
        //            anchors.left: parent.left
        //            anchors.right: parent.right
        //            anchors.top: parent.top//contactDetailLabel1.bottom
        //            anchors.bottom: parent.bottom
        //            anchors.leftMargin: 30
        //            anchors.rightMargin: 30
        //            anchors.bottomMargin: 30
        //            anchors.topMargin: 30

        //            columns: 3
        //            rows: 2

        //            ReportPageBtn{
        //                id:todayBtn
        //                text: StringConstants.btn_reportPageDateToday
        //                onClicked: {
        //                    todayClicked()
        //                    btn1Clicked()
        //                    console.log("Today Clicked")
        //                }
        //            }
        //            ReportPageBtn{
        //                id:thisWeekBtn
        //                text: StringConstants.btn_reportPageDateThisWeek
        //                onClicked: {
        //                    thisWeekClicked()
        //                    btn2Clicked()
        //                    console.log("This Week")
        //                }
        //            }
        //            ReportPageBtn{
        //                id:thisMonthBtn
        //                text: StringConstants.btn_reportPageDateThisMonth
        //                onClicked: {
        //                    thisMonthClicked()
        //                    btn3Clicked()
        //                    console.log("This Month")
        //                }
        //            }
        //            ReportPageBtn{
        //                id:sixMonthBtn
        //                text:StringConstants.btn_reportPageDateSixMonths
        //                onClicked: {
        //                    sixMonthClicked()
        //                    btn4Clicked()
        //                    console.log("Six Month")
        //                }
        //            }
        //            ReportPageBtn{
        //                id:thisYearBtn
        //                text: StringConstants.btn_reportPageDateThisYear
        //                onClicked: {
        //                    thisYearClicked()
        //                    btn5Clicked()
        //                    console.log("This year")
        //                }
        //            }
        //            ReportPageBtn{
        //                id:customDatesBtn
        //                text: StringConstants.btn_reportPageDateCustoms
        //                onClicked: {
        //                    console.log("Custom Dates")
        //                    openDateRange()
        //                    btn6Clicked()
        //                }
        //            }
        //        }
    }
}
