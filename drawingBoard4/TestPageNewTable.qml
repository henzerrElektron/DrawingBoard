import QtQuick 2.12
import TestResultModels 0.1
import QtQuick 2.0
TableView {
    id: tableView2
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
//        color: ( {
//            heading: "red",
//            arRole: "green",
//        } )[ true ] || "blue";
//       color: ( ( {
//            true: () => {
//                         console.log( 'returning red for true' );
//                         return "red";

//            },
//            false: () => {
//                console.log( 'returning green for false' );
//                         return "green";
//            },
//        } )[ heading ] || ( {
//                               true: () => {
//                                            console.log( 'returning blue for true' );
//                                            return "blue";

//                               },
//                               false: () => {
//                                   console.log( 'returning white for false' );
//                                            return "white";
//                               },
//                           } )[ arRole ] )();
