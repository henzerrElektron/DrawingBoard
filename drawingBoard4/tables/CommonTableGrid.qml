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
//import QtQuick 2.1
//import QtQuick.Controls 1.0
import QtQuick.Controls.Styles 1.2
//import QtQuick.Controls.Styles 1.4
import QtQuick.Shapes 1.11
//import appContstants 1.0
import "."
import "./../images/"
import "./../delegates/"
import "./../models/"
import "./../common/"
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
    property alias repeaterModel:repeaterHeader.model
    property var commonTableModel:repeaterHeader.model//: existingPatientTable.model
    //property alias tableModel: existingPatientTable.model
    property alias proxySoure: proxyModel.source
    property alias searchRecVisibilty: searchRec.visible
    property alias rowHeightMinValue: existingPatientTable.rowHeightMinValue
    property bool minheaderHeight: false
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
        Layout.preferredHeight: 50//parent.height - tableRec.height
        Layout.minimumHeight: 50//parent.height - tableRec.height
        Layout.maximumHeight:50// parent.height - tableRec.height
        Layout.row: 2
        // anchors.top: searchRec.bottom
        color:StringConstants.gridheaderColor
        //        y:supplementTableView.contentY
        //        z:2
        Row{
            id:rfwww
            anchors.fill: parent
            ListView {
                id:repeaterHeader
                anchors.fill: parent
                orientation: ListView.Horizontal
               //model: existingPatientTable.columns > 0 ? existingPatientTable.columns : repeaterModel
                //model: theExistingPatientsModel//.index(0,0,table11)//table11.columns > 0? table11.columns : 1
                onModelChanged: {
                    console.log("The model is"+existingPatientTable.columns)
                }

//                onItemAdded: {
//                    console.log("The index is"+index)
//                }
                onCountChanged: {
                    console.log("The count is"+ count)
                }

               delegate: Label{
                    id:lbl
                    width: existingPatientTable.columnWidthProvider(index)
                    height:minheaderHeight?35:50
                    text:commonTableModel.headerData(index,Qt.Horizontal,"heading")
                    onTextChanged:{
                        console.log("The test changed int index is"+index+"all"+text+"and count is"+count)
                    }
                    color: StringConstants.gridLabelColor
                    font.pixelSize: 15
                    padding: 10
                    wrapMode: Text.WordWrap
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    textFormat: Text.StyledText
                    elide: Text.ElideMiddle
                    background: Rectangle {
                        anchors.fill: parent
                        anchors.bottomMargin: 3
                       //color: index === (existingPatientTable.columns)?"green":index === (existingPatientTable.columns-1)?"red":"orange"
                        // anchors.leftMargin: 1
                        // anchors.rightMargin: 1
                        CommonBorder
                        {
                            //bodyColor:StringConstants.color_gbTransparent
                            customBorder: false
                            lBorderWidth:index ===0?3:0
                            rBorderWidth: index === (existingPatientTable.columns-1)?3:0
                            tBorderWidth: 3
                            bBorderWidth: 3
                            //allBorderWidth:10
                            bodyColor: StringConstants.label_NewPatientLabelBgColor
                        }
                        // border.color:StringConstants.gridLabelColor
                        // border.width: 2
                    }

                }
            }
        }

    }
    Rectangle{
        id:tableRec
        Layout.fillWidth: true
        Layout.fillHeight: true
        // anchors.left: columnHeader.left
        //  anchors.right: columnHeader.right
        Layout.row: 3
        //border.color: StringConstants.actionBtnBackgroundColor
        //border.width: 6
        CommonBorder
        {
            //bodyColor:StringConstants.color_gbTransparent
            customBorder: false
            lBorderWidth: 3
            rBorderWidth: 3
            tBorderWidth: 3
            bBorderWidth: 3
            //allBorderWidth:10
            bodyColor: StringConstants.label_NewPatientLabelBgColor
        }
        Rectangle{
            id:subRec
            anchors.fill: parent
            //anchors.leftMargin: 3
            //anchors.rightMargin: 3
            CommonTableView{
                id:existingPatientTable
                width: parent.width
                height: parent.height
                onWidthChanged: forceLayout()
                // contentWidth: parent.width
                onHeightChanged: forceLayout()
                //        anchors.left: parent.left
                //        anchors.leftMargin: 0
                //        anchors.right: parent.right
                //        anchors.rightMargin: 0
                //        anchors.top: columnHeader.bottom//parent.top
                //        anchors.topMargin: 0
                //anchors.fill: parent
                model: searchRecVisibilty?proxyModel:commonTableModel
                //model: filterModel//theExistingPatientsModel//theModel//theSupplementModel//theExistingPatientsModel
            }
        }
    }

}
