import QtQuick 2.12
import QtQuick.Controls 2.4
import TestResultModels 0.1
import QtQuick 2.0
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
/*!
   \qmltype CommonTableView
   \brief A Component that contains the newly incorporated tableview of QML that inherifts Flickable

  This Component can be used for table that has headers  vertically
  This gets data from the C++ model and displays them in the table view
  This uses the modern table view that is inherited from QML Flip Component
  This is used in CommonTableGrid.qml

   \image tobeprovided.png

   \section1 Sample usage

   To display a table that contains both vertical headers use the below in a grid

*/
TableView {
    id: commonTableView
    objectName: StringConstants.objecName_commonTableView
    topMargin: columnHeader.implicitHeight//+columnHeader.implicitHeight/2
    property alias tableModel: commonTableView.model
    property int rowHeightMinValue: 0
    property alias colProvider: commonTableView.columnWidthProvider
    property int noOfCols: 0

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
            if(columns-1 === 0)
            {
                noOfCols = 1;
            }
            else{
                noOfCols = columns-1;

            }

            return ((parent.width) - parent.width/(noOfCols))/(noOfCols);
        }
    }

    rowHeightProvider: function (row){
        //console.log("The height is"+supplementTableView.height)
//         var value = 25
//        if((parent.height === 0))
//        {
//           supplementTableView.height = count * value;
//        }

        var value1 = (((parent.height) - parent.height/(rows-1))/(rows-1))
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
        id:rec
        onColorChanged: console.log("Color changed")
        //TableView.onPooled: console.log(display + " pooled")
        //TableView.onReused: console.log(display + " resused")
        Text {
            text:display
            font.pointSize: 12
            anchors.centerIn: parent
        }
//        MouseArea{
//            id:moArea
//            anchors.fill: parent
//            onClicked: rec.color = "blue"
//        }
    }
    Rectangle { // mask the headers
        id:tableBackground
        //z: 3
        color: StringConstants.actionBtnBackgroundColor//"white"//"red"//"#222222"
       // y: supplementTableView.contentY
       // x: supplementTableView.contentX
        width: commonTableView.width
        height: commonTableView.height//supplementTableView.topMargin * 2
    }

    ScrollIndicator.horizontal: ScrollIndicator { }
    ScrollIndicator.vertical: ScrollIndicator { }
    Component.onDestruction: { cleanup()    }
    function init() { console.log("INIT "+Component.objectName)    }
    function cleanup() {  console.log("CLEANUP "+Component.objectName) }

}

