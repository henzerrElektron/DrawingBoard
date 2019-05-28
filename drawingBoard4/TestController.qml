import QtQuick 2.0
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import "."
import "./images/"
Item {
    Rectangle {
        id: rectangle
        color: "#ffffff"
        anchors.fill: parent
        border.width: 1
        border.color: "black"
        GridLayout{
            id:rowLayout
            anchors.top: parent.top
            anchors.right: parent.right
            anchors.left: parent.left
            flow: GridLayout.TopToBottom
            row: 2
            Label {
                id: label_eye
                text: qsTr("Label")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.top: parent.top
                anchors.topMargin: 0
                color: "#ffffff"
                background: Rectangle{
                    anchors.fill: parent
                    color: "black"
                }
            }

            Label {
                id: label_instrument
                text: qsTr("Label")
                anchors.top: label_eye.bottom
                anchors.topMargin: 0
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                background: Rectangle{
                    anchors.fill: parent
                    border.width: 1
                    border.color: "black"
                }
            }

        }


        GridLayout {
            id: columnLayout
            anchors.top: rowLayout.bottom//label_instrument.bottom
            anchors.topMargin: -2
            anchors.bottomMargin: 0
            anchors.right: parent.right
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.leftMargin: 10
            flow: GridLayout.LeftToRight
            columns: 4
            columnSpacing: 10
            //spacing: 10
            RoundButton {
                id: button_playCentral
                //Layout.alignment: parent.left
                //Layout.preferredHeight: 100
                //Layout.preferredWidth: 100
                //icon.width: button_playCentral.width
                //icon.height: button_playCentral.height
                //text: qsTr("Button")
                icon.source: "icon_new_patient.png"
                display: AbstractButton.IconOnly
                radius: 10

            }
            RoundButton {
                id: button_playPeripheral
                //Layout.alignment: parent.left
                //Layout.preferredHeight: 100
                //Layout.preferredWidth: 100
                //icon.width: button_playPeripheral.width
                //icon.height: button_playPeripheral.height
                //text: qsTr("Button")
                icon.source: "icon_new_patient.png"
                display: AbstractButton.IconOnly
                radius: 10
            }
            RoundButton {
                id: button_pauseAll
                //Layout.alignment: button_Central.right
                //Layout.alignment: parent.left
                //Layout.preferredHeight: 100
                //Layout.preferredWidth: 100
                //icon.width: button_pauseAll.width
                //icon.height: button_pauseAll.height
                //text: qsTr("Button")
                icon.source: "icon_new_patient.png"
                display: AbstractButton.IconOnly
                radius: 10
            }
            RoundButton {
                id: button_stopAll
                //Layout.alignment: button_Central.right
                //Layout.alignment: parent.left
                //Layout.preferredHeight: 100
                //Layout.preferredWidth: 100
                //icon.width: button_stopAll.width
                //icon.height: button_stopAll.height
                //text: qsTr("Button")
                icon.source: "icon_new_patient.png"
                display: AbstractButton.IconOnly
                radius: 10
            }
        }


    }

}





















/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:4;anchors_x:254;anchors_y:19}D{i:6;anchors_height:100;anchors_width:100;anchors_x:170;anchors_y:91}
D{i:2;anchors_x:172;anchors_y:40}D{i:1;anchors_height:200;anchors_width:200;anchors_x:55;anchors_y:98}
}
 ##^##*/
