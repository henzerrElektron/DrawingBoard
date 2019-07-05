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
import "./../../imports/"
import "./../../models/"
import "./../../delegates/"
import ApplicationContstants 1.0


Rectangle {
    id: rectangle4
    //color: "black"
    color: "transparent"
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
        TestPageButton {
            id: buttonRight
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            down:true
            onClicked: !down
            //width: 130
            //height: 50
        }
        TestPageButton {
            id: buttonLeft
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            //width: 130
            //height: 50
            anchors.left: buttonRight.right
            anchors.leftMargin: 2
        }
        TestPageButton {
            id: buttonStandard
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            //width: 160
            //height: 50
        }
        TestPageButton {
            id: buttonDetailed
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            down:true
            //width: 160
            //height: 50
            anchors.left: buttonStandard.right
            anchors.leftMargin: 2
        }
    }
}



/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
