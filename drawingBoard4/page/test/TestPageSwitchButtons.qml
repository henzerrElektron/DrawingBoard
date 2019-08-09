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
                //Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                down:true
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
                //Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                down:true
                //width: 160
                //height: 50
                //anchors.left: buttonStandard.right
                //anchors.leftMargin: 2
            }
        }



    }
}



/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
