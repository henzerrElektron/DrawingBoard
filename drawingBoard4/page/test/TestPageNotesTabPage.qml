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
import "./../../common/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0

Page{
    id:notestTabPage
    title: "Enter notes relevant to this test session"

        Rectangle{
            id:rectangle
            anchors.left: parent.left
            anchors.right: parent.right
            color: "transparent"
            height: 50
            Label{
                id:leftLabel
                text: "Enter notes relevant to this test session"
               anchors.centerIn: parent
            }
        }
        TextEdit {
            id: textEdit
            anchors.top:  rectangle.bottom
            anchors.topMargin: 10
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            text: qsTr("Text Edit")
            font.pixelSize: 12
        }
}
