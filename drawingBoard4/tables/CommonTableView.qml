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
    property int rowHeightMinValue: 0
    property alias colProvider: supplementTableView.columnWidthProvider
    onWidthChanged: {
      //  console.log("The width is"+width)
        //forceLayout()
    }
    onHeightChanged: {
      //  console.log("The height is"+height)
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

    rowHeightProvider: function (row){
        //console.log("The height is"+supplementTableView.height)
        var value1 = (((parent.height) - parent.height/(rows-1))/(rows-1))
        var value = 25
        if((rowHeightMinValue === 0))
        {
            if(value1 > value)
            {
                return value1
            }
            else
            {
                return value
            }
        }
        else
        {
            if( rowHeightMinValue < value1)
            {
                return rowHeightMinValue
            }
            else
            {
                return value1
            }
        }

    }//parent.height/rows}//parent.height/(rows>10?rows/10:10)}//rowHeights[row]}
    delegate: Rectangle {
        onColorChanged: console.log("Color changed")
        //TableView.onPooled: console.log(display + " pooled")
        //TableView.onReused: console.log(display + " resused")
        Text {
            text:display
            font.pointSize: 12
            anchors.centerIn: parent
        }
    }
    Rectangle { // mask the headers
        id:tableBackground
        //z: 3
        color: StringConstants.actionBtnBackgroundColor//"white"//"red"//"#222222"
        y: supplementTableView.contentY
        x: supplementTableView.contentX
        width: supplementTableView.width
        height: supplementTableView.height//supplementTableView.topMargin * 2
    }
    ScrollIndicator.horizontal: ScrollIndicator { }
    ScrollIndicator.vertical: ScrollIndicator { }


}

