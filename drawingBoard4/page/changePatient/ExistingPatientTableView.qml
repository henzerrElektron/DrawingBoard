import QtQuick 2.12
import QtQuick.Controls 2.4
import TestResultModels 0.1
import QtQuick 2.0
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
TableView {
    id: supplementTableView

    topMargin: columnHeader.implicitHeight//+columnHeader.implicitHeight/2
    property alias tableModel: supplementTableView.model
    property alias colProvider: supplementTableView.columnWidthProvider
   // property alias space: columnHeader.height
    //contentX: columnHeader.x
    //contentY: columnHeader.y+100
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
    ScrollBar.horizontal: ScrollBar{}
    ScrollBar.vertical: ScrollBar{}

    clip: true
    contentWidth:parent.width
    columnWidthProvider: function(column)
    {
       //return (parent.width/columns) -(((parent.width/columns)/columns)/4);
        if(column === 0)
        {
            return ((parent.width)-((columns-1)*((parent.width) - parent.width/(columns-1))/(columns-1)));
        }
        else
        {
            return ((parent.width) - parent.width/(columns-1))/(columns-1);
        }
    }


    //        rowHeightProvider: function (row)
    //        {
    //            return ((parent.height/1) / rows);
    //        }
    rowHeightProvider: function (row){
        console.log("The height is"+supplementTableView.height)
        return parent.height/(rows>10?rows/10:10)}//rowHeights[row]}
    //property var columnWidths: [100, 50, 80, 150]
    //      columnWidthProvider: function (column) { return columnWidths[column] }
    delegate: Rectangle {
       /// implicitWidth: 150
       // implicitHeight: 50
        //border.color: "black"
        // border.width: 2
        //color: (heading==true)?"red":"green"
        //color: ( heading === true || arRole === true ) ? ( heading === true ? "red":"green" ) : ( arRole === true ? "blue":"transparent" );
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
        Rectangle { // mask the headers
            id:masker
            //z: 3
            color: StringConstants.actionBtnBackgroundColor//"white"//"red"//"#222222"
            y: supplementTableView.contentY
            x: supplementTableView.contentX
            width: supplementTableView.width
            height: supplementTableView.height//supplementTableView.topMargin * 2
        }
//        Rectangle{
//            id:newMask
//            z:1
//            color: "red"//"transparent"
//            y:supplementTableView.contentY
//            x:supplementTableView.contentX
//            width: columnHeader.width
//            height: columnHeader.height+100
//        }

//    Row{
//        id:columnHeader
//        y:supplementTableView.contentY
//        z:2
//        Repeater{
//            model: supplementTableView.columns > 0? supplementTableView.columns : 1
//            Label{
//                width: supplementTableView.columnWidthProvider(modelData)
//                height:35
//                text:theExistingPatientsModel.headerData(modelData,Qt.Horizontal)
//                color: '#aaaaaa'
//                font.pixelSize: 15
//                padding: 10
//                verticalAlignment: Text.AlignVCenter
//                horizontalAlignment: Text.AlignHCenter
//                background: Rectangle {color:"#333333"}
//            }
//        }

//    }
    ScrollIndicator.horizontal: ScrollIndicator { }
    ScrollIndicator.vertical: ScrollIndicator { }


}

