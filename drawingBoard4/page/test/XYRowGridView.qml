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
   \qmltype XYRowGridView
   \brief A Component that is draws the XY Grid for XY plot and also resused for timeline

  This Component draws Horizontal and vertical XY Grid lines
  This Component uses flags to determine whether it is used for test or report
  This Component allows to specify RowCellWidth and RowCellHeight
  This Component also allows to specify the model
  This Component uses XYRowFooter,XYRowDelegate and XYReportRowDelegate qml types
   \image tobeprovided.png

   \section1 Sample usage

   The sample usage is described below
   \qml
        XYRowGridView {
            id: gridRowView
            flow: GridView.FlowTopToBottom
            rotation: 180
            testOrReport:crossTestOrReport
            crossRowCellWidth:gridRowView.width/2;
            crossRowCellHeight: gridRowView.height/(testOrReport?IntegerConstants.numGridRow:IntegerConstants.numReportGridRow)
            crossRowModel: testOrReport?IntegerConstants.numGridRow*1:IntegerConstants.numReportGridRow*1
        }
   \endqml

*/
GridView {
    id: gridRowView
    objectName: StringConstants.objectName_xyRowGridView
    Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
    property alias crossRowCellWidth: gridRowView.cellWidth
    property alias crossRowCellHeight: gridRowView.cellHeight
    property alias crossRowModel: gridRowView.model
    footer: footerItem
    property bool testOrReport: false//true = test false = report
    property string testOrReportFooter: testOrReport? StringConstants.label_testTempFrequency:StringConstants.label_testMPvalue//
    cellWidth: gridRowView.width/2; cellHeight: gridRowView.height/(testOrReport?IntegerConstants.numGridRow:IntegerConstants.numReportGridRow)

    XYRowFooter {
        id: footerItem
    }
    XYRowDelegate {
        id: rowDelegate

    }
    XYReportRowDelegate{
        id:reportRowDelegate
    }

    model: testOrReport?IntegerConstants.numGridRow*1:IntegerConstants.numReportGridRow*1
    delegate:testOrReport?rowDelegate:reportRowDelegate//rowDelegate
    Component.onDestruction: { cleanup()    }
    function init() { console.log("INIT "+Component.objectName)    }
    function cleanup() {  console.log("CLEANUP "+Component.objectName) }
}
