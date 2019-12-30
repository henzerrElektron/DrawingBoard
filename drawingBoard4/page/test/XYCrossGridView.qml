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
   \brief A Component that displays grid lines for the grah
  This Component can be used for test page
  This Component replaces the QWT library graph by providing a QML specific graph
  This Component works by displaying grid lines and also overlaying a mouse area on top of the grid and \a
  draws lines based on x and y coordinates relative to absolute coordinate space
  This is used in TestPlotTabs.qml

   \image tobeprovided.png

   \section1 Sample usage

   To display cross grid lines
   \qml
        XYCrossGridView {
            id: gridView
            crossCellWidth:gridView.width/IntegerConstants.numGridCol
            crossCellHeight: gridView.height/IntegerConstants.numGridRow
            crossCellModel: IntegerConstants.numGridRow * IntegerConstants.numGridCol
        }
   \endqml

*/
GridView {
    id: gridView
    objectName: StringConstants.objectName_xyCrossGridView
    property alias crossCellWidth: gridView.cellWidth
    property alias crossCellHeight: gridView.cellHeight
    property alias crossCellModel: gridView.model
    property bool testOrReport: false//true = test false = report
    delegate: gridCrossDelegate
    cellWidth: gridView.width/IntegerConstants.numGridCol; cellHeight:gridView.height/IntegerConstants.numGridRow
    //cellWidth: 1
    //cellHeight: 1
    //rows: 6
    // columns: 10
    // Repeater {
    //     model: 6*10
    GridCrossDelegate {
        id: gridCrossDelegate
    }
      Loader { sourceComponent: gridCrossDelegate;width: parent.width/(testOrReport?IntegerConstants.numGridCol:IntegerConstants.numReportGridCol);height: parent.height/(testOrReport?IntegerConstants.numGridRow:IntegerConstants.numReportGridCol) }
    model:IntegerConstants.numGridRow*IntegerConstants.numGridCol
    Component.onDestruction: { cleanup()    }
    function init() { console.log("INIT "+Component.objectName)    }
    function cleanup() {  console.log("CLEANUP "+Component.objectName) }
}
