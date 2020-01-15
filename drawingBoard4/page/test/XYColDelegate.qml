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
/*!
   \qmltype XYColDelegate
   \brief A Component that draws row based lines in  XYColGridView

  This Component is similar to XYRowDelegate
  This Component is used in Test mode and XYRowDelegate is used in Report mode
  This Component is only choosen when the flag of testOrReport is true

   \image tobeprovided.png

   \section1 Sample usage

   To draw marks for various levels
   \qml
        GridView {
            id: gridRowView
            delegate:colDelegate
                XYColDelegate {
                                id: colDelegate
                              }
                }
   \endqml

*/
Component {
    id: colDelegate
    //Repeater {
    //    model: 1*numGridCol
    Rectangle {
        id:colRec
        property alias colWidth: colRec.width
        property alias colHeight: colRec.height
        //color: "blue"
        width: parent.width/count//IntegerConstants.numGridCol;
        height: parent.height/3
        color: "white"
        Shape {
            id:colShape
            //height: rowRec.height/6
            width: colRec.width/count//IntegerConstants.numGridCol///
            property int repeaterIndex: index
            onRepeaterIndexChanged: {
                
            }
            ShapePath {
                strokeWidth: 4
                strokeColor: "black"
                fillColor: "transparent" // ignored with the gradient set
                //strokeStyle: ShapePath.DashLine
                // dashPattern: [ 1, 4 ]
                startX: 0; startY: 0
                PathLine { x: 0; y: (height  - xName.height)/2 }
                PathLine { x: 0; y: 0 }
                PathLine { x: width; y: 0 }
                PathLine { x: width; y: (height  - xName.height)/2 }
                PathLine { x: width; y: 0 }
                PathLine { x: width/2; y: 0 }
                PathLine { x: width/2; y: (height- xName.height)/4 }
                PathLine { x: width/2; y:0  }

            }
            Text {
                id: xName
                //width:20
                height:10
                x: colShape.x //rowRec.width - width
                y: colRec.height/2//rowShape.y
                text: index
                //rotation: 180
            }
            Text {
                id: widthName
                width:20
                height:10
                x: colRec.width -10//rowRec.width - width
                y: colRec.height/2//colRec.height - height//rowRec.height - 10
                text:
                {
                    if(index === count-1)//(IntegerConstants.numGridCol-1))//
                    {
                        index+1
                    }
                }
                //rotation: 180
            }
            
        }
        
    }
   // Component.onDestruction: { cleanup()    }
   // function init() { console.log("INIT "+Component.objectName)    }
   //function cleanup() {  console.log("CLEANUP "+Component.objectName) }
    
}