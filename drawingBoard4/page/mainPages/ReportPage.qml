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
import ApplicationConstants 1.0
import "."
import "./../../images/"
//import "./../../imports/"
import "./../../models/"
import "./../../delegates/"
import "./../test/"
import "./../../common/"
import "./../reports/"
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
//Item {
//  width: 950
//  height: 275

Rectangle {
    id: rpPage
    color: StringConstants.testPage_backgroundColor//StringConstants.testPage_backgroundColor
    anchors.fill: parent
    //height: 400
    // width: 800
    signal invokeSource(string source)
    onInvokeSource: {
        console.log("Source invoked"+source)
    }

    signal invokeIndex(int index)
    onInvokeIndex: {
        console.log("Index invoked"+index)
    }
    function printTest()
    {
        console.log("I am printing a test here")
    }

    function closePopup(){
        popup.close()
    }

    GridLayout{
        id: mainRow
        // width: 700
        anchors.fill: parent
        //columns: 3
        rows:2//3
//        Rectangle{
//            id:mainRec
//            Layout.row: 1
//            Layout.fillHeight: true
//            Layout.fillWidth: true
//            Layout.preferredHeight: parent.height/3
//            Layout.minimumHeight: parent.height/3
//            Layout.maximumHeight: parent.height/3
//            color: StringConstants.testPage_backgroundColor
//            ReportPageHeader{
//                id:pageHeader
//                anchors.fill: parent
//                Component.onCompleted: {
//                    //pageSlider.dateFromChange.connect(pageStartTumbler.setTumblerDate)
//                    pageHeader.openDateRange.connect(popup.open)
//                    pageHeader.invokeSource.connect(rpPage.invokeSource)
//                    pageHeader.invokeIndex.connect(rpPage.invokeIndex)
//                }
//            }

//        }
        Rectangle {
            id: rectangle1
            color: StringConstants.testPage_backgroundColor
            height:75// pgTitle.height
            Layout.fillWidth: true
            Layout.row: 1


            PageTitle{
                id:pgTitle
                anchors.fill: parent
                logoVisible: false
                actionGridGroup:StringConstants.modelReportPageItems//"newPatientItems"
                labelText: StringConstants.lbl_rpPageHeader
                Component.onCompleted: {
                    pgTitle.invokeSource.connect(rpPage.invokeSource)
                    pgTitle.invokeIndex.connect(rpPage.invokeIndex)
                }
            }//TestPageTitle
        }//TestPageTitle
        Rectangle{
            id:subRec
            Layout.row: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: StringConstants.testPage_backgroundColor
            Layout.preferredHeight: parent.height - mainRec
            Layout.minimumHeight: parent.height - mainRec
            Layout.maximumHeight: parent.height - mainRec
            Layout.minimumWidth: parent.width

            ReportTabs{
                id:mainTab
                anchors.fill: parent
                Component.onCompleted: {
                    mainTab.popupOpen.connect(popup.open)
                    mainTab.btn1Clicked.connect(popup.open)
                    mainTab.btn2Clicked.connect(popup.open)
                    mainTab.btn3Clicked.connect(popup.open)
                    mainTab.btn4Clicked.connect(popup.open)
                    mainTab.btn5Clicked.connect(popup.open)//poup.open
                    mainTab.popupInvokeIndex.connect(rpPage.popupInvokeIndex)
                    mainTab.popupInvokeSource.connect(rpPage.popupInvokeSource)
                }
            }
        }
        Popup {
            id: popup
            //x: parent.width/2 - parent.width/4
            //y: parent.height/2 - parent.height/4
            anchors.centerIn: parent

            width: parent.width/2
            height: 750//pageDateRange.height+200
            modal: true
            focus: true
            background: Rectangle{
                anchors.fill: parent
                color: StringConstants.testPage_backgroundColor
            }
            Rectangle{
                id:mainPopupRec
                anchors.fill: parent
                color: StringConstants.testPage_backgroundColor
                ReportDetailDateRange{
                    id:pageDateRange
                    anchors.fill: parent
                    Component.onCompleted: {
                        pageDateRange.okClicked.connect(popup.closePopup)
                        pageDateRange.cancelClicked.connect(popup.closePopup)
                    }

                }
            }
            closePolicy: Popup.CloseOnEscape | Popup.CloseOnPressOutsideParent

        }
        //                    ReportDetailDateRange{
        //                        id:pageDateRange
        //                        anchors.fill: parent


        //                        //sli
        //                    }

        //        Rectangle {
        //            id: rectangle1
        //            color: StringConstants.testPage_backgroundColor
        //            height:75// pgTitle.height
        //            Layout.fillWidth: true
        //            Layout.bottomMargin: 10
        //            Layout.row: 1
        //            PageTitle{
        //                id:pgTitle
        //                anchors.fill: parent
        //                actionGridGroup:StringConstants.modelReportPageItems//"newPatientItems"
        //                labelText: StringConstants.lbl_rpPageHeader
        //            }//TestPageTitle
        //        }//TestPageTitle
        //        Rectangle {
        //            id: rectangle2
        //            color: StringConstants.testPage_backgroundColor
        //            Layout.fillHeight: true
        //            Layout.fillWidth: true
        //            Layout.row: 2
        //            Layout.rowSpan: 2
        //            GridLayout{
        //                id: mainCol
        //                anchors.fill: parent
        //                columns: 4
        //                rows: 3
        //                Rectangle{
        //                    id:rectangleSub1
        //                    color: "black"//StringConstants.testPage_backgroundColor
        //                    Layout.row: 1
        //                    Layout.column: 1
        //                    Layout.columnSpan: 1
        //                    //Layout.column: 1
        //                    //Layout.row: 2
        //                    Layout.fillHeight: true
        //                    Layout.fillWidth: true
        //                    //width: 100
        //                    //height: 150
        //                    ReportDetails{
        //                        id:pageTitle
        //                        anchors.fill: parent
        ////                        labelText: StringConstants.lbl_npPatientTitle
        ////                        firstTumblerVisibility: true
        ////                        secTumblerVisibility: false
        ////                        thirdTumblerVisibility: false
        ////                        firstTumblerModel:OtherConstants.modelTitle
        //                    }
        //                }
        //            }
        //        }
    }


}

//}





















































































/*##^## Designer {
    D{i:1;anchors_height:200;anchors_width:200;anchors_x:107;anchors_y:66}
}
 ##^##*/
