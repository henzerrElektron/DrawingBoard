import QtQuick 2.0
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import "."
import "./../../images/"
import ApplicationContstants 1.0
Item {
    id: element
    //height: 150
    GridLayout{
        id:rowLayout
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.left: parent.left
        flow: GridLayout.TopToBottom
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        signal clickedButton(int arg);
        //height:50//label_eye.height+label_instrument.height+testItems.height - 100
        //row: 2
        Rectangle{
            id:mainRec
            anchors.fill: parent
            border.color: "black"
            border.width: 3
            Label {
                id: label_eye
                //implicitHeight:  100
                //implicitWidth: 150
                text: qsTr("Test Status")
                font.pointSize: Constants.m_intLblFontSize
                font.family: Constants.fontFamily
                renderType: Text.QtRendering
                fontSizeMode: Text.HorizontalFit
                //lineHeight: 0.7
                height: rowLayout.height/10
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
                //implicitHeight: 150
                //implicitWidth: 150
                text: qsTr("Instrument status")
                font.pointSize: Constants.m_intLblFontSize
                font.family: Constants.fontFamily
                renderType: Text.QtRendering
                fontSizeMode: Text.HorizontalFit
                anchors.top: label_eye.bottom
                height: rowLayout.height/5
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

            TestItems {
                id: testItems
                layoutDirection: Qt.LeftToRight
                orientation: ListView.Horizontal
                anchors.top: label_instrument.bottom
                anchors.topMargin: 10
                anchors.right: parent.right
                anchors.rightMargin: 10
                anchors.left: parent.left
                anchors.leftMargin: 10
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom
                // width: parent.width/3
                // height: parent.height/4
            }
        }
    }
}





















































/*##^## Designer {
    D{i:2;anchors_x:172;anchors_y:40}D{i:4;anchors_x:254;anchors_y:19}D{i:6;anchors_height:100;anchors_width:100;anchors_x:170;anchors_y:91}
D{i:1;anchors_height:200;anchors_width:200;anchors_x:55;anchors_y:98}
}
 ##^##*/
