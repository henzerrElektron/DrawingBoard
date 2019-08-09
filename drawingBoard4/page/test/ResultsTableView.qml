import QtQuick 2.12
import TestResultModels 0.1
import QtQuick 2.0
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0

TableView {
    id: tableView
    //anchors.fill: parent
    //anchors.left: parent.left
    //anchors.right: parent.right
    //width: parent.width
    //width: 500
    //height: 125
    //implicitHeight: 500
    //implicitWidth: 125
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
//    property var columnWidths: [200, 110, 110, 150]
//    property var rowHeights: [40, 25, 25, 25,25]
//    columnWidthProvider: function (column) {
//        console.log("The width is"+tableView.width)
//        return columnWidths[column] }
//    rowHeightProvider: function (row){
//        console.log("The height is"+tableView.height)
//        return rowHeights[row]}
    //TestResultModels {}
//    columnWidthProvider: function (column){
//        console.log("The width is"+tableView.width)
//        console.log("The height is"+tableView.height)
//        console.log("The column and row count are"+ tableView.rows)
//        console.log("The column and row count are"+ tableView.columns)
//        console.log("The answer is"+tableView.width/tableView.columns)
//        return tableView.width/tableView.columns}


//    rowHeightProvider: function(row){
//        console.log("The width is"+tableView.width)
//        console.log("The height is"+tableView.height)
//        console.log("The column and row count are"+ tableView.rows)
//        console.log("The column and row count are"+ tableView.columns)
//        console.log("The answer is"+tableView.width/tableView.columns)
//        return tableView.height/tableView.rows}
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
