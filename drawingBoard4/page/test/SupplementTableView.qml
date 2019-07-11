import QtQuick 2.12
import TestResultModels 0.1
import QtQuick 2.0
TableView {
    id: supplementTableView1
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
    delegate: Rectangle {
        implicitWidth: 150
        implicitHeight: 50
        border.color: "black"
        border.width: 2
        //color: (heading==true)?"red":"green"
        //color: ( heading === true || arRole === true ) ? ( heading === true ? "red":"green" ) : ( arRole === true ? "blue":"transparent" );
        color:  heading === true ? "red":"green"
        onColorChanged: console.log("Color changed")
        TableView.onPooled: console.log(TestResults + " pooled")
        TableView.onReused: console.log(TestResults + " resused")

        Text {
            text: heading
            font.pointSize: 12
            anchors.centerIn: parent
        }
    }
}
