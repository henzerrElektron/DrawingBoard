import QtQuick 2.12
import QtQuick.Controls 2.5
import "."
import "./../images/"
//import "./../imports/"
import "./../models/"
import "./../delegates/"
import ApplicationConstants 1.0

GridView {
    id: theListView
    //anchors.fill: parent
    property var group: ""
    property var group1: ""
    //property alias group:allDateDelegateModel.filterOnGroup
    //property alias group1: allDateDelegateModel1.filterOnGroup
    // property var group: ""
    // property var group1: ""
    property alias theModel: theListView.model
    property int marginWidth: (parent.width/count)/count
    property int marginHeight:(parent.height/count)/count
    property int curWidth: theListView.width
    property int  cellSpacing: 0
    property bool praticeOrPatient: true
    property var filterName: ""
    onFilterNameChanged: doFilter()
    property var idealCellHeight: 100
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
    cellWidth: parent.width/3//(parent.width/(count))-marginWidth
    cellHeight: parent.height/2//(parent.height/(count))-marginHeight//parent.height/3
    width:parent.width//count*cellWidth
    height:parent.height //cellHeight
    function doFilter()
    {
        console.log("The filtername is "+filterName)
        if(filterName === StringConstants.modelReportPraticeItems)
        {
            theListView.model = allDateDelegateModel.parts.reportPraticeItems
        }
        if(filterName === StringConstants.modelReportPatientItems)
        {
            theListView.model =  allDateDelegateModel.parts.reportPatientItems
        }
        console.log("The filter name is"+filterName+ "the group name is"+allDateDelegateModel.filterOnGroup)
    }
    AllDateDelegateModel{
        id:allDateDelegateModel
        delegate:
            Package{
            ReportPageBtn{
                id:reportBtn
                height: parent.height/4
                width: parent.width/4
                text: actionName
                Package.name: filterName
                Component.onCompleted: {
                    invokeSource.connect(theListView.invokeSource)
                    invokeIndex.connect(theListView.invokeIndex)
                    test.connect(theListView.tested)
                }
            }
        }
        filterOnGroup: ""//"homeItems"
        model: allDateModel
        onFilterGroupChanged: {
            console.log("I am changed")
            update()
        }
        Component.onCompleted: {
            parts.reportPraticeItems.filterOnGroup = StringConstants.modelReportPraticeItems
            parts.reportPatientItems.filterOnGroup = StringConstants.modelReportPatientItems
        }
    }
    AllDateModel{
        id:allDateModel
    }
}
