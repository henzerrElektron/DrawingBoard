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
import QtQuick.Controls 1.0
import QtQuick.Controls.Styles 1.2
//import QtQuick.Controls.Styles 1.4
import QtQuick.Shapes 1.11
//import appContstants 1.0
import "."
import "./../../images/"
import "./../../delegates/"
import "./../../models/"
import "./../test/"
import TestResultModels 0.1
import SwitchPatientTableModel 0.1
import ApplicationIntegerConstants 1.0
import ApplicationStringConstants 1.0
import ApplicationOtherConstants 1.0


GridLayout{
    id:gridLayout
    columns: 1
    flow: Grid.TopToBottom
    rowSpacing: 0
    columnSpacing: 0
    rows: 3
    anchors.fill: parent
    property int rowTabHeight: height/rows
    property bool testOrSwitch: false
    //spacing: 0
    //    Rectangle{
    //        id:rectangle1
    //        color: "green"
    //        //color: "transparent"
    //        Layout.fillWidth: true
    //        Layout.fillHeight: true
    //        Layout.row: 1
    //        anchors.left: parent.left
    //        anchors.leftMargin: 0
    //        anchors.right: parent.right
    //        anchors.rightMargin: 0
    //        anchors.top: parent.top
    //        anchors.topMargin: 0
    ResultsTableView{
        id:table11
        //width: 500//parent.width
        //height: 100
        //anchors.top: parent.top
        //anchors.right: parent.right
        //anchors.left: parent.left
        width: parent.width
        //height: theModel.rowCount(table11)*10//parent.height
        //contentHeight: theModel.rowCount(table11)*10
        contentWidth: parent.width
        //        columnWidthProvider: function(column)
        //        {
        //            return (parent.width)/columns;
        //        }
        columnWidthProvider: function(column)
        {

            if(column === 0)
            {
                return ((parent.width)-((columns-1)*((parent.width) - parent.width/(columns-1))/(columns-1)));
            }
            else
            {
                return ((parent.width) - parent.width/(columns-1))/(columns-1);
            }
        }
        onWidthChanged: forceLayout()
        rowHeightProvider: function (row)
        {
            return ((parent.height/3) / rows);
        }
        onHeightChanged: forceLayout()
        Layout.fillWidth: true
        Layout.fillHeight: true
        Layout.row: 1
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        //anchors.fill: parent
        model: theModel
    }
    //  }
    //    Rectangle{
    //        id:rectangle2
    //        //color: "red"
    //        color: "transparent"
    //        anchors.top: rectangle1.bottom
    //        anchors.left: parent.left
    //        //anchors.bottom: gridLayout.bottom
    //        anchors.right: parent.right
    //        //anchors.fill: parent
    //        Layout.column: 1
    //        Layout.columnSpan: 1
    //        Layout.fillHeight: true
    //        Layout.fillWidth: true
    //        Layout.row: 2
    ResultsTableView{
        id:table12
        //width: 500//parent.width//500//parent.width//
        //height: 125
        width: parent.width
//        columnWidthProvider: function(column)
//        {
//            return (parent.width)/columns;
//        }
        columnWidthProvider: function(column)
        {

            if(column === 0)
            {
                return ((parent.width)-((columns-1)*((parent.width) - parent.width/(columns-1))/(columns-1)));
            }
            else
            {
                return ((parent.width) - parent.width/(columns-1))/(columns-1);
            }
        }
        onWidthChanged: forceLayout()
        rowHeightProvider: function (row)
        {
            return ((parent.height/3) / rows);
        }
        onHeightChanged: forceLayout()
        //height: theModel1.rowCount(table12)*10
        //contentHeight: theModel1.rowCount(table12)*10
        anchors.top: table11.bottom
        anchors.left: parent.left
        //anchors.bottom: gridLayout.bottom
        anchors.right: parent.right
        //anchors.fill: parent
        Layout.column: 1
        Layout.columnSpan: 1
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.row: 2
        //anchors.top: table11.bottom
        //anchors.right: parent.right
        //anchors.left: parent.left
        model: theModel1
    }
    //}
    //    Rectangle{
    //        id:rectangle3
    //        //color: "black"
    //        color: "transparent"
    //        anchors.top: rectangle2.bottom
    //        anchors.left: parent.left
    //        anchors.bottom: parent.bottom
    //        anchors.right: parent.right

    //        //anchors.fill: parent
    //        Layout.column: 1
    //        Layout.columnSpan: 1
    //        Layout.fillHeight: true
    //        Layout.fillWidth: true
    //        Layout.row: 3
    ResultsTableView{
        id:table13
        width: parent.width//500//parent.width
        //height: theModel2.rowCount(table13)*10
        //contentHeight: theModel2.rowCount(table13)*10
        //height: parent.height
//        columnWidthProvider: function(column)
//        {
//            return (parent.width)/columns;
//        }
        columnWidthProvider: function(column)
        {

            if(column === 0)
            {
                return ((parent.width)-((columns-1)*((parent.width) - parent.width/(columns-1))/(columns-1)));
            }
            else
            {
                return ((parent.width) - parent.width/(columns-1))/(columns-1);
            }
        }
        onWidthChanged: forceLayout()
        rowHeightProvider: function (row)
        {
            return ((parent.height/3) / rows);
        }
        onHeightChanged: forceLayout()

        anchors.top: rectangle2.bottom
        anchors.left: parent.left
        anchors.bottom: parent.bottom
        anchors.right: parent.right

        //anchors.fill: parent
        Layout.column: 1
        Layout.columnSpan: 1
        Layout.fillHeight: true
        Layout.fillWidth: true
        Layout.row: 3
        //anchors.fill: parent
        //anchors.top: table12.bottom
        //anchors.right: parent.right
        //anchors.left: parent.left
        model: theModel2
    }
    //}
}
