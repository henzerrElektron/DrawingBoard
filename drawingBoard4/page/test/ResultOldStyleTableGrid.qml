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
import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Controls.Styles 1.2
//import QtQuick.Controls.Styles 1.4
import QtQuick.Shapes 1.11
import "."
//import appContstants 1.0
import TestResultModels 0.1
import ApplicationIntegerConstants 1.0
import ApplicationStringConstants 1.0
import ApplicationOtherConstants 1.0

Grid{
    id:grid2
    columns: 1
    flow: Grid.TopToBottom
    rowSpacing: 0
    columnSpacing: 0
    rows: 3
    spacing: 0
    ResultOldStyleMpValue {
        id: table2
        model: theModel1
    }
    ResultOldStyleParametersTableView {
        id: table3
        model: theModel2
    }
    ResultOldStyleConfidenceTableView {
        id: tv
        model: theModel
    }
}
