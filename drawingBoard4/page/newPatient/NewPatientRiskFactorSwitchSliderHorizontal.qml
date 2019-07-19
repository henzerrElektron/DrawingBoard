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
import ApplicationContstants 1.0
Rectangle{
    id:mainRec
    border.width: 1
    border.color: "black"
    //height: 225
    property alias labelText: label.text
    property alias dataTumblerFirstModel: dataTumbler.firstTumblerModel
    property alias dataTumblerSecModel: dataTumbler.secTumblerModel
    property alias dataTumblerThirdModel: dataTumbler.thirdTumblerModel
    property alias dataTumblerfirstVisibility: dataTumbler.firstTumblerVisibility
    property alias dataTumblersecVisibility: dataTumbler.secTumblerVisibility
    property alias dataTumblerthirdVisibility: dataTumbler.thirdTumblerVisibility
    property alias topSliderValue: topSliderUnit.topSliderValue
    property alias topSliderLabelText: topSliderUnit.topLabelText
    //property alias topSliderAreaText:  topSliderUnit.topTextAreaText
    property alias topSliderMinValue: topSliderUnit.topSliderMinValue
    property alias topSliderMaxValue:  topSliderUnit.topSliderMaxValue
    property alias btmSliderValue: btmSliderUnit.topSliderValue
    property alias btmSliderLabelText: btmSliderUnit.topLabelText
    //property alias btmSliderAreaText:  btmSliderUnit.topTextAreaText
    property alias btmSliderMinValue: btmSliderUnit.topSliderMinValue
    property alias btmSliderMaxValue:  btmSliderUnit.topSliderMaxValue
    property alias topSliderVisible: topSliderUnit.visible
    property alias btmSliderVisible: btmSliderUnit.visible
    property alias eyeColorDialVisibilty: dialRect.visible
    property alias dataTumblerNoOrColorDelegate: dataTumbler.numberOrColorDelegate
    property alias topSliderModel: topSliderUnit.topTextAreaModel
    property alias btmSliderModel: btmSliderUnit.topTextAreaModel

    signal toggleSwitchButton()
    //height: //dataTumbler.height
    anchors.fill: parent
    GridLayout{
        anchors.fill: parent
        id:mainGrid
        anchors.topMargin: 10
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        anchors.bottomMargin: 10
        columns:3
        rows: 2
        Label {
            id: label
            text: qsTr("Label")
            Layout.column: 1
            Layout.columnSpan: 2
            Layout.row: 1
            Layout.fillWidth: true
            height: 100//mainRec.height/15
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        NewPatientDataSwitches{
            id:dataSwitches
            Layout.column: 1
            Layout.columnSpan: 1
            Layout.row: 2
            Layout.fillHeight: true
            width: 125
            Component.onCompleted:{
                mainRec.toggleSwitchButton.connect(dataSwitches.toggleCommandReceived)
            }
        }
        Rectangle{
            id:mainsubRec
            anchors.bottom: parent.bottom
            Layout.column: 2
            Layout.columnSpan: 1
            Layout.row: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            ColumnLayout{
                id:mainsubRow
                anchors.fill: parent
                Rectangle{
                    id:subRec
                   // color: "black"
                    //anchors.left: parent.left
                    //anchors.right: parent.right
                    anchors.top: parent.top
                    //anchors.topMargin: 10
                    Layout.fillWidth: true
                    height: topSliderUnit.height
                    NewPatientSliderLabelUnit{
                        id:topSliderUnit
                        anchors.fill: parent
                        //anchors.bottom: parent.bottom
                        Component.onCompleted: {
                            dataTumbler.firstTumblerValue.connect(topSliderUnit.firstTumblerValue)
                            topSliderUnit.sliderValueChange.connect(dataTumbler.firstSliderValue)
                        }
                    }
                }
                Rectangle{
                    id:subRec1
                   // color: "green"
                    //anchors.left: parent.left
                    //anchors.right: parent.right
                    Layout.fillWidth: true
                    anchors.top: subRec.bottom
                    anchors.topMargin: 10
                    height: btmSliderUnit.height
                    NewPatientSliderLabelUnit{
                        id:btmSliderUnit
                        //height: 150
                        //height: btmSliderUnit.height
                        Component.onCompleted: {
                            dataTumbler.firstTumblerValue.connect(btmSliderUnit.firstTumblerValue)
                        }
                    }
                }
                Rectangle{
                    id:subRec0
                    color: "black"
                    //height: 150
                    //height: mainsubRec.height/2
                  //  anchors.left: parent.left
                  //  anchors.right: parent.right
                    Layout.fillWidth: true
                    anchors.top: subRec1.bottom
                    anchors.topMargin: 10
                    //anchors.bottom: parent.bottom
                    //anchors.bottomMargin: 10
                    //Layout.fillHeight: true
                    //Layout.fillWidth: true
                    NewPatientDataTumblerHorizontal{
                        id:dataTumbler
                        //firstTumblerModel: 100
                        width: parent.width
                        //height: parent.height
                        // anchors.fill: parent
                        // secTumblerVisibility: false
                        // thirdTumblerVisibility: false
                        Component.onCompleted: {
                            //model = dataTumblerFirstModel
                            dataTumbler.firstTumblerValue.connect(dialUnit.firstTumblerValue)

                        }
                    }
                }
            }
        }
        Rectangle{
            id:dialRect
            Layout.column: 3
            Layout.columnSpan: 1
            Layout.row: 2
            //color: "red"
            Layout.fillHeight: true
            Layout.fillWidth: true
//            onVisibleChanged: {
//                dialRect.width = 0
//                dialRect.height = 0
//                dialUnit.width = 0
//                dialUnit.height = 0
//                dialUnit.visible = false
//                mainsubRec.update()
//                mainGrid.update()
//                mainGrid.visibleChildren.update()
//            }

            NewPatientDataDial{
                id:dialUnit
                anchors.fill: parent
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

}









/*##^## Designer {
    D{i:7;anchors_height:150}D{i:8;anchors_height:150}
}
 ##^##*/
