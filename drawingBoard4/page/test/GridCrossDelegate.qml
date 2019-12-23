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
Component {
    id: gridCrossDelegate
    Rectangle {
        //color: "lightGray"
        width: parent.width/IntegerConstants.numGridCol; height: parent.height/IntegerConstants.numGridRow
        Shape {
            
            anchors.fill: parent
            ShapePath {
                strokeWidth: 1
                strokeColor: "#D3D3D3"
                fillColor: "transparent" // ignored with the gradient set
                strokeStyle: ShapePath.DashLine
                dashPattern: [ 1, 4 ]
                startX: 0; startY: 0
                PathLine { x: 0; y: height }
                PathLine { x: width; y: height }
                PathLine { x: width; y: 0 }
                PathLine { x: 0; y: 0 }
            }
        }
    }
    Component.onDestruction: { cleanup()    }
    function init() { console.log("INIT "+Component.objectName)    }
    function cleanup() {  console.log("CLEANUP "+Component.objectName) }
}
