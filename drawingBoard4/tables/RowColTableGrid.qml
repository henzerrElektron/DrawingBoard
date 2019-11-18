import QtQuick 2.12
import QtQuick.Controls 2.4
import QtQuick.Window 2.11
import QtQuick.Templates 2.5
import QtQuick.Layouts 1.3
import QtQuick.Extras 1.4
import QtQuick.Dialogs.qml 1.0
import QtQuick.Controls.Universal 2.0
import Qt.labs.calendar 1.0
import QtQuick.Controls.Material 2.0
import QtQuick.Controls 2.3
//import QtQuick.Controls 1.4
import Qt.labs.settings 1.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Shapes 1.11
import ApplicationConstants 1.0
Rectangle {
    id: element
    anchors.fill: parent
    //Grid {
    //     id: grid
    //     anchors.fill: parent
    property alias commonTableModel: mainTable.model

    Row {
        id: row
        x: 0
        height: rectangle.height
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: rectangle.right
        Repeater {
            model: mainTable.columns > 0 ? mainTable.columns : 1
            Label {
               // id:lbl
                width: mainTable.columnWidthProvider(modelData)//+(rectangle.width/mainTable.columns)
                height: rectangle.height
                text: commonTableModel.headerData(modelData, Qt.Horizontal,"heading")
                color: StringConstants.actionBtnBackgroundColor
                font.pixelSize: 12//lbl.width/2
                padding: 10
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                background: Rectangle {  color:StringConstants.barBackgroundColor}// === "transparent"?"#333333":model.decoration}
            }
        }

    }

    Column {
        id: column
        width: rectangle.width
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: rectangle.bottom
        anchors.topMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        Repeater {
            model: mainTable.rows > 0 ? mainTable.rows : 1
            Label {
                ///id:colLbl
                width: rectangle.width
                height: mainTable.rowHeightProvider(modelData)//+(rectangle.height/mainTable.rows)
                text: commonTableModel.headerData(modelData, Qt.Vertical,"heading")
                color: StringConstants.actionBtnBackgroundColor//'#aaaaaa'
                font.pixelSize: 12//colLbl.width/2//15
                padding: 10
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                background: Rectangle { color: StringConstants.barBackgroundColor}//=== "transparent"?"#333333":model.decoration}
                //background: Rectangle { color: "#333333" }
            }
        }

    }

    Rectangle {
        id: rectangle
        y: 0
        width: mainTable.columnWidthProvider(1)<10?150:mainTable.columnWidthProvider(1)
        height:mainTable.rowHeightProvider(1)<10?25:mainTable.rowHeightProvider(1)
        color: "#ffffff"
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
    }
    Rectangle{
        id:mainRec
        anchors.left: rectangle.right
        anchors.top: rectangle.bottom
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        //width: 500
        //height: 500
        TableView {
                id: mainTable
                onHeightChanged: forceLayout()
                onWidthChanged: forceLayout()
                columnWidthProvider: function (column) { return (parent.width)/columns; }// - rectangle.width
                rowHeightProvider: function (column) { return (parent.height )/rows; }//- rectangle.height
                anchors.fill: parent
               // leftMargin: rowsHeader.implicitWidth
               // topMargin: columnsHeader.implicitHeight
                //model: table_model
                ScrollBar.horizontal: ScrollBar{}
                ScrollBar.vertical: ScrollBar{}
                clip: true
                delegate: Rectangle {
                    Text {
                        text: display
                        anchors.fill: parent
                        anchors.margins: 10
                        color: 'black'
                        font.pixelSize: 15
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                    }
                }
                ScrollIndicator.horizontal: ScrollIndicator { }
                ScrollIndicator.vertical: ScrollIndicator { }
           }
        }
    }








/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:4;anchors_x:14}D{i:3;anchors_width:200;anchors_x:260}
D{i:1;anchors_height:400;anchors_width:400;anchors_x:120;anchors_y:29}D{i:9;anchors_width:200;anchors_x:260}
}
 ##^##*/
