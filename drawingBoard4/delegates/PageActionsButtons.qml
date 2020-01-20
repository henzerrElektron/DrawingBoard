import QtQuick 2.12
import QtQuick.Controls 2.5
import "."
import "./../images/"
//import "./../imports/"
import "./../models/"
import "./../delegates/"
import ApplicationConstants 1.0
/*!
   \qmltype PageActionsButtons
   \brief This component used to display all action buttons in the Title section of all pages.
   This also displays the Home page main buttons

  This is used in many classes.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of PageActionsButtons is demonstrated below
   \qml
            PageActionsButtons{
                id:image2
                group: "homeItems"
                filterName:"homeItems"
                actionOrHome: true
            }
   \endqml

*/
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
    //property alias theModelCount: theListView.model.count
    property alias theCellWidth: theListView.cellWidth
    property alias theCellHeight: theListView.cellHeight
    property int marginWidth: (parent.width/count)/count
    property int curWidth: theListView.width
    property int  cellSpacing: 0
    property bool actionOrHome: true
    property var filterName: ""
    onFilterNameChanged: doFilter()
    property var idealCellHeight: 75
    property var idealCellWidth: 75
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
    //cellWidth: actionOrHome ?idealCellWidth===75?75:idealCellWidth:(parent.width/(count))-marginWidth//75
    //cellHeight: actionOrHome ?idealCellHeight===75?75:idealCellHeight:parent.height - parent.height/5//parent.height/3//75
    cellWidth: actionOrHome ?idealCellWidth:(parent.width/(count))-marginWidth//75
    cellHeight: actionOrHome ?idealCellHeight:parent.height - parent.height/5//parent.height/3//75
    width:count*cellWidth//actionOrHome ?count*cellWidth:count*cellWidth
    height: parent.height//cellHeight//actionOrHome ?cellHeight:cellHeight
    //model:test()//allPageModel.parts.homeMainItems
    function doFilter()
    {
        if(filterName === StringConstants.modelHomeMainItems)
        {
            theListView.model = allPageModel.parts.homeMainItems
        }
        if(filterName === StringConstants.modelHomeItems)
        {
            theListView.model =  allPageModel.parts.homeItems
        }
        if(filterName === StringConstants.modelExistingPtItems)
        {
            theListView.model =  allPageModel.parts.existingPatientItems
        }
        if(filterName === StringConstants.modelNewPatientItems)
        {
            theListView.model =  allPageModel.parts.newPatientItems
        }
        if(filterName === StringConstants.modelOperatorPageItems)
        {
            theListView.model =  allPageModel.parts.operatorPageItems
        }
        if(filterName === StringConstants.modelReportPageItems)
        {
            theListView.model =  allPageModel.parts.reportPageItems
        }
        if(filterName === StringConstants.modelTestPageItems)
        {
            theListView.model =  allPageModel.parts.testPageItems
        }
        if(filterName === StringConstants.modelTestPageControlItems)
        {
            theListView.model =  allPageModel.parts.testPageControlItems
        }
        if(filterName === StringConstants.modelTestPageNavigationItems)
        {
            theListView.model =  allPageModel.parts.testPageNavigationItems
        }
        if(filterName === StringConstants.modelNavigationItems)
        {
            theListView.model =  allPageModel.parts.navigationItems
        }
        console.log("The filter name is"+filterName+ "the group name is"+allPageModel.filterOnGroup)
    }

    AllPageModel {
        id: allPageModel
        delegate:
            Package{
            HomePageBodyDelegate{
                id:homeDelegate
                Package.name: "homeMainItems"
                height: GridView.view.cellHeight
                width: GridView.view.cellWidth-marginWidth
                Component.onCompleted: {
                    invokeSource.connect(theListView.invokeSource)
                    invokeIndex.connect(theListView.invokeIndex)
                    test.connect(theListView.tested)
                }
            }
            ActionHeaderDelegate{
                id:actHeaderDelegate
                Package.name:filterName//"homeItems"//StringConstants.modelHomeItems//StringConstants.modelHomeItems
                Component.onCompleted: {
                    invokeSource.connect(theListView.invokeSource)
                    invokeIndex.connect(theListView.invokeIndex)
                    test.connect(theListView.tested)
                }
            }


        }

        filterOnGroup: ""//"homeItems"
        onFilterGroupChanged: {
            console.log("I am changed")
            update()
        }
        model: actionDelegateModel
        Component.onCompleted: {
            parts.homeMainItems.filterOnGroup = StringConstants.modelHomeMainItems
            parts.homeItems.filterOnGroup = StringConstants.modelHomeItems
            parts.existingPatientItems.filterOnGroup = StringConstants.modelExistingPtItems
            parts.newPatientItems.filterOnGroup = StringConstants.modelNewPatientItems
            parts.operatorPageItems.filterOnGroup = StringConstants.modelOperatorPageItems
            parts.reportPageItems.filterOnGroup = StringConstants.modelReportPageItems
            parts.testPageItems.filterOnGroup = StringConstants.modelTestPageItems
            parts.testPageControlItems.filterOnGroup = StringConstants.modelTestPageControlItems
            parts.testPageNavigationItems.filterOnGroup = StringConstants.modelTestPageNavigationItems
            parts.navigationItems.filterOnGroup = StringConstants.modelNavigationItems
        }
    }
    ActionDelegateModel {
        id: actionDelegateModel
    }
}

/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
