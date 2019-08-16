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
    border.width: 5
    border.color: "black"
    height: 225
    property alias labelText: label.text
    property alias dataTumblerFirstModel: dataTumbler.firstTumblerModel
    property alias dataTumblerSecModel: dataTumbler.secTumblerModel
    property alias dataTumblerThirdModel: dataTumbler.thirdTumblerModel
    property alias dataTumblerfirstVisibility: dataTumbler.firstTumblerVisibility
    property alias dataTumblersecVisibility: dataTumbler.secTumblerVisibility
    property alias dataTumblerthirdVisibility: dataTumbler.thirdTumblerVisibility
    property alias topSliderValue: topSliderUnit.topSliderValue
    property alias topSliderLabelText: topSliderUnit.topLabelText
    property alias topSliderAreaText:  topSliderUnit.topTextAreaText
    property alias topSliderMinValue: topSliderUnit.topSliderMinValue
    property alias topSliderMaxValue:  topSliderUnit.topSliderMaxValue
    property alias btmSliderValue: btmSliderUnit.topSliderValue
    property alias btmSliderLabelText: btmSliderUnit.topLabelText
    property alias btmSliderAreaText:  btmSliderUnit.topTextAreaText
    property alias btmSliderMinValue: btmSliderUnit.topSliderMinValue
    property alias btmSliderMaxValue:  btmSliderUnit.topSliderMaxValue
    property alias topSliderVisible: topSliderUnit.visible
    property alias btmSliderVisible: subRec1.visible
    property alias eyeColorDialVisibilty: subRec2.visible
    property alias topSliderModel: topSliderUnit.topTextAreaModel
    property alias btmSliderModel: btmSliderUnit.topTextAreaModel
    onEyeColorDialVisibiltyChanged: {
//        dialUnit.visible = subRec2.visible
//        subRec1.anchors.right = parent.right
//        topSliderUnit.anchors.right = parent.right
//        dataTumbler.anchors.right = parent.right

    }

    property alias dataTumblerNoOrColorDelegate: dataTumbler.numberOrColorDelegate
    signal toggleSwitchButton()
    //height: //dataTumbler.height
    anchors.fill: parent
    // GridLayout{
    //     id:mainGrid
    //     anchors.fill: parent
    //      columns: 4
    Label {
        id: label
        text: qsTr("Label")
        // Layout.column: 1
        // Layout.columnSpan: 1
        height: mainRec.height/15
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
    }

    NewPatientDataSwitches{
        id:dataSwitches
        // Layout.column: 2
        // Layout.columnSpan: 1
        width: 150
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.top: label.bottom
        Component.onCompleted:{
            mainRec.toggleSwitchButton.connect(dataSwitches.toggleCommandReceived)
        }
    }

    NewPatientDataTumbler{
        id:dataTumbler
        anchors.topMargin: 20
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        // Layout.column: 3
        // Layout.columnSpan: 1
        anchors.left: dataSwitches.right
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.top: label.bottom
        //anchors.bottom: parent.bottom
        secTumblerVisibility: false
        thirdTumblerVisibility: false
        comboBoxModel: firstTumblerModel
        Component.onCompleted: {
            dataTumbler.firstTumblerValue.connect(dialUnit.firstTumblerValue)

        }
    }


    Rectangle{
        id:subRec
        width: 200
        height: 50
        anchors.leftMargin: 10
        anchors.top: label.bottom
        //anchors.topMargin:10//mainRec.height/4
        //anchors.verticalCenter: parent.verticalCenter
        anchors.left: dataTumbler.right
        anchors.right: parent.right
        anchors.rightMargin: 10
        NewPatientSliderLabelUnit{
            id:topSliderUnit
            Component.onCompleted: {
                dataTumbler.firstTumblerValue.connect(topSliderUnit.firstTumblerValue)
                topSliderUnit.sliderValueChange.connect(dataTumbler.firstSliderValue)
            }
        }
    }
    Rectangle{
        id:subRec1
        width: 200
        height: 50
        anchors.top: subRec.bottom
        anchors.topMargin: 10
        anchors.left: dataTumbler.right
        //anchors.verticalCenter: parent.verticalCenter
        anchors.leftMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        NewPatientSliderLabelUnit{
            id:btmSliderUnit
            Component.onCompleted: {
                dataTumbler.firstTumblerValue.connect(btmSliderUnit.firstTumblerValue)
                btmSliderUnit.sliderValueChange.connect(dataTumbler.secSliderValue)
            }
        }
    }
    Rectangle{
        id:subRec2
        width: 200
        color: "black"
        height: 50
        anchors.top: subRec1.bottom
        anchors.topMargin: 10
        anchors.left: dataTumbler.right
        //anchors.verticalCenter: parent.verticalCenter
        anchors.leftMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 20
        NewPatientDataDial{
            id:dialUnit
            Component.onCompleted: {
                dialUnit.firstDialValue.connect(dataTumbler.firstDialValue)
                dialUnit.firstDialValue.connect(checkValue)
            }
            function checkValue(value)
            {
                console.log("The value received is"+value)
                toggleSwitchButton()
            }
        }


    }
}













































































































































/*##^## Designer {
    D{i:2;anchors_height:470}
}
 ##^##*/
