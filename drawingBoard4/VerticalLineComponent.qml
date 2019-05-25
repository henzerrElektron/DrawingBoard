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
Item {
    id:verLineItem
    property Component verLineComponent: verticalLineComponent
    //width: parent.width
    Component {
        id: verticalLineComponent;
        Rectangle {
            id: verticalLineRec
            property alias lineColor: verticalLineShapePath.strokeColor
            height: 1
            color: "transparent"//"transparent"
            Shape {
                id: verticalLineShape
                anchors.fill: parent
                ShapePath {
                    id:verticalLineShapePath
                    strokeWidth: 1
                    strokeColor: "black"
                    strokeStyle: ShapePath.DashLine
                    dashPattern: [ 1, 4 ]
                    startX: 0;startY:0
                    PathLine{x:width; y: 0}
                }
                onXChanged: console.log("The highlight shape x is"+horizontalLineShape.x)
            }
            states: [

                State {
                    name: "mousePressed"
                    PropertyChanges {
                        target: verticalLineRec;
                        visible:true
                    }
                },
                State {
                    name: "mouseReleased"
                    PropertyChanges {
                        target: verticalLineRec;
                        visible:false
                    }
                },

                State {
                    name: "centralminimum"
                    PropertyChanges { target: verticalLineShapePath; strokeColor: "blue" }
                },
                State {
                    name: "peripheralminimum"
                    PropertyChanges { target: verticalLineShapePath; strokeColor: "orange" }
                },
                State {
                    name: "default"
                    PropertyChanges {
                        target: verticalLineShapePath;
                        strokeColor:"black"

                    }
                }
            ]
        }

    }
}
