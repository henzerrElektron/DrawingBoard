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
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
TableView {
    id: medTableView//supplementTableView
    onWidthChanged: {
        console.log("The width is"+width)
        //forceLayout()
    }
    onHeightChanged: {
        console.log("The height is"+height)
        //forceLayout()
    }

    columnSpacing: 1
    rowSpacing: 1
    clip: true

    rowHeightProvider: function (row){
        console.log("The height is"+medTableView.height)
        return parent.height/rows}//rowHeights[row]}
    //property var columnWidths: [100, 50, 80, 150]
    //      columnWidthProvider: function (column) { return columnWidths[column] }
    delegate: Rectangle {
        implicitWidth: 150
        implicitHeight: ( heading === true)?50:20
        border.color: "white"//"black"
        border.width: 2
        //color: (heading==true)?"red":"green"
        //color: ( heading === true || arRole === true ) ? ( heading === true ? "red":"green" ) : ( arRole === true ? "blue":"transparent" );
        //color:  heading === true ? "red":"green"
        onColorChanged: console.log("Color changed")
        TableView.onPooled: console.log(display + " pooled")
        TableView.onReused: console.log(display + " resused")


        Text {
            text:display
            width: parent.width
            height: parent.height
            font.pointSize: 12
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            anchors.centerIn: parent
            wrapMode: ( heading === true)?Text.WordWrap:Text.NoWrap
        }
    }
}

