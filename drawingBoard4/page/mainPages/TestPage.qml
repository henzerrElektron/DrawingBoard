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
import "./../test/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0


Rectangle {
    id:testPage
    //width: 960
    //height: 640
    signal invokeSource(var source)
    onInvokeSource: {
        console.log("Source invoked"+source)
    }

    signal invokeIndex(int index)
    onInvokeIndex: {
        console.log("Index invoked"+index)
    }
    function changeVisibility(index)
    {
        if(index === 0)
        {
            rectangle6.visible = true
            rectangle3.visible = true
        }
        else
        {
            rectangle6.visible = false
            rectangle3.visible = false
        }
    }

    GridLayout {
        id: gridLayout
        anchors.fill: parent
        rows:3
        columns: 2
        //RowLayout{
        //    id: row
        //    anchors.fill: parent
        //    Layout.fillWidth: true
        //    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        Rectangle{
            id:rectangle1
            color: StringConstants.actionBtnBackgroundColor//"transparent"
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.row: 1
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
            Layout.minimumHeight: parent.height/4 +25//- 75
            Layout.preferredHeight: parent.height/4 +25//- 75
            Layout.maximumHeight: parent.height/4 +25//- 75
            PatientLabel{
                id:ptLabel
                anchors.fill: parent
                //Layout.column: 1
                //Layout.columnSpan: 2
                //Layout.fillHeight: true
                Component.onCompleted: {
                    invokeSource.connect(testPage.invokeSource)
                    invokeIndex.connect(testPage.invokeIndex)
                }
            }
        }
        Rectangle{
            id:rectangle2
            color: StringConstants.barBackgroundColor//"transparent"
            border.color: StringConstants.borderColorBlack
            border.width: 2
            // anchors.top: rectangle1.bottom
            // anchors.left: gridLayout.left
            // anchors.bottom: rectangle6.top
            //anchors.right: rectangle2.left
            //anchors.fill: parent
            Layout.column: 1
            Layout.columnSpan: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.row: 2
            //Layout.minimumHeight: 400
            Layout.minimumHeight: parent.height - rectangle1.height
            Layout.maximumHeight: parent.height - rectangle1.height
            Layout.preferredHeight: parent.height - rectangle1.height
            Layout.minimumWidth: parent.width/2 + parent.width/4
            //Layout.preferredHeight:400
            //Layout.preferredWidth:400
            //            XYPlot{
            //                id:xyplotgrid
            //                width: 500
            //                //height: 500
            //                //anchors.fill: parent
            //                anchors.left: rectangle1.left
            //                anchors.right: rectangle2.left
            //                anchors.top: rectangle1.top
            //                anchors.bottom: rectangle1.bottom
            //            }
            TestPlotTabs{
                id:testpagePlotTabs
                //Layout.fillHeight: true
                // Layout.fillWidth: true
                anchors.fill: parent
                //                anchors.left: rectangle1.left
                //                anchors.right: rectangle2.left
                //                anchors.top: rectangle1.top
                //                anchors.bottom: rectangle1.bottom
                //            }
                Component.onCompleted: {
                      currentIndexValue.connect(testPage.changeVisibility)
                }
            }

        }
        Rectangle{
            id:rectangle3
            color: StringConstants.color_gbTransparent//StringConstants.actionBtnBackgroundColor//"green"//"transparent"
            // anchors.top: rectangle1.bottom//parent.top//
            // anchors.left: rectangle2.right
            // anchors.bottom: rectangle6.top
            //  anchors.right: parent.right
            //anchors.fill: parent
            Layout.column: 3
            Layout.columnSpan: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.row: 2
            //Layout.minimumHeight: 400
            Layout.minimumWidth: parent.width -rectangle2.width
            Layout.maximumHeight: parent.height - rectangle6.height
            //Layout.maximumWidth: parent.width - rectangle2.width
            //Layout.preferredWidth:  parent.width - rectangle2.width
            //width: parent.width - rectangle2.width
            //height: parent.height
            GridLayout {
                id: subgridLayout
                rowSpacing: 0
                anchors.fill: parent
                rows:2
                columns: 1
                Rectangle{
                    id:rectangle4
                    color: "transparent"
                    Layout.column: 1
                    Layout.columnSpan: 1
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.maximumHeight: parent.height/5
                    Layout.row: 2
                    TestController{
                        id:curTestControl
                        anchors.fill: parent
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                    }
                }
                Rectangle{
                    id:rectangle5
                    //color: "black"
                    color: StringConstants.color_gbTransparent//StringConstants.testPage_backgroundColor//"transparent" "transparent"
                    Layout.column: 1
                    Layout.columnSpan: 1
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.row: 1
                    //Layout.margins: 10
                    //Layout.leftMargin: 10
                    Layout.rightMargin: 10
                    //anchors.top: rectangle4.bottom
                    // anchors.topMargin: -5
                    //  anchors.bottom: parent.bottom
                    //anchors.left: parent
                    TestTabs{
                        id:curTestTabs
                        anchors.fill: parent
                        //Layout.fillHeight: true
                        //Layout.fillWidth: true
                    }
                }
            }

        }
        Rectangle{
            id:rectangle6
            color: "black"
            anchors.top: rectangle5.bottom
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            anchors.right: rectangle2.right//parent.right
            //anchors.fill: parent
            Layout.column: 1
            Layout.columnSpan: 1
            //Layout.fillHeight: true
            //Layout.fillWidth: true
            Layout.row:3
            width: parent.width
            height: 75//100
            TestPagePatientResultIndex
            {
                //Layout.fillHeight: true
                //height: 100
                //: parent.width
                //Layout.fillWidth: true
                anchors.fill: parent
            }
        }

        //           }
        //}
    }

}







/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
##^##*/





/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
