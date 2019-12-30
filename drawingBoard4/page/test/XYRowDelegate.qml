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
   \qmltype XYRowDelegate
   \brief A Component that draws row based lines in  XYRowGridView

  This Component is similar to XYReportRowDelegate
  This Component is used in Test mode and XYReportRowDelegate is used in Report mode
  This Component is only choosen when the flag of testOrReport is true

   \image tobeprovided.png

   \section1 Sample usage

   To display a horizontal lines in a grid view of XYRowGridView
   \qml
        GridView {
            id: gridRowView
            objectName: StringConstants.objectName_xyRowGridView
            delegate:rowDelegate
                XYRowDelegate {
                                id: rowDelegate
                              }
                }
   \endqml

*/
Component {
    id:rowDelegate
    //objectName: StringConstants.objectName_xyRowDelegate
    Rectangle {
        id:rowRec
        //color: "blue"
        width: gridRowView.cellWidth; height: gridRowView.cellHeight
        //cellWidth: gridRowView.width/2; cellHeight: gridRowView.height/IntegerConstants.numGridRow
        //width:parent.width/2 //parent.cellWidth;
        //height:parent.height/IntegerConstants.numGridRow //parent.cellHeight;
        Shape {
            id:rowShape
            height: rowRec.height/count//IntegerConstants.numGridRow
            property int repeaterIndex: index
            onRepeaterIndexChanged: {
            }
            ShapePath {
                id:shapeId
                strokeWidth: 4
                strokeColor: "black"
                fillColor: "transparent" // ignored with the gradient set
                //strokeStyle: ShapePath.DashLine
                // dashPattern: [ 1, 4 ]
                startX: 0; startY: 0
                PathLine { x: (width - name.width); y: 0 }
                PathLine { x: 0; y: 0 }
                PathLine { x: 0; y: height }
                PathLine { x: (width - name.width); y: height }
                PathLine { x: 0; y: height }
                PathLine { x: 0; y: height/2 }
                //PathLine { x: (width- name.width)/2; y: height/2 }
                //PathLine { x: 0; y: height/2 }
                PathLine { x: 0; y: height/5*(1) }
                PathLine { x: (width- name.width)/2; y: height/5*(1) }
                PathLine { x: 0; y: height/5*(1) }
                PathLine { x: 0; y: height/5*(2) }
                PathLine { x: (width- name.width)/2; y: height/5*(2) }
                PathLine { x: 0; y: height/5*(2) }
                PathLine { x: 0; y: height/5*(3) }
                PathLine { x: (width- name.width)/2; y: height/5*(3) }
                PathLine { x: 0; y: height/5*(3) }
                PathLine { x: 0; y: height/5*(4) }
                PathLine { x: (width- name.width)/2; y: height/5*(4) }
                PathLine { x: 0; y: height/5*(4) }
                PathLine { x: 0; y: height/5*(5) }
                PathLine { x: (width- name.width)/2; y: height/5*(5) }
                PathLine { x: 0; y: height/5*(5) }
                PathLine { x: 0; y: height/5 }
            }
            Text {
                id: name
                //                                anchors.left: parent.left
                //                                anchors.leftMargin:20//rowShape.width/2//20
                //                                anchors.top: parent.top
                //                                anchors.topMargin:-3
                //width:20
                height:10
                x: (rowRec.width)//rowRec.width - 40//5*width
                y: rowShape.y - height/4
                text: index * 10
                rotation: 180
            }
            Text {
                id: name2
                //width:20
                height:10
                //                            anchors.left: parent.left
                //                            anchors.leftMargin:20//rowShape.width/2//20
                x: (rowRec.width)//rowRec.width - 40//5*width
                y: rowRec.height - 10
                text:{
                    if(index == count-1)//(IntegerConstants.numGridRow-1))
                    {
                        (index+1) * 10
                    }
                }
                rotation: 180
            }
            
            
        }
        
    }
    //Component.onDestruction: { cleanup()    }
    ///function init() { console.log("INIT "+Component.objectName)    }
    //function cleanup() {  console.log("CLEANUP "+Component.objectName) }
}
