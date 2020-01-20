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
import "./../../common/"
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
    id:footerItem1
    //objectName: StringConstants.objectName_reportXYRowColFooter
    //GridLayout{
    Grid{
        id: footerGrid
        height:colRec.height+boxRect1+boxRect2+boxRect3//parent.height/3//column.height/2
        width: parent.width//column.width///30//row.width
        rotation: 0
        Layout.alignment: Qt.AlignHCenter
        rows: 2
        columns: 3
        //anchors.centerIn: parent
        Rectangle {
            //anchors.fill: parent
           // Layout.fillHeight: true
         //   Layout.fillWidth: true
         //   Layout.row: 1
         //   Layout.rowSpan: 1
        //    Layout.column: 1
        //    Layout.columnSpan: 3
            anchors.top: parent.top
        //    Layout.alignment: Qt.AlignTop
        //    Layout.preferredHeight: headerLabel.height
       //     Layout.minimumHeight:headerLabel.height
       //     Layout.maximumHeight:headerLabel.height
            height: headerLabel.height
            width: parent.width
            id:colRec
            //color: "yellow"


            Label{
                //Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                //anchors.centerIn: parent
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: checkBox.verticalCenter
                //anchors.top:  parent.top//checkBox.bottom
                //anchors.topMargin:10// checkBox.height
                //anchors.topMargin:checkBox.height/3
                ///anchors.bottom: parent.bottom
                //anchors.bottomMargin:-300
                // Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                color: "black"
                //width: footerGrid.width/4
                //height: 30
                id: headerLabel
                text: "Test Result Number"

            }

        }
        Rectangle{
            id:boxRect1
            //Layout.fillHeight: true
            //Layout.fillWidth: true
            //Layout.row: 2
            //Layout.rowSpan: 1
           // Layout.column: 1
           // Layout.columnSpan: 1
           // Layout.preferredHeight: estimateBox.height
           // Layout.minimumHeight:estimateBox.height
           // Layout.maximumHeight:estimateBox.height
            //Layout.preferredWidth: estimateBox.width
            //Layout.minimumWidth: graphAdjusted.width
            //Layout.maximumWidth: graphAdjusted.width
            //Layout.alignment: Qt.AlignVCenter
            height: estimateBox.height
            width: parent.width/3//estimateBox.width
            anchors.left: parent.left
            anchors.top: colRec.bottom
            BoxLabel{
                id:estimateBox
                recOrCircleOrTri:3
                anchors.fill:parent
            }

        }
        Rectangle{
            id:boxRect2
            //Layout.fillHeight: true
            //Layout.fillWidth: true
           // Layout.row: 2
           // Layout.rowSpan: 1
           // Layout.column: 2
           // Layout.columnSpan: 1
          //  Layout.preferredHeight: absoluteBox.height
          //  Layout.minimumHeight:absoluteBox.height
           // Layout.maximumHeight:absoluteBox.height
            //Layout.preferredWidth: absoluteBox.width
            //Layout.minimumWidth: graphAdjusted.width
            //Layout.maximumWidth: graphAdjusted.width
           // Layout.alignment: Qt.AlignVCenter
            anchors.left: boxRect1.right
            anchors.top: colRec.bottom
            height: absoluteBox.height
            width: parent.width/3//absoluteBox.width
            BoxLabel{
                id:absoluteBox
                anchors.fill: parent
                recOrCircleOrTri: 2
            }

            //            BoxLabel{
            //                id:absoluteBox
            //                recOrCircleOrTri:2
            //                anchors.fill:parent
            //            }

        }
        Rectangle{
            id:boxRect3
            //Layout.fillHeight: true
            //Layout.fillWidth: true
            //Layout.row: 2
            //Layout.rowSpan: 1
            //Layout.column: 3
            //Layout.columnSpan: 1
            //Layout.preferredHeight: graphAdjusted.height
            //Layout.minimumHeight:graphAdjusted.height
            //Layout.maximumHeight:graphAdjusted.height
            //Layout.preferredWidth: graphAdjusted.width
            //Layout.minimumWidth: graphAdjusted.width
            //Layout.maximumWidth: graphAdjusted.width
            //Layout.alignment: Qt.AlignVCenter
            anchors.left: boxRect2.right
            anchors.top: colRec.bottom
            anchors.right: parent.right
            width: parent.width/3//graphAdjusted.width
            height: graphAdjusted.height
            BoxLabel{
                id:graphAdjusted
                recOrCircleOrTri:1
                anchors.fill:parent
            }

        }
    }
    //Component.onDestruction: { cleanup()    }
    //function init() { console.log("INIT "+Component.objectName)    }
    //function cleanup() {  console.log("CLEANUP "+Component.objectName) }

}
