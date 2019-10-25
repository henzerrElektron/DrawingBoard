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
import "./../../images/"
//import "./../../imports/"
import "./../../models/"
import "./../../common/"
import "./../../delegates/"
import "./../newPatient/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0

//Item {
//  width: 950
//  height: 275

Rectangle {
    id: ptLabel
    color: StringConstants.testPage_backgroundColor
    property alias titleGroup: pgTitle.actionGridGroup
    anchors.fill: parent
    signal invokeSource(var source)
    onInvokeSource: {
        console.log("Source invoked"+source)
    }

    signal invokeIndex(int index)
    onInvokeIndex: {
        console.log("Index invoked"+index)
    }
    //height: 400
    //width: 800
    GridLayout{
        id: mainRow
        // width: 700
        anchors.fill: parent
        //columns: 3
        rows:2
        columns:2
        Rectangle {
            id: rectangle1
            color: StringConstants.testPage_backgroundColor
            //color: "black"
            //anchors.top: parent.top
            //anchors.left: parent.left
            //Layout.column: 1
            //Layout.columnSpan: 3
            //Layout.fillHeight: true
            height:80// pgTitle.height
            //Layout.maximumHeight: 150//rectangle.height/3
            //height: rectangle.height/3
            Layout.fillWidth: true
            Layout.row: 1
            Layout.column: 1
            Layout.columnSpan: 2
            //Test
            PageTitle{
                id:pgTitle
                anchors.fill: parent
                logoVisible: false
                actionGridGroup:"testPageItems"//"newPatientItems"
                actionFilterName:"testPageItems"
                Component.onCompleted: {
                    pgTitle.invokeSource.connect(ptLabel.invokeSource)
                    pgTitle.invokeIndex.connect(ptLabel.invokeIndex)
                }
            }//TestPageTitle

            //Layout.rowSpan: 2
            //Layout.maximumHeight: parent.height/5
        }//TestPageTitle
        // Rectangle {
        //     id: rectangle2
        //     color: Constants.testPage_backgroundColor
        //color: "black"
        //anchors.top: parent.top
        //anchors.left: parent.left
        //Layout.column: 1
        //Layout.columnSpan: 1
        // Layout.minimumHeight: parent.height - rectangle1.height
        // height: 500
        //     Layout.fillHeight: true
        //      Layout.fillWidth: true
        //      Layout.row: 2
        //      Layout.rowSpan: 2
        //      GridLayout{
        //          id: mainCol
        //          anchors.fill: parent
        //          columns: 2
        Rectangle {
            id: rectangleSub1
            color: StringConstants.testPage_backgroundColor
            //color: "black"
            //anchors.top: parent.top
            //anchors.left: parent.left
            Layout.row: 2
            Layout.column: 1
            //Layout.columnSpan: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
            //TestPageAllLabels
            NewPatientPersonalDetails{
                id:pageLabels
                //anchors.fill: parent
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.horizontalCenter: parent.horizontalCenter
                //gridRow: IntegerConstants.rowCount5
//                lbl1Visible:true
//                lbl2Visible: true
//                lbl3Visible: true
//                lbl4Visible: true
//                lbl5Visible: false
//                lbl6Vislbe: true
//                lbl7Visible: true
                pageSpOrNp:true
                pageNpSpTp:3
                //anchors.left: parent.left
                //anchors.top: parent.top
                //anchors.bottom: parent.bottom
            }
        }
        Rectangle {
            id: rectangleSub2
            color: StringConstants.testPage_backgroundColor
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            //color: "red"
            //anchors.top: parent.top
            //anchors.left: parent.left
            Layout.row: 2
            Layout.column: 2
            Layout.columnSpan: 1
            Layout.fillHeight: true
            Layout.minimumWidth:   parent.width/3
            Layout.minimumHeight:  parent.height/2
            Layout.maximumWidth:  parent.width/3
            Layout.maximumHeight: parent.height/2

            //width: parent.width/3
            //Layout.fillWidth: true
            TestPageSwitchButtons{
                id:pageSwitchButtons
                anchors.fill: parent
                anchors.left: parent.left
                anchors.leftMargin: 10
                anchors.right: parent.right
                anchors.rightMargin: 10
                anchors.top: parent.top
                anchors.topMargin: 10
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 10
                // color: "black"
                //width: parent.width/2
                //height: parent.height/2
                //anchors.fill: parent
                // anchors.right: parent.right
                //  anchors.verticalCenter: parent.verticalCenter
                //anchors.left: parent.left
                //anchors.top: parent.top
                //anchors.bottom: parent.bottom
            }//TestPageSwitchButtons
        }

        //    }
        // }

        //                TestPageSwitchButtons {
        //                    id: rectangle4
        //                    anchors.left: pageLabels.right
        //                    //                    Layout.column: 2
        //                    //                    Layout.columnSpan: 1
        //                    //                    Layout.fillHeight: true
        //                    //                    Layout.fillWidth: true
        //                    //                    Layout.row: 2
        //                    //                    //Layout.rowSpan: 5
        //                    //                    //anchors.centerIn: rectangle1
        //                    //                    //anchors.left: rectangle1.right
        //                    //                    //anchors.leftMargin: 0
        //                    //                    Layout.leftMargin: 0
        //                    //anchors.top: rectangle3.bottom
        //                }
        //            }
        //            TestPageAllLabels {
        //                id: rectangle2
        //                Layout.column: 1
        //                Layout.columnSpan: 1
        //                Layout.fillHeight: true
        //                Layout.fillWidth: true
        //                Layout.row: 2
        //                //Layout.rowSpan: 5
        //                anchors.bottom: parent.bottom
        //                anchors.top: rectangle1.bottom
        //            }

        //            TestPageActionButtons {
        //                id: rectangle3
        //                Layout.column: 3
        //                Layout.columnSpan: 1
        //                Layout.fillHeight: true
        //                Layout.fillWidth: true
        //                Layout.row: 1
        //                Layout.rowSpan: 7
        //            }
        //            TestPageSwitchButtons {
        //                id: rectangle4
        //                Layout.column: 2
        //                Layout.columnSpan: 1
        //                Layout.fillHeight: true
        //                Layout.fillWidth: true
        //                Layout.row: 2
        //                //Layout.rowSpan: 5
        //                //anchors.centerIn: rectangle1
        //                //anchors.left: rectangle1.right
        //                //anchors.leftMargin: 0
        //                Layout.leftMargin: 0
        //                //anchors.top: rectangle3.bottom
        //            }


    }


}

//}























































































/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1;anchors_height:200;anchors_width:200;anchors_x:107;anchors_y:66}
}
 ##^##*/
