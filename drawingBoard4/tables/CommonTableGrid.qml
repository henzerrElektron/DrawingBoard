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
import "./../images/"
import "./../delegates/"
import "./../models/"
import "./../page/"
import "./../page/test/"
import "./../page/changePatient/"
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
    property alias repeaterModel: repeaterHeader.model
    //property alias tableModel: existingPatientTable.model
    property alias proxySoure: proxyModel.source
    property alias searchRecVisibilty: searchRec.visible
    function setFilterString(str,role){
        proxyModel.filterRole = role
        proxyModel.sortRole = role
        proxyModel.setFilterFixedString(str)
    }
    function logString(str,role)
    {
        console.log("The values are"+str+"and is"+role)
    }
    SortFilterModel{
        id:proxyModel
        //source: theExistingPatientsModel//.headerData(0,Qt.Horizontal,HeadingRole)
        sortRole: "display"//"display"//"HeadingRole"//"Surname"//"DisplayRole"//theExistingPatientsModel.count > 0 ? table11.getColumn(table11.sortIndicatorColumn).role:""
        //sortOrder: table11.view.sortIndicatorOrder
        // filterString: "*"+"f"+"*"
        filterSyntax: SortFilterModel.Wildcard
        filterCaseSensitivity:  Qt.CaseInsensitive
    }
    Rectangle{
        id: searchRec
        //Layout.column: 1
        //Layout.columnSpan: 3
        //Layout.fillHeight: true
        Layout.fillWidth: true
        //Layout.preferredHeight: parent.height/5
        Layout.minimumHeight: parent.height/6
        //Layout.maximumHeight: parent.height/5
        Layout.row: 1

        SwitchSearchItems{
            id:rectangleSwitchPatientLabel
            anchors.fill: parent
            Component.onCompleted: {
               // rectangleSwitchPatientLabel.selectedText.connect(spLabel.selectedText)
                selectedText.connect(gridLayout.setFilterString)
            }
        }
    }

    Rectangle{
        id:columnHeader
        Layout.fillWidth: true
        Layout.fillHeight: true
        Layout.preferredHeight: 50
        Layout.minimumHeight: 50
        Layout.maximumHeight: 50
        Layout.row: 2
        anchors.top: searchRec.bottom
        color:StringConstants.gridheaderColor
        //        y:supplementTableView.contentY
        //        z:2
        Row{
            id:rfwww
            anchors.fill: parent
        Repeater{
            id:repeaterHeader
            //model: theExistingPatientsModel//.index(0,0,table11)//table11.columns > 0? table11.columns : 1
           onItemAdded: {
               console.log("The index is"+index)
           }
            Label{
                width: existingPatientTable.columnWidthProvider(index)
                height:50
                text:repeaterModel.headerData(index,Qt.Horizontal,"heading")
                onTextChanged: console.log("The test changed int index is"+index+"all"+text+"and count is"+count)
                color: StringConstants.gridLabelColor
                font.pixelSize: 15
                padding: 10
                wrapMode: Text.WordWrap
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                textFormat: Text.StyledText
                elide: Text.ElideMiddle
                //background: Rectangle {color:"#333333"}
            }
        }
        }

    }
    CommonTableView{
        id:existingPatientTable
        width: parent.width
        onWidthChanged: forceLayout()
        // contentWidth: parent.width

        onHeightChanged: forceLayout()
        Layout.fillWidth: true
        Layout.fillHeight: true
        Layout.row: 3
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.top: columnHeader.bottom//parent.top
        anchors.topMargin: 0
        //anchors.fill: parent
        model: searchRecVisibilty?proxyModel:repeaterModel



        //model: filterModel//theExistingPatientsModel//theModel//theSupplementModel//theExistingPatientsModel
    }

}
