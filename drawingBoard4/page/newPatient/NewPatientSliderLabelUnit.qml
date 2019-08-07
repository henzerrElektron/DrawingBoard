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
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0




Rectangle{
    id:mainRec
    height: topSlider.height//dataTumbler.height
    anchors.fill: parent
    property alias topSliderValue: topSlider.value
    property alias topLabelText: topLabel.text
    //property alias topTextAreaText: topTextArea.text
    property alias topSliderMinValue: topSlider.from
    property alias topSliderMaxValue: topSlider.to
    property alias topTextAreaModel: topTextArea.model
    //height: 100
    //width: topSlider.width+ topLabel.width+topTextArea.width+10+20
    //height: topSlider.height+topLabel.height+topTextArea.height
    color: "transparent"//"black"//
    signal firstTumblerValue(int value)
    signal secondTumblerValue(int value)
    signal thirdTumblerValue(int value)
    signal sliderValueChange(int value)
    signal comboIndexChange(int value)
    signal comboCurTextChange(int value)

    onComboIndexChange: {
        topSlider.value = value//topTextAreaModel.get(value)
    }

    onComboCurTextChange: {
        topSlider.value = value
    }

    onFirstTumblerValue: {
        topSlider.value = value
        // topLabel.text = value.toString()
        topTextArea.currentIndex =value //value.toString()
    }
    onSecondTumblerValue: {
        topSlider.value = value
        // topLabel.text = value.toString()
        topTextArea.currentIndex = value
    }
    onThirdTumblerValue: {
        topSlider.value = value
        //  topLabel.text = value.toString()
        topTextArea.currentIndex = value
    }
    Row{
        id:mainCol
        anchors.fill: parent
        Slider {
            id: topSlider
            anchors.top: parent.top
            //anchors.verticalCenter: parent.verticalCenter
            anchors.left:  parent.left
            anchors.rightMargin: 0
            anchors.right:  topTextArea.left
            anchors.leftMargin: 0
            width: 20
            //anchors.bottom: parent.bottom
            value: 0.5
            onValueChanged: {
                //if(pressed)
                //{
                sliderValueChange(value)
                //}
            }
        }
        Label {
            id: topLabel
            text: qsTr("Label")
            anchors.verticalCenter: topSlider.verticalCenter
            anchors.right: parent.right
            anchors.rightMargin: 10
            //anchors.bottom: parent.bottom
        }
        ComboBox {
            id: topTextArea
            //text: topSlider.value//qsTr("Text Area")
            //currentText:model.modelData
            anchors.right: topLabel.left
            anchors.rightMargin: 0
            // horizontalAlignment: Text.AlignHCenter
            // verticalAlignment: Text.AlignVCenter
            anchors.verticalCenter: topLabel.verticalCenter
            ////anchors.left: slider.right
            //anchors.leftMargin: 0
            anchors.top: label.bottom
            anchors.topMargin: 0
            editable: true
            onCurrentIndexChanged: {
                comboIndexChange(currentIndex)
            }
            onCurrentTextChanged: {
                comboCurTextChange(currentText)
            }

            //anchors.bottom: parent.bottom
            // width: 20//parent.width/10
            // height: 10
        }
    }

}

