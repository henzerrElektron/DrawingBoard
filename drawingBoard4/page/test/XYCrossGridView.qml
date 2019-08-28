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
GridView {
    id: gridView
    property alias crossCellWidth: gridView.cellWidth
    property alias crossCellHeight: gridView.cellHeight
    property alias crossCellModel: gridView.model
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
    model:IntegerConstants.numGridRow*IntegerConstants.numGridCol
}
