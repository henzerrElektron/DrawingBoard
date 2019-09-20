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

Rectangle {
    id: rpHeader
    color: StringConstants.testPage_backgroundColor
    //color: StringConstants.actionBtnBackgroundColor////StringConstants.testPage_backgroundColor//StringConstants.testPage_backgroundColor
    anchors.fill: parent
    signal openDateRange()
    signal invokeSource(var source)
    onInvokeSource: {
        console.log("Source invoked"+source)
    }

    signal invokeIndex(int index)
    onInvokeIndex: {
        console.log("Index invoked"+index)
    }
    GridLayout{
        id: mainRow
        anchors.fill: parent
        rows:2//3

        Rectangle {
            id: rectangle1
            color: StringConstants.testPage_backgroundColor
            height:75// pgTitle.height
            Layout.fillWidth: true
            Layout.row: 1


            PageTitle{
                id:pgTitle
                anchors.fill: parent
                actionGridGroup:StringConstants.modelReportPageItems//"newPatientItems"
                labelText: StringConstants.lbl_rpPageHeader
                Component.onCompleted: {
                    pgTitle.invokeSource.connect(rpHeader.invokeSource)
                    pgTitle.invokeIndex.connect(rpHeader.invokeIndex)
                }
            }//TestPageTitle
        }//TestPageTitle
        Rectangle {
            id: rectangle2
            color: StringConstants.testPage_backgroundColor
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.row: 2
            Layout.rowSpan: 2
            GridLayout{
                id: mainCol
                anchors.fill: parent
                columns: 2
                //rows: 3
                Rectangle{
                    id:rectangleSub1
                    color: StringConstants.testPage_backgroundColor
                    Layout.row: 1
                    Layout.column: 1
                    Layout.columnSpan: 1
                    //Layout.column: 1
                    //Layout.row: 2
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.leftMargin: 10
                    //Layout.preferredWidth:parent.width/3//500//
                    //Layout.minimumWidth: parent.width/3//500//
                    //Layout.maximumWidth: parent.width/3//500//
                    //width: 100
                    //height: 150
                    ReportDetails{
                        id:pageTitle
                        anchors.fill: parent
                        //                        labelText: StringConstants.lbl_npPatientTitle
                        //                        firstTumblerVisibility: true
                        //                        secTumblerVisibility: false
                        //                        thirdTumblerVisibility: false
                        //                        firstTumblerModel:OtherConstants.modelTitle
                    }
                }
                Rectangle{
                    id:rectangleSub2
                    color: StringConstants.testPage_backgroundColor
                    Layout.row: 1
                    Layout.column: 2
                    Layout.columnSpan: 1
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.rightMargin: 10
                    ReportDateGrid{
                        id:btnGrd
                        anchors.fill: parent
                        Component.onCompleted: {
                           openDateRange.connect(rpHeader.openDateRange)
                        }
                    }

//                    Button{
//                        id:btnId
//                        text: "Date Range"
//                        width: 200
//                        height: 100
//                        anchors.horizontalCenter: parent.horizontalCenter
//                        //anchors.fill: parent
//                        onClicked: {
//                            openDateRange()
//                        }
//                    }

                    //                    ReportDetailDateRange{
                    //                        id:pageDateRange
                    //                        anchors.fill: parent
                    //                    }
                }
            }
        }
    }


}

//}





















































































/*##^## Designer {
    D{i:1;anchors_height:200;anchors_width:200;anchors_x:107;anchors_y:66}
}
 ##^##*/
