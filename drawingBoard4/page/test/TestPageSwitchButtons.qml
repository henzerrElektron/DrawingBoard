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
import "./../../delegates/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0

Rectangle {
    id: rectangle4
    //color: "black"
    color: StringConstants.testPage_backgroundColor//color: "transparent"
    //anchors.left: rectangle2.right
    //Layout.alignment: Qt.AlignLeft| Qt.AlignBottom
    Layout.alignment: Qt.AlignVCenter| Qt.AlignHCenter
    //Layout.fillHeight: true
    //Layout.fillWidth: true
    ButtonGroup{
        id:buttonEyeGroup
        exclusive: true
    }
    ButtonGroup{
        id:buttonMode
        exclusive: true
    }

    GridLayout{
        id:subGrid
        anchors.left: parent.left
        anchors.leftMargin: 0
        //anchors.left: parent.horizontalCenter
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.top: parent.top
        anchors.fill: parent
        rows: 2
        columns:2
        Rectangle{
            id:rec1
            Layout.row: 1
            Layout.column: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
            TestPageButton {
                id: buttonRight
                anchors.fill: parent
                bgGroup:buttonEyeGroup
                labelText: StringConstants.buttonName_leftEye
                //ButtonGroup.group: buttonEyeGroup
                //Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                ////////////////////////////////////////////down:true
                onClicked: !down
                //width: 130
                //height: 50
            }
        }
        Rectangle{
            id:rec2
            Layout.row: 1
            Layout.column: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            TestPageButton {
                id: buttonLeft
                anchors.fill: parent
                labelText: StringConstants.buttonName_rightEye
                bgGroup:buttonEyeGroup
                //Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                //width: 130
                //height: 50
                //anchors.left: buttonRight.right
                //anchors.leftMargin: 2
            }
        }
        Rectangle{
            id:rec3
            Layout.row: 2
            Layout.column: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
            TestPageButton {
                id: buttonStandard
                anchors.fill: parent
                labelText: StringConstants.buttonName_standard
                subLabelText: StringConstants.buttonName_central
                bgGroup:buttonMode
                //Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                //width: 160
                //height: 50
            }
        }

        Rectangle{
            id:rec4
            Layout.row: 2
            Layout.column: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            TestPageButton {
                id: buttonDetailed
                anchors.fill: parent
                labelText: StringConstants.buttonName_detailed
                subLabelText: StringConstants.buttonName_centralPeripheral
                bgGroup:buttonMode
                //Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                ////////////////////////////////////////////////////////down:true
                //width: 160
                //height: 50
                //anchors.left: buttonStandard.right
                //anchors.leftMargin: 2
            }
        }



    }
    Component.onDestruction: { cleanup()    }
    function init() { console.log("INIT "+Component.objectName)    }
    function cleanup() {  console.log("CLEANUP "+Component.objectName) }
}



/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
