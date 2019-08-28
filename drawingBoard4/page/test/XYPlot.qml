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
Item {
    id:xyplotter

    property int numGridRow: 6
    property int numGridCol: 10
    property alias mouseAreaWidth: mouseArea.width
    property alias mouseAreaHeight: mouseArea.height

    //property alias mouseAreaX: mouseArea.X
    //property alias mouseAreaY: mouseArea.Y
    RowLayout {
        id: row
        width: parent.width/20
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: column.top
        anchors.bottomMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        XYRowGridView {
            id: gridRowView
            Layout.fillHeight: true
            Layout.fillWidth: true
            flow: GridView.FlowTopToBottom
            rotation: 180
        }

    }
    ColumnLayout {
        id: column
        y: 410
        height: 70
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: row.right
        anchors.leftMargin: 0
        XYColGridView {
            id: gridColView
            Layout.fillHeight: true
            Layout.fillWidth: true
            anchors.bottomMargin: 0
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 0
            focus: true
            crossColCellWidth:gridColView.width/(IntegerConstants.numGridCol)
            crossColCellHeight: gridColView.height/2
            crossColModel: 1 * IntegerConstants.numGridCol
        }
    }

    GridLayout {
        id: grid
        anchors.bottom: column.top
        anchors.bottomMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: row.right
        anchors.leftMargin: 0
        XYCrossGridView {
            id: gridView
            Layout.fillHeight: true
            Layout.fillWidth: true
            anchors.fill: parent
            focus: true
            interactive: false
            crossCellWidth:gridView.width/IntegerConstants.numGridCol
            crossCellHeight: gridView.height/IntegerConstants.numGridRow
            crossCellModel: IntegerConstants.numGridRow * IntegerConstants.numGridCol
        }

        XYCrossMouseArea {
            id: mouseArea
            anchors.fill: parent
            propagateComposedEvents: true
        }
    }


    PlotRecComponent {        id: plotRecComponent    }
    PlotTriComponent {        id: plotTriComponent    }
    HorizontalLineComponent { id: lineItem }
}
