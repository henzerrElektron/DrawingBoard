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
   \qmltype XYCrossMouseArea
   \brief A Component that displays grid lines for the graph
  This Component draws the vertical lines for the graph
  This Component replaces the QWT library graph by providing a QML specific graph
  This Component is similar to XYRowGridView which draws horlizontal lines
  This draws lines based on x and y coordinates relative to absolute coordinate space
  This is used in TestPlotTabs.qml

   \image tobeprovided.png

   \section1 Sample usage

   To display columns in the grid view
   \qml
            XYColGridView {
                id: gridColView
                testOrReport:crossTestOrReport
                crossColCellWidth:gridColView.width/(IntegerConstants.numGridCol)
                crossColCellHeight: gridColView.height/2
                crossColModel: 1 * IntegerConstants.numGridCol
            }
   \endqml

*/
Rectangle{
    id:backgroundRec
    objectName: StringConstants.objectName_xyColGridView
    anchors.fill: parent
    // z:-1
    color: "transparent"
    property alias crossColCellWidth: gridColView.cellWidth
    property alias crossColCellHeight: gridColView.cellHeight
    property alias crossColModel: gridColView.model
    property bool testOrReport: false//true = test false = report
    GridView {
        id: gridColView
        anchors.fill: parent
        //rotation: 180
        //rows: 1
        //columns: numGridCol

        cellWidth: gridColView.width/(IntegerConstants.numGridCol); cellHeight: gridColView.height/2
        footer: testOrReport?footerItem1:footerItem2


        XYColFooter {
            id: footerItem1
        }
        XYReportColFooter{
            id:footerItem2
        }


        XYColDelegate {
            id: colDelegate
            //colWidth:gridColView.width/IntegerConstants/numGridCol
            //colHeight: gridColView.height/2
        }
        model: 1*IntegerConstants.numGridCol
        delegate: colDelegate
    }
    Component.onDestruction: { cleanup()    }
    function init() { console.log("INIT "+Component.objectName)    }
    function cleanup() {  console.log("CLEANUP "+Component.objectName) }
}



/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
