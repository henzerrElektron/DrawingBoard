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
import QtQuick.Controls 2.5
import Qt.labs.settings 1.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Shapes 1.11
import "."
import "./../../images/"
import "./../../delegates/"
import "./../../models/"
import "./../test/"
import ApplicationConstants 1.0
Rectangle{
    id:mainRec
    //anchors.fill: parent
    anchors.left: parent.left
    anchors.right: parent.right
    height: 65
    color: "transparent"
    border.color: StringConstants.borderColorBlack
    border.width: 1
    RowLayout {
        id: rowLayout
        anchors.fill: parent

        Rectangle{
            id:subRec1
            Layout.leftMargin:5*mainRec.border.width
            Layout.topMargin: 10
            Layout.bottomMargin: 10
            Layout.fillHeight: true
            Layout.minimumWidth: 225//parent.width/4//operatorButton.width<parent.width/4?operatorButton.width:parent.width/4
            Layout.maximumWidth: 225//parent.width/4
            ToolButton {
                id: operatorButton
                width: 125
                height: 65//parent.height
                background: Rectangle {
                  color: "transparent"
                }
//                contentItem: Text {
//                    text: control.text
//                    font: control.font
//                    horizontalAlignment: Text.AlignLeft
//                    verticalAlignment: Text.AlignVCenter
//                    elide: Text.ElideRight
//                }
                text: StringConstants.lbl_CurrentOperator
                anchors.fill: parent
                anchors.rightMargin: 10
                font { family: OtherConstants.fontFamily; pixelSize: pixelSize; weight: Font.Bold; capitalization: Font.MixedCase }
                display: AbstractButton.TextBesideIcon
                //icon:"qrc:/images/icon_current_operator.png"
                icon.source: "qrc:/images/icon_current_operator.png"
                icon.name: "icon_current_operator"
                icon.color: "transparent"
                icon.width: 50
                icon.height: 50
            }

        }


        Rectangle{
            id:subRec2
            Layout.topMargin: 10
            Layout.bottomMargin: 10
            Layout.rightMargin: 5*mainRec.border.width
            Layout.fillHeight: true
            Layout.minimumWidth: 325//parent.width/3//backupButton.width<parent.width/3?backupButton.width:parent.width/3//toolButton2.width
            Layout.maximumWidth: 325//parent.width/3//backupButton.width<parent.width/3?backupButton.width:parent.width/3//toolButton2.width
            Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
            ToolButton {
                id: backupButton
                width: 125
                height: 65//parent.height
                background: Rectangle {
                    color: "transparent"
                }
//                contentItem: Text {
//                    text: control.text
//                    font: control.font
//                    horizontalAlignment: Text.AlignRight
//                    verticalAlignment: Text.AlignVCenter
//                    elide: Text.ElideRight
//                }
                text:StringConstants.lbl_lastBackedUpon+" "+ DateAndLocaleConstants.dateString
                anchors.fill: parent
                anchors.leftMargin: 10
                 font { family: OtherConstants.fontFamily; pixelSize: pixelSize; weight: Font.Bold; capitalization: Font.MixedCase }
                display: AbstractButton.TextBesideIcon
                //icon:"qrc:/images/icon_backup.png"
                icon.source: "qrc:/images/icon_backup.png"
                icon.name: "icon_backup"
                icon.color: "transparent"
                icon.width: 50
                icon.height: 50
            }
        }
    }

}

















/*##^## Designer {
    D{i:3;anchors_height:60;anchors_width:175}D{i:6;anchors_height:60;anchors_width:175}
D{i:1;anchors_height:100;anchors_width:100;anchors_x:192;anchors_y:206}
}
 ##^##*/
