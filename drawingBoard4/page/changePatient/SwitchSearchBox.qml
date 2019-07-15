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
import "./../../common/"
import "./../../images/"
import "./../../imports/"
import "./../../models/"
import "./../../delegates/"
import "./../test/"
import ApplicationContstants 1.0

Rectangle {
    id: rec
    property alias labelText: label.text
    property alias comboModel: comboBox.model
    property alias commboTextRole: comboBox.textRole
    //anchors.fill: parent
    color: "transparent"//"black"//
    height: 125
    width: 200
    //border.color: "grey"
    //border.width: 2
    Label {
        id: label
        text: qsTr("Label")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.bottom: comboBox.top
        anchors.bottomMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        font: Constants.fontFamily
        //font.pixelSize: 10
        //font.bold: true
        color: Constants.actionBtnBackgroundColor
        height: rec.height/2
    }

    ComboBox {
        id: comboBox
        anchors.top: label.bottom
       // anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        height: rec.height/2// - label.height - 10
    }
    onCommboTextRoleChanged: {console.log("ComboBoxTextRoleChanged")}

}







/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1;anchors_x:253;anchors_y:111}D{i:2;anchors_x:228}
}
 ##^##*/
