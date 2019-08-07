import QtQuick 2.0
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
//Item {
//    id: element
    //width: 500
    //height: 100
    GridLayout {
        id: gridLayout
        anchors.fill: parent
        property alias stringText: label.text
        Rectangle {
            id: rectangle
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#f3ecec"
                }

                GradientStop {
                    position: 0.5
                    color: "#222121"
                }
            }
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0

            Label {
                id: label
                color: "#ffffff"
                text: qsTr("Label")
                font.pointSize: IntegerConstants.m_intLblFontSize
                font.family: OtherConstants.fontFamily
                renderType: Text.QtRendering
                fontSizeMode: Text.HorizontalFit
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                anchors.fill: parent
            }
        }
    }
//}













/*##^## Designer {
    D{i:1;anchors_height:100;anchors_width:100;anchors_x:54;anchors_y:83}D{i:6;anchors_x:124;anchors_y:202}
D{i:2;anchors_height:200;anchors_width:200;anchors_x:252;anchors_y:51}
}
 ##^##*/
