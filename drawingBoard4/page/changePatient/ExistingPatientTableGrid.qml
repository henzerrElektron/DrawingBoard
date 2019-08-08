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
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
GridLayout{
    id:gridLayout
    columns: 1
    flow: Grid.TopToBottom
    rowSpacing: 0
    columnSpacing: 0
    rows: 1
    anchors.fill: parent
    property int rowTabHeight: height/rows
    property bool testOrSwitch: false
    ExistingPatientTableView{
        id:table11
        width: parent.width
        contentWidth: parent.width
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
            return ((parent.height/1) / rows);
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
        model: theExistingPatientsModel//theModel//theSupplementModel//theExistingPatientsModel
    }

}
