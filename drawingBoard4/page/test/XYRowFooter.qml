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
   \qmltype XYRowFooter
   \brief A Component that contains label for XYGrid.It acts as a footer for Gridview

  This Component is similar to XYColFooter but differs by not having check boxes
  This either displays label for Left Graph or Right Graph
  This is used alongside in XYPlot

   \image tobeprovided.png

   \section1 Sample usage

   To display a table that contains  vertical headers use the below in a grid
   \qml
        GridView {
            id: gridRowView
            objectName: StringConstants.objectName_xyRowGridView
            footer:footerItem
            XYRowFooter {
                        id: footerItem
                        }
                }
   \endqml

*/
Component{
    id:footerItem
    //objectName: StringConstants.objectName_xyRowFooter
    GridLayout{
        id: footerGrid
        height:parent.height
        width: parent.width/3//30//row.width
        Rectangle {
            //anchors.fill: parent
            Layout.fillHeight: true
            Layout.fillWidth: true
            id:rowRec
            //color: "yellow"
            Label{
                id: headerLabel
                //width: row.width/3
                //                anchors.left: parent.left
                //                anchors.top: parent.top
                //                anchors.bottom: parent.bottom
                //                anchors.right: parent.right
                anchors.centerIn: parent
                color: "black"
                Layout.alignment: Qt.AlignLeft
                text:testOrReport? StringConstants.label_testTempFrequency:StringConstants.label_testMPvalue
                anchors.horizontalCenterOffset: parent.width/4
                horizontalAlignment: Text.AlignHCenter

                rotation: 90
            }

        }
    }
    //Component.onDestruction: { cleanup()    }
    //function init() { console.log("INIT "+Component.objectName)    }
    //function cleanup() {  console.log("CLEANUP "+Component.objectName) }
}
