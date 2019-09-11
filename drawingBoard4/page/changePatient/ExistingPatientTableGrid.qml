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
import SortFilterModel 0.1
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
GridLayout{
    id:gridLayout
    columns: 1
    flow: Grid.TopToBottom
    rowSpacing: 0
    columnSpacing: 0
    rows: 2
    anchors.fill: parent
    property int rowTabHeight: height/rows
    property bool testOrSwitch: false
    property alias proxyFilterString: proxyModel.filterString
    property alias proxyFilterSortRole: proxyModel.sortRole
    function setFilterString(str,role){
        proxyModel.filterRole = role
        proxyModel.sortRole = role
        proxyModel.setFilterFixedString(str)
    }
    Rectangle{
        id:columnHeader
        Layout.fillWidth: true
        Layout.fillHeight: true
        Layout.preferredHeight: 40
        Layout.minimumHeight: 40
        Layout.maximumHeight: 40
        Layout.row: 1
        color:"#333333"
        //        y:supplementTableView.contentY
        //        z:2
        Row{
            id:rfwww
            anchors.fill: parent
        Repeater{
            model: theExistingPatientsModel//.index(0,0,table11)//table11.columns > 0? table11.columns : 1
            Label{
                width: table11.columnWidthProvider(index)
                height:35
                text:theExistingPatientsModel.headerData(index,Qt.Horizontal,"heading")
                color: '#aaaaaa'
                font.pixelSize: 15
                padding: 10
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                //background: Rectangle {color:"#333333"}
            }
        }
        }

    }
    ExistingPatientTableView{
        id:table11
        width: parent.width
        onWidthChanged: forceLayout()
        // contentWidth: parent.width

        onHeightChanged: forceLayout()
        Layout.fillWidth: true
        Layout.fillHeight: true
        Layout.row: 2
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.top: columnHeader.bottom//parent.top
        anchors.topMargin: 0
        //anchors.fill: parent


        model: SortFilterModel{
            id:proxyModel
            source: theExistingPatientsModel//.headerData(0,Qt.Horizontal,HeadingRole)
            //sortOrder: table11.view.sortIndicatorOrder
            sortRole: "display"//"display"//"HeadingRole"//"Surname"//"DisplayRole"//theExistingPatientsModel.count > 0 ? table11.getColumn(table11.sortIndicatorColumn).role:""
            // filterString: "*"+"f"+"*"
            filterSyntax: SortFilterModel.Wildcard
            filterCaseSensitivity:  Qt.CaseInsensitive
        }

        //model: filterModel//theExistingPatientsModel//theModel//theSupplementModel//theExistingPatientsModel
    }

}
