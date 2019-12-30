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
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
/*!
   \qmltype PatientLabel
   \brief Contains Component to draw horizontal lines based on states

  This Component uses shapes and draws line for standared and detailed modes

   \image tobeprovided.png

   \section1 Sample usage

   To draw Component to indicate test results
   \qml
            HorizontalLineComponent { id: lineItem }
   \endqml

*/

Item {
    id:horVerLineItem
    objectName: StringConstants.objectName_horizontalLineComponent
    property Component horVerLine: lineComponent
    //height: parent.height
    Component {
        id: lineComponent;
        Rectangle
        {
            id: lineRec
            width: 1
            height: 1
            property alias lineColor: lineShapePath.strokeColor
            property int hor: 0
            property int ver: 0
            property real lastX: 0
            property real lastY: 0
            property real lastWidth: 0
            property real lastHeight: 0
//            property real lastXW: lastX/lastWidth
//            property real lastYH: lastY/lastHeight
//            onLastXChanged: {
//                lastXW = lastX/lastWidth
//            }
//            onLastYChanged: {
//                lastYH =  lastY/lastHeight
//            }
//            onLastWidthChanged: {
//                lastXW = lastX/lastWidth
//            }
//            onLastHeightChanged: {
//                lastYH= lastY/lastHeight
//            }

            //            onHorOrVerChanged: {
            //                if(horOrVer == true)
            //                {
            //                    lineShapePath.pathElements.push(verPath)
            //                }
            //                else
            //                {
            //                    lineShapePath.pathElements.push(horPath)
            //                }
            //            }

            color: "transparent"//"transparent"
            Shape {
                id: lineShape
                anchors.fill: parent
                ShapePath {
                    id: lineShapePath
                    strokeWidth: 1
                    strokeColor: "black"
                    strokeStyle: ShapePath.DashLine
                    dashPattern: [ 1, 4 ]
                    //pathElements: (lineRec.horOrVer == true ? verPath :horPath)
                    startX: 0;startY:(0)
                    //                    onPathElementsChanged: {
                    //                        if(horOrVer == true)
                    //                        {
                    //                            lineShapePath.pathElements.push(verPath)
                    //                        }
                    //                        else
                    //                        {
                    //                            lineShapePath.pathElements.push(horPath)
                    //                        }
                    //                    }
                    PathLine{x:width*hor; y: height*ver}
                }

                onXChanged: console.log("The highlight shape x is"+lineShape.x)
            }
            //            Path{
            //                id: verPath
            //                startX: 0; startY: 0
            //                PathLine{x:width;y:0}
            //            }
            //            Path{
            //                id: horPath
            //                startX: 0; startY: 0
            //                PathLine{x:0;y:height}
            //            }
            states: [
                State {
                    name: "centralminimum"
                    PropertyChanges { target: lineShapePath; strokeColor: "blue" }
                },
                State {
                    name: "peripheralminimum"
                    PropertyChanges { target: lineShapePath; strokeColor: "orange" }
                },
                State {
                    name: "default"
                    PropertyChanges {
                        target: lineShapePath;
                        strokeColor:"black"

                    }
                }
            ]

        }
    }
    onWidthChanged: {console.log("The current width has change")}
    onHeightChanged: {console.log("The current Height has changed")}
    Component.onDestruction: { cleanup()    }
    function init() { console.log("INIT "+Component.objectName)    }
    function cleanup() {  console.log("CLEANUP "+Component.objectName) }
}
