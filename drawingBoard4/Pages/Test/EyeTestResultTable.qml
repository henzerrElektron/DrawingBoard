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
//import QtQuick.Controls 1.0
import QtQuick.Controls.Styles 1.2
//import QtQuick.Controls.Styles 1.4
import QtQuick.Shapes 1.11
import "."
import "./images/"
import "models"
import "Pages"
import "delegates"
//import appContstants 1.0
import "./models"
import "./delegates"
import "./Pages"
import TestResultModels 0.1
TableView {
    id: tableView4
    //anchors.fill: parent
    columnSpacing: 1
    rowSpacing: 1
    clip: true
    property var columnWidths: [175, 50, 80, 150]
    property var rowHeights: [40, 25, 25, 25,25]
    columnWidthProvider: function (column) { return columnWidths[column] }
    rowHeightProvider: function (row){return rowHeights[row]}
    //TestResultModels {}
    delegate: Rectangle {
        implicitWidth: 150
        implicitHeight: 50
        border.color: "black"
        border.width: 2
        //color: (heading==true)?"red":"green"
        color: ( heading === true || arRole === true ) ? ( heading === true ? "red":"green" ) : ( arRole === true ? "blue":"transparent" );
        onColorChanged: console.log("Color changed")
        TableView.onPooled: console.log(TestResults + " pooled")
        TableView.onReused: console.log(TestResults + " resused")
        
        Text {
            text: TestResults
            font.pointSize: 12
            anchors.centerIn: parent
        }
    }
}
