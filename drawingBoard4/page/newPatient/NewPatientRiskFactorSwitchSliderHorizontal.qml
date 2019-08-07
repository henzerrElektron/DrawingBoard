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
    property alias eyeColorDialVisibilty: dialRect.visible
    property alias dataTumblerNoOrColorDelegate: dataTumbler.numberOrColorDelegate
    property alias topSliderModel: topSliderUnit.topTextAreaModel
    property alias btmSliderModel: btmSliderUnit.topTextAreaModel
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



    signal toggleSwitchButton()
    //height: //dataTumbler.height
    anchors.fill: parent
    GridLayout{
        //
        id:mainGrid
        rowSpacing: 2
        anchors.bottomMargin: 0
        //anchors.fill: parent
        //        anchors.bottom: parent.bottom
        //        anchors.bottomMargin: 10
        //        anchors.top: parent.top
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.topMargin: 0
        anchors.rightMargin: 10
        anchors.leftMargin: 10
        columns:4
        //rows: 2
        Label {
            id: label
            text: qsTr("Label")
            Layout.topMargin: dataTumblerVisibility?(dataSwitchesVisible?50:25):10
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
            Layout.fillHeight: true
            Layout.minimumWidth: dataTumblerVisibility?125:250
            Layout.minimumHeight:dataTumblerVisibility?40:35
            Layout.alignment:  Qt.AlignLeft | Qt.AlignTop//Qt.AlignLeft |
            Layout.topMargin:dataTumblerVisibility?25: 5
            NewPatientDataSwitches{
                id:dataSwitches
                anchors.fill: parent
                horOrVer:dataTumblerVisibility?true:false
                //width: 125
                //Layout.fillWidth: true
                Component.onCompleted:{
                    mainRec.toggleSwitchButton.connect(dataSwitches.toggleCommandReceived)
                }
            }
        }


        Rectangle {
            id: mainsubRec
            anchors.left:dataSwitchRec.right
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            //anchors.bottom: parent.bottom
            Layout.column: 3
            Layout.columnSpan: eyeColorDialVisibilty?1:2
            Layout.row: 1
            //anchors.top: parent.top
            //Layout.fillHeight: true
            Layout.fillWidth: true
            GridLayout{
                id:mainsubRow
                rows: 3
                columns: 2
                rowSpacing: 0
                //columnSpacing:  0
                //anchors.fill: parent
                anchors.right: parent.right
                anchors.left: parent.left
                anchors.top: parent.top
                //height: subRec.height+subRec0.height+subRec1.height


                Rectangle{
                    id:subRec
                    //color: "black"
                    //anchors.left: parent.left
                    //anchors.right: parent.right
                    anchors.top: parent.top
                    //anchors.topMargin: 10
                    Layout.row: 1
                    // Layout.rowSpan: 1
                    Layout.column: 1
                    Layout.columnSpan:btmSliderVisible?1:2
                    Layout.fillWidth: true
                    Layout.maximumHeight: 40
                    Layout.minimumHeight: 40
                    //Layout.fillHeight: true
                    height: topSliderUnit.height
                    NewPatientSliderLabelUnit{
                        id:topSliderUnit
                        anchors.fill: parent
                        //width: parent.width
                        //height: 50
                        //anchors.fill: parent
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
                    anchors.top: parent.top
                    // anchors.top: subRec.bottom
                    //anchors.topMargin: 10
                    Layout.minimumHeight: 40
                    Layout.maximumHeight: 40
                    Layout.row: 1
                    // Layout.rowSpan: 1
                    Layout.column: 2
                    //Layout.columnSpan: 1
                    //Layout.fillHeight: true
                    //height: btmSliderUnit.height
                    NewPatientSliderLabelUnit{
                        id:btmSliderUnit
                        anchors.fill: parent
                        //width: parent.width
                        //height: 100
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
                    Layout.row: 2
                    Layout.rowSpan: 1
                    Layout.column: 1
                    Layout.columnSpan: 2
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
                    Layout.minimumHeight: dataTumblersecVisibility?75:50
                    Layout.maximumHeight: dataTumblersecVisibility?75:50
                    //Layout.fillWidth: true
                    NewPatientDataTumblerHorizontal{
                        id:dataTumbler
                        //anchors.bottomMargin: 0
                        //anchors.fill: parent
                        //firstTumblerModel: 100
                        anchors.fill: parent
                        //height: 75//dataTumblersecVisibility?75:50
                        //width: parent.width
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
            ///Layout.fillWidth: true
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
                anchors.topMargin: 10
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
