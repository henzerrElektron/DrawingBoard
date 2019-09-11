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
//import "./../../imports/"
import "./../../models/"
import "./../../delegates/"
import "./../test/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
Rectangle {
    id: rec
   // width: label.width+comboBox.width
    height:label.height+comboBox.height
    property alias labelText: label.text
    property alias comboModel: comboBox.model
    property alias commboTextRole: comboBox.textRole
    property alias comboInputHints: comboBox.inputMethodHints
    property alias comboValidator: comboBox.validator
    property alias comboIndex: comboBox.currentIndex
    property alias comboDispay: comboBox.displayText
    signal selectedText(string curText,string role)
    onSelectedText: {
        console.log("The selected Text is"+curText+role)
    }
    // property alias comboText: comboBox.currentText
    //anchors.fill: parent
    color: "transparent"//"black"//
    //height: 125
    //width: 200
    //border.color: "grey"
    //border.width: 2
    GridLayout{
        id:gdLayout
        anchors.fill: parent
        rows: 2
        Label {
            id: label
            text: qsTr("Label")
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            Layout.fillWidth: true
            Layout.row: 1
            Layout.rowSpan: 1
            Layout.fillHeight: true
            Layout.minimumHeight: 50
            Layout.maximumHeight: 50
            //Layout.minimumWidth: 200
            //Layout.maximumWidth: 200
            Layout.alignment: Qt.AlignTop
            //            anchors.bottom: comboBox.top
            //            anchors.bottomMargin: 0
            //            anchors.top: parent.top
            //            anchors.topMargin: 0
            //            anchors.right: parent.right
            //            anchors.rightMargin: 0
            //            anchors.left: parent.left
            //            anchors.leftMargin: 0
            font: OtherConstants.fontFamily
            //font.pixelSize: 10
            //font.bold: true
            color: StringConstants.actionBtnBackgroundColor
            height: rec.height/2
        }
        ComboBox {
            id: comboBox
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.row: 2
            Layout.rowSpan: 1
            Layout.minimumHeight: 50
            Layout.maximumHeight: 50
            Layout.alignment: Qt.AlignVCenter
            //Layout.minimumWidth: 200
            //Layout.maximumWidth: 200
            //Layout.minimumHeight: 50
            //Layout.maximumHeight: 50
            //Layout.minimumWidth: 75
           // Layout.maximumWidth: 125
            //anchors.topMargin: 10
            //anchors.top: label.bottom
            //            anchors.top: label.bottom
            //            // anchors.bottom: parent.bottom
            //            anchors.bottomMargin: 10
            //            anchors.right: parent.right
            //            anchors.rightMargin: 10
            //            anchors.left: parent.left
            //            anchors.leftMargin: 10
            //            height: rec.height/2
            editable: true// - label.height - 10
            displayText: textRole
            onActivated: {
                console.log("The value of the index is"+index)
                selectedText(textAt(index),textRole)
            }
            onEditTextChanged: {
                selectedText(editText,textRole)
            }

            //        onAccepted: {
            //                if (!(find(editText) === -1))
            //                {
            //                    selectedText(editText)
            //                }
            //        }

            //        onHighlighted: {
            //            console.log("The value of the index is"+index)
            //            selectedText(textAt(index))
            //        }

        }

    }
    onCommboTextRoleChanged: {console.log("ComboBoxTextRoleChanged")}




}









/*##^## Designer {
    D{i:1;anchors_x:253;anchors_y:111}D{i:2;anchors_x:228}
}
 ##^##*/
