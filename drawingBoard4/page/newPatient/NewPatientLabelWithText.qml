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
//import QtQml.Models 2.12
import "."
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

    id:mainRec
    color: "transparent"
    //anchors.fill: parent
    // color: "black"
    // color: "transparent"
    // border.width: 3
    // border.color: "black"
    // color: StringConstants.testPage_backgroundColor
    property alias labelText: label.text
    property alias tfText: textField.text
    property alias tfReadOnly: textField.readOnly
    property alias tfPlaceHolderText: textField.placeholderText
    property bool textAlignLeftOrCenter: true
    property bool addSpace: false
    property alias lblVisible: label.visible
    property alias lblValueVisible: labelValue.visible
    property alias lblValueText: labelValue.text
    property alias lblHorizontalAlignment: label.horizontalAlignment
    property alias textValidator: textField.validator
    property int index: 0
    property color commonColor: "white"
    onLblValueVisibleChanged: {
        labelRec2.visible = labelValue.visible
    }
    onLblVisibleChanged: {
        labelRec1.visible = lblVisible
    }
    property alias txtVisible: textField.visible
    onTxtVisibleChanged: {
        textFieldRec3.visible = txtVisible
    }
    property alias itemVisible: mainRec.visible
    //height: 50
    //width: 250
    GridLayout{
        id:mainGrid
        anchors.fill: parent
        columns:3
//        Rectangle{
//            id:labelRec1
//            //color: "pink"
//            Layout.column: 1
//            Layout.columnSpan: 1
//            //Layout.fillWidth: true
//            Layout.fillHeight: true
//            Layout.preferredWidth:addSpace?parent.width/2:parent.width/4
//            Layout.minimumWidth: addSpace?parent.width/2:parent.width/4
//            color: "transparent"
//            //color: "red"
//            anchors.left: parent.left
            Label {
                id: label
                visible: true
                text: qsTr("Label")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment:textAlignLeftOrCenter? Text.AlignHCenter:Text.AlignLeft
                //anchors.fill: parent
                Layout.column: 1
                Layout.columnSpan: 1
                //Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.preferredWidth:addSpace?parent.width/2:parent.width/4
                Layout.minimumWidth: addSpace?parent.width/2:parent.width/4
                //color: "transparent"
                //color: "red"
                anchors.left: parent.left
                font.bold: true
                font.pixelSize:25// Constants.testPage_lblFontSize//25
                font.weight: Font.ExtraBold
                renderType: Text.QtRendering
                fontSizeMode: Text.VerticalFit
                //anchors.bottom: parent.bottom
                //anchors.bottomMargin: 0
                //anchors.top: parent.top
                // anchors.topMargin: 0
                // anchors.left: parent.left
                // anchors.leftMargin: 0
                // width: parent.width/4
                //font: StringConstants.fontFamily
                color: commonColor//"white"
                //width: 200//(parent.width - (100))/3
                //height: 100
                //        background: Rectangle{
                //            color: "black"
                //        }
            }
//        }
//        Rectangle{
//            id:labelRec2
//            Layout.column: txtVisible?3:2
//            Layout.columnSpan: 2
//            Layout.fillWidth: true
//            Layout.fillHeight: true
//            Layout.preferredWidth: parent.width/4
//            Layout.minimumWidth: parent.width/4
//            color: "transparent"
//            //color: "green"
//            anchors.left: labelRec1.right
//            anchors.right: parent.right
            Label {
                id: labelValue
                //text: qsTr("Text Field")
                horizontalAlignment: Text.AlignLeft
                //anchors.fill: parent
                Layout.column: txtVisible?3:2
                Layout.columnSpan: 2
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.preferredWidth: parent.width/4
                Layout.minimumWidth: parent.width/4
                //color: "transparent"
                //color: "green"
                anchors.left: label.right
                anchors.right: parent.right
                color: commonColor//"white"
                font.bold: true
                font.pixelSize:25// Constants.testPage_lblFontSize//25
                font.weight: Font.ExtraBold
                renderType: Text.QtRendering
                fontSizeMode: Text.VerticalFit
                //anchors.left: label.right
                //anchors.leftMargin: 100//parent.width/10
                //anchors.bottom: parent.bottom
                //anchors.bottomMargin: 0
                //anchors.top: parent.top
                //anchors.topMargin: 0
                //anchors.right: parent.right
                //anchors.rightMargin: 0
                //readOnly: false
                //canPaste: true
                //canUndo: true
                //canRedo: true
                //width: parent.width - label.width
                text: qsTr("")
                verticalAlignment: Text.AlignVCenter
                //font: StringConstants.fontFamily
                //placeholderText: "please enter some data"
                //width: 300//(parent.width - label.width)//(parent.width/10))/2
                //height: 100
                //        background: Rectangle{
                //            color: "green"
                //        }
            }
//        }
//       Rectangle{
//            id:textFieldRec3
//            Layout.fillHeight: true
//            Layout.fillWidth: true
//            Layout.column:2//txtVisible?2:3
//            Layout.columnSpan: 2
//            Layout.preferredWidth: parent.width/4
//            Layout.minimumWidth: parent.width/4
//            color: "transparent"
//            //color: "blue"
//            anchors.right: parent.right
//            anchors.left: labelRec1.right
            //TextArea {
            TextField{
                id: textField
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.column:2//txtVisible?2:3
                Layout.columnSpan: 2
                Layout.preferredWidth: parent.width/4
                Layout.minimumWidth: parent.width/4
                //color: "transparent"
                //color: "blue"
                anchors.right: parent.right
                anchors.left: label.right//labelRec1.right
                //text: qsTr("Text Field")
                horizontalAlignment: Text.AlignHCenter
                placeholderText: "I am testing"
                readOnly: false
                width: parent.width - label.width
                text: ""
                verticalAlignment: Text.AlignVCenter
                //font: StringConstants.fontFamily
                font.bold: true
                font.pixelSize:25// Constants.testPage_lblFontSize//25
                font.weight: Font.ExtraBold
                renderType: Text.QtRendering
                color: commonColor//"white"
            }
       // }
    }






}









/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2;anchors_x:145;anchors_y:51}D{i:1;anchors_x:64;anchors_y:64}
D{i:3;anchors_x:145;anchors_y:51}
}
 ##^##*/
