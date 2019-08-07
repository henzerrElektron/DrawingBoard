import QtQuick 2.0
import QtQuick.Controls.Material 2.0
import QtQuick.Controls.Universal 2.0
import QtQuick.Dialogs.qml 1.0
import QtQuick.Extras 1.4
import QtQuick.Templates 2.5
import QtQuick.Window 2.10
import Qt.labs.settings 1.0
import QtGraphicalEffects 1.0
import QtQuick.Controls 2.3
import QtQuick.Controls.Styles.Desktop 1.0
import QtQuick.Layouts 1.3
import QtQuick.Shapes 1.12
import ApplicationIntegerConstants 1.0
import ApplicationStringConstants 1.0
import ApplicationOtherConstants 1.0
Item {
    id: mpIndicatorItem
    //width: 100
    //height: 600
    property color backgroundColor : "green"
    property int textWidth: 20
    property int textHeight: 20
    ColumnLayout{
        id:mpIndicLayout
        anchors.fill: parent


        Rectangle {
            id: topTextHolderRect
            x: 8
            width: parent.width
            height: 2* textHeight
            color: "#00000000"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 10
            Text {
                id: mpText
                width: textWidth
                height: textHeight
                x: mpIndicRec.width/2 - mpText.width/2
                text: qsTr("MP")
                anchors.bottom: parent.top
                anchors.bottomMargin: -20
                font.pixelSize: 10
            }
            Text {
                id: estText
                width: textWidth
                height: textHeight
                x: mpIndicRec.width/2 - estText.width/2
                text: qsTr("Est")
                anchors.bottom: mpText.bottom
                anchors.bottomMargin: -10
                font.pixelSize: 10
            }
            Text {
                id: maxText
                width: textWidth
                height: textHeight
                x: mpIndicRec.width/2 - maxText.width/2
                text: qsTr("Max (0)")
                anchors.bottom: estText.bottom
                anchors.bottomMargin: -10
                font.pixelSize: 10
            }
        }
        Rectangle {
            id: mpIndicRec
            Shape {
                id: mpIndicShape
                width: mpIndicRec.width
                height: mpIndicRec.height
                property int triangleYOrigin: 0
                anchors.centerIn: parent
                ShapePath {
                    strokeWidth: 4
                    strokeColor: "black"

                    fillGradient: LinearGradient {
                        x1: mpIndicRec.x + 20; y1: mpIndicRec.y
                        x2: mpIndicRec.width/2 ; y2: mpIndicRec.height - 2* minText.height
                        GradientStop { position: 0; color: "black" }
                        GradientStop { position: 0.2; color: "black"}
                        GradientStop { position: 0.4; color: "green"}
                        GradientStop { position: 0.6; color: "green"}
                        GradientStop { position: 1; color: "green"}
                    }
                    //strokeStyle: ShapePath.DashLine
                    //dashPattern: [ 1, 4 ]
                    startX: mpIndicRec.x + 20 ;startY: mpIndicRec.y
                    PathLine{x: mpIndicRec.width- 20 ;y: mpIndicRec.y}
                    PathLine{x: mpIndicRec.width/2 ;y: mpIndicRec.height - 2* minText.height}
                    PathLine{x: mpIndicRec.x + 20 ;y: mpIndicRec.y }
                }

                Text {
                    id: minText
                    width: textWidth
                    height: textHeight
                    x: mpIndicRec.width/2 - minText.width/2
                    y: mpIndicRec.height - 2*minText.height
                    text: qsTr("Min (0)")
                    font.pixelSize: 10
                }

            }


            color: "#00000000"
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.right: parent.right
            anchors.left: parent.left
            anchors.top: topTextHolderRect.bottom
            anchors.topMargin: -25
        }

        Rectangle {
            id: mpIndicTextRec
            x: mpIndicRec.x +mpIndicRec.width/10
            y: 178
            width: mpIndicRec.width - mpIndicRec.width/5
            height: resultText.height
            color: "#00000000"
            border.color: "#150b0b"

            Text {
                id: resultText
                width: 20
                height: 20
                text: qsTr("0.26")
                anchors.horizontalCenter: parent.horizontalCenter
                font.pixelSize: 12
            }
        }
    }
}















