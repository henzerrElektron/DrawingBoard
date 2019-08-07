import QtQuick 2.12
import TestResultModels 0.1
import QtQuick 2.0
import ApplicationIntegerConstants 1.0
import ApplicationStringConstants 1.0
import ApplicationOtherConstants 1.0
    TableView {
        id: supplementTableView
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
            console.log("The height is"+tableView.height)
            return parent.height/rows}//rowHeights[row]}
        //property var columnWidths: [100, 50, 80, 150]
        //      columnWidthProvider: function (column) { return columnWidths[column] }
        delegate: Rectangle {
            implicitWidth: 150
            implicitHeight: 50
            border.color: "black"
            border.width: 2
            //color: (heading==true)?"red":"green"
            color: ( heading === true || arRole === true ) ? ( heading === true ? "red":"green" ) : ( arRole === true ? "blue":"transparent" );
            //color:  heading === true ? "red":"green"
            onColorChanged: console.log("Color changed")
            TableView.onPooled: console.log(display + " pooled")
            TableView.onReused: console.log(display + " resused")


            Text {
                text:display
                font.pointSize: 12
                anchors.centerIn: parent
            }
        }
    }

