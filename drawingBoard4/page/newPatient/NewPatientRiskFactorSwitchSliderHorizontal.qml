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
    //color: "blue"
    //border.width: 1
    //border.color: "black"
    height: mainGrid.height
    //width: mainGrid.width
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
    property alias topSliderVisible: subRec.visible
    property alias btmSliderVisible: subRec1.visible
    property alias dataSwitchesVisible: dataSwitches.visible
    property alias dataTumblerVisibility: subRec0.visible
    property alias labelVisibility: label.visible
    property bool labelCol1or2: true
    onTopSliderVisibleChanged: {
        if(subRec.visible === false)
        {
            topSliderUnit.visible = false
        }
        if(subRec.visible === true)
        {
            topSliderUnit.visible = true
        }
    }

    onBtmSliderVisibleChanged: {
        if(subRec1.visible === false)
        {
            btmSliderUnit.visible = false
        }
        if(subRec1.visible === true)
        {
            btmSliderUnit.visible = true
        }
    }

    property alias eyeColorDialVisibilty: dialRect.visible
    property alias dataTumblerNoOrColorDelegate: dataTumbler.numberOrColorDelegate
    property alias topSliderModel: topSliderUnit.topTextAreaModel
    property alias btmSliderModel: btmSliderUnit.topTextAreaModel

    signal toggleSwitchButton()
    //height: //dataTumbler.height
    anchors.fill: parent
    GridLayout{
        //
        id:mainGrid
        anchors.bottomMargin: 10
        anchors.fill: parent
        //        anchors.bottom: parent.bottom
        //        anchors.bottomMargin: 10
        //        anchors.top: parent.top
        //        anchors.right: parent.right
        //        anchors.left: parent.left
        anchors.topMargin: 10
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        columns:4
        //rows: 2
        Label {
            id: label
            text: qsTr("Label")
            Layout.topMargin: dataTumblerVisibility?(dataSwitchesVisible?50:25):-5
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            //Layout.alignment:dataSwitchesVisible?Qt.AlignTop|Qt.AlignHCenter: Qt.AlignTop|Qt.AlignHCenter
            Layout.column: labelCol1or2?1:2
            Layout.columnSpan: 1
            Layout.row: 1
            Layout.minimumWidth: 50
            Layout.minimumHeight: 20
            //Layout.fillWidth: true
            height: 20//100//mainRec.height/15
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
        Rectangle{
            id:dataSwitchRec
            Layout.column: 2
            Layout.columnSpan: 1
            Layout.row: 1
            Layout.fillHeight: false
            Layout.minimumWidth: 125
            Layout.alignment:  Qt.AlignLeft | Qt.AlignTop//Qt.AlignLeft |
            Layout.topMargin:dataTumblerVisibility?25: -7
            NewPatientDataSwitches{
                id:dataSwitches

                horOrVer: true//dataTumblerVisibility?true:false
                //width: 125

                //Layout.fillWidth: true
                Component.onCompleted:{
                    mainRec.toggleSwitchButton.connect(dataSwitches.toggleCommandReceived)
                }
            }
        }


        Rectangle{
            id:mainsubRec
            //anchors.bottom: parent.bottom
            Layout.column: 3
            Layout.columnSpan: 1
            Layout.row: 1
            //anchors.top: parent.top
            //Layout.fillHeight: true
            Layout.fillWidth: true
            //Layout.top: parent.top
            color: "red"
            Layout.fillHeight: false
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            //Layout.fillHeight: true
            //height: mainsubRow.height
            //height: 200
            ColumnLayout{
                id:mainsubRow
                //anchors.fill: parent
                anchors.right: parent.right
                anchors.left: parent.left
                anchors.top: parent.top
                height: subRec.height+subRec0.height+subRec1.height


                Rectangle{
                    id:subRec
                    //color: "black"
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
                    //color: "green"
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
                            dataTumbler.secTumblerValue.connect(btmSliderUnit.secondTumblerValue)
                            btmSliderUnit.sliderValueChange.connect(dataTumbler.secSliderValue)
                        }
                    }
                }
                Rectangle{
                    id:subRec0
                    //color: "black"
                    //height: dataTumbler.height
                    //height: 150
                    //height: mainsubRec.height/2
                    //anchors.left: parent.left
                    //anchors.right: parent.right
                    Layout.fillWidth: true
                    anchors.top:subRec1.visible? subRec1.bottom:subRec.visible?subRec.bottom:parent.top
                    anchors.topMargin: 10
                    //anchors.bottom: parent.bottom
                    //anchors.bottomMargin: 10
                    //Layout.fillHeight: true
                    //Layout.fillWidth: true
                    NewPatientDataTumblerHorizontal{
                        id:dataTumbler
                        //firstTumblerModel: 100
                        height: dataTumblersecVisibility?75:40
                        width: parent.width
                        //height: parent.height
                        // anchors.fill: parent
                        // secTumblerVisibility: false
                        // thirdTumblerVisibility: false
                        Component.onCompleted: {
                            //model = dataTumblerFirstModel
                            dataTumbler.firstTumblerValue.connect(dialUnit.firstTumblerValue)
                            dataTumbler.secTumblerValue.connect(dialUnit.secondTumblerValue)
                        }
                    }
                }
            }
        }
        Rectangle{
            id:dialRect
            Layout.column: 4
            Layout.columnSpan: 1
            Layout.row: 1
            height: dialUnit.height
            width:  dialUnit.width
            //anchors.top: parent.top
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            //Layout.fillHeight: false
            //color: "red"
            //Layout.fillHeight: true
            //Layout.fillWidth: true
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
                //height: 100
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
    D{i:8;anchors_height:150}D{i:7;anchors_height:150}D{i:9;anchors_height:150}
}
 ##^##*/
