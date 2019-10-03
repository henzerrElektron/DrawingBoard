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
import QtQuick.Extras 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls 2.5
import "."
import "./../../images/"
import "./../../delegates/"
import "./../../models/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0

ComboBox {
    id: topTextArea
    //anchors.fill: parent
    anchors.left: parent.left
    anchors.right: parent.right
    property alias comboBoxModel: topTextArea.model
    property alias comboBoxText: topTextArea.displayText
    property alias comboBoxCurText: topTextArea.currentText
    property alias comboBoxIndex: topTextArea.currentIndex
    property real comboBoxPreviousIndex: 0//topTextArea.currentIndex
    //property alias comboBoxDelegateText: valueText.text
    property alias comboBoxTextRole: topTextArea.textRole
    property alias comboBoxInputHints: topTextArea.inputMethodHints
    property alias comboBoxValidator: topTextArea.validator
    property bool roleOrModel: true
    function setComboPrevIndex(index){
        comboBoxPreviousIndex = index
    }
    editable: true
    onComboBoxModelChanged: {
        console.log("The model is"+topTextArea.model)
    }
    signal tumblerIndexRecord(int index)
    onTumblerIndexRecord: {
        console.log("The current index is"+index)
        currentIndex = index
    }
    signal comboIndexChange(int value)
    onComboIndexChange: {
        firstTumblerRec.allTumblerIndex = value
    }

    signal comboCurTextChange(string value)
    onComboCurTextChange: {

    }
    signal comboDisplayTextChange(string value)
    onComboDisplayTextChange: {

    }
    signal selectedText(string curText,string role)
    onSelectedText: {
        console.log("The selected Text is"+curText+role)
    }
    function getDisplayText(flag)
    {
        return flag?modelData:topTextArea.textRole==="Surname"?model.Surname:topTextArea.textRole==="FirstName"?model.FirstName:model.MedicalReference
    }

    displayText:roleOrModel?modelData:getDisplayText(roleOrModel)//roleOrModel?modelData:topTextArea.textRole==="Surname"?model.Surname:topTextArea.textRole==="FirstName"?model.FirstName:model.MedicalReference
    delegate: ItemDelegate{
        id:textValueData
        width: topTextArea.width

        contentItem:
            Text {
            id:valueText
            text: roleOrModel?modelData:topTextArea.textRole==="Surname"?model.Surname:topTextArea.textRole==="FirstName"?model.FirstName:model.MedicalReference
            color: "White"//
            font: topTextArea.font
            elide: Text.ElideRight
            verticalAlignment: Text.AlignVCenter
        }

        //        background: Rectangle {
        //            anchors.fill: parent
        //            color:StringConstants.actionBtnBackgroundColor
        //            border.color: StringConstants.actionBtnBackgroundColor
        //            radius: 2
        //        }


        highlighted: topTextArea.highlightedIndex === index
    }


    contentItem: TextInput {
        //leftPadding: 0
        //rightPadding: topTextArea.indicator.width + topTextArea.spacing
        selectByMouse: true
        text: topTextArea.displayText
        //onTextChanged: topTextArea.currentText = text//base.currentText = text
        font: topTextArea.font
        color: StringConstants.actionBtnBackgroundColor//"blue"//topTextArea.pressed ? Qt.darker(base.textColor) : base.textColor
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
    }



    background: Rectangle {
        //implicitWidth:150// 120
        implicitHeight: 40
        //anchors.fill: parent
        //color: "transparent"
        border.color: control.pressed ? "#17a81a" : "#21be2b"
        border.width: control.visualFocus ? 2 : 1
        radius: 2
    }
    //
    popup: Popup {
        y: topTextArea.height - 1
        width: topTextArea.width
        implicitHeight: contentItem.implicitHeight
        padding: 1
        onVisibleChanged: {
            console.log("The model values are"+topTextArea.delegateModel+ "The model is"+topTextArea.model)
        }
        contentItem: ListView {
            clip: true
            implicitHeight: contentHeight
            model: topTextArea.popup.visible ? topTextArea.delegateModel:null
            onModelChanged: {
                console.log("The model values are"+topTextArea.delegateModel+ "The model is"+topTextArea.model)
            }

            currentIndex: topTextArea.highlightedIndex

            ScrollIndicator.vertical: ScrollIndicator { }
             ScrollBar.vertical: ScrollBar{}
        }

        background: Rectangle {
            anchors.fill: parent
            color:StringConstants.actionBtnBackgroundColor
            border.color: StringConstants.actionBtnBackgroundColor
            radius: 2
        }
    }
    //
    Layout.row: lbl.visible?2:1
    //Layout.minimumWidth: 50
    //anchors.right: topLabel.left
    //anchors.rightMargin: 0
    // anchors.verticalCenter: lbl.verticalCenter
    anchors.top: lbl.visible?lbl.bottom:parent.top
    onCurrentIndexChanged: {
        //comboBoxPreviousIndex  = comboBoxIndex
        console.log("The current index is of CurrentIndexChanged is"+currentIndex+comboBoxPreviousIndex+comboBoxIndex)
        comboIndexChange(currentIndex)
    }
    onCurrentTextChanged: {
        comboCurTextChange(currentText)
    }
    onDisplayTextChanged: {
        comboDisplayTextChange(currentText)
    }
    onActivated: {
        console.log("The value of the index is"+index)
        selectedText(textAt(index),textRole)
    }
    onEditTextChanged: {
        selectedText(editText,textRole)
    }

    //model: firstTumblerModel
}
