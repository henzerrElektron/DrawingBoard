import QtQuick 2.12
import QtQuick.Controls 2.5
import "."
import "./../images/"
//import "./../imports/"
import "./../models/"
import "./../delegates/"
import ApplicationConstants 1.0
import Qt.labs.qmlmodels 1.0


GridView {
    id: theListView
    //anchors.fill: parent
    property var group: ""
    property var group1: ""
    //property alias group:allPageModel.filterOnGroup
    //property alias group1: allPageModel1.filterOnGroup
    // property var group: ""
    // property var group1: ""
    property alias theModel: theListView.model
    property int marginWidth: (parent.width/count)/count
    property int curWidth: theListView.width
    property int  cellSpacing: 0
    property bool actionOrHome: true
    property var filterName: ""
    onFilterNameChanged: doFilter()
    property var idealCellHeight: 200
    property var idealCellWidth: 200
    signal componentTriggered(string name)
    signal invokeSource(string source)
    signal invokeIndex(int index)
    signal tested()
    onTested: {"I am tested in TestActionsButtons"}
    onComponentTriggered: {
        console.log(" component was triggered"+name)
    }
    onInvokeSource: {
        console.log("The string is"+source)
    }
    onInvokeIndex: {
        console.log("The invokeIndex is"+index)
    }
    cellWidth: parent.width/2
    cellHeight: parent.height/count
    onCellWidthChanged: {
        console.log("The cell width is"+width)
    }
    onCellHeightChanged: {
        console.log("The cell height is"+height)
    }

    width:parent.width//actionOrHome ?count*cellWidth:count*cellWidth
    onWidthChanged: {
        console.log("The width is "+width)
    }

    height: parent.height//count*cellHeight//actionOrHome ?cellHeight:cellHeight
    onHeightChanged: {
        console.log("The height changed is"+height)
    }
    onCountChanged: {
        console.log("The count is"+count)}

    function doFilter()
    {
        if(filterName === StringConstants.comboBoxItemModel)
        {
            theListView.model = newPatientPersonalDetailEntryModel.parts.comboBoxItems
        }
        if(filterName === StringConstants.textBoxItemsModel)
        {
            theListView.model = newPatientPersonalDetailEntryModel.parts.textBoxItems
        }
    }
    NewPatientPDEntryDelegateModel{
        id:npPDEntryDelegateModel
//        Package{
//            TextDelegate{
//                id:label
//                Package.name: filterName//"PatientDetailedModel"
//                // text: actionName
//                // font:OtherConstants.fontFamily
//                //  color: "white"
//                height: GridView.view.cellHeight
//                width: GridView.view.cellWidth
//                onTextChanged: {
//                    console.log("The value of the text is"+text)
//                }
//            }
//            LabelDelegate{
//                id:label1
//                Package.name: filterName//"PatientDetailedModel"
//                text: actionName
//                color: "black"
//                // font:OtherConstants.fontFamily
//                //  color: "white"
//                height: GridView.view.cellHeight
//                width: GridView.view.cellWidth/2
//                onTextChanged: {
//                    console.log("The value of the text is"+text+actionName)
//                }
//            }

//            Component.onCompleted: {
//                console.log("The values are")
//            }
//        }
        filterOnGroup: StringConstants.textBoxItemsModel
        onFilterGroupChanged:{
            console.log("I am changed")
            update()
        }
        model:newPatientPersonalDetailEntryModel
        Component.onCompleted:{
            parts.comboBoxItems.filterOnGroup = StringConstants.comboBoxItemModel;
            parts.textBoxItems.filterOnGroup = StringConstants.textBoxItemsModel;

            //doFilter()
        }
    }
    NewPatientPersonalDetailsEntryModel{
            id:newPatientPersonalDetailEntryModel
    }
}
