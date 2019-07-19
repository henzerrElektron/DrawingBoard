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
import "./../test/"
import ApplicationContstants 1.0
Item {

    id:mainRec
   // color: "transparent"
   // border.width: 3
   // border.color: "black"
    property alias labelText: label.text
    property alias tfText: textField.text
    property alias tfReadOnly: textField.readOnly
    property alias tfPlaceHolderText: textField.placeholderText
    //height: 50
    //width: 250
    Label {
        id: label
        text: qsTr("Label")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        width: parent.width/4
        font: Constants.fontFamily
        //width: 200//(parent.width - (100))/3
        //height: 100
//        background: Rectangle{
//            color: "black"
//        }
    }

    TextArea {
        id: textField
        //text: qsTr("Text Field")
        horizontalAlignment: Text.AlignHCenter
        anchors.left: label.right
        anchors.leftMargin: 100//parent.width/10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        readOnly: false
        //canPaste: true
        //canUndo: true
        //canRedo: true
        width: parent.width - label.width
        text: ""
        verticalAlignment: Text.AlignVCenter
        font: Constants.fontFamily
        //placeholderText: "please enter some data"
        //width: 300//(parent.width - label.width)//(parent.width/10))/2
        //height: 100
//        background: Rectangle{
//            color: "green"
//        }
    }

}









/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2;anchors_x:145;anchors_y:51}D{i:1;anchors_x:64;anchors_y:64}
D{i:3;anchors_x:145;anchors_y:51}
}
 ##^##*/
