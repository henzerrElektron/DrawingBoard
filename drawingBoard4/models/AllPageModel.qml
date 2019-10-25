import QtQuick 2.12
//import QtQuick.Controls 1.1
//import QtQuick.Window 2.0
import QtQml.Models 2.12
import "."
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
DelegateModel{
    id: allPageModel
    //items.count: actionDelegateModel.count

    items.objectName: "AllPageModel"
    items.includeByDefault: false
    persistedItems.includeByDefault: false
    model: actionDelegateModel
    groups: [
        DelegateModelGroup{
            id:group1
            objectName: StringConstants.modelHomeItems;
            includeByDefault: false;
            name:StringConstants.modelHomeItems
            Component.onCompleted: {
                console.log(" I am completed"+objectName)
            }

        },
        DelegateModelGroup{
            id:group2
            objectName: StringConstants.modelExistingPtItems;
            includeByDefault: false;
            name:StringConstants.modelExistingPtItems
            Component.onCompleted: {
                console.log(" I am completed"+objectName)
            }
        },
        DelegateModelGroup{
            id:group3
            objectName: StringConstants.modelNewPatientItems;
            includeByDefault: false;
            name:StringConstants.modelNewPatientItems
            Component.onCompleted: {
                console.log(" I am completed"+objectName)
            }
        },
        DelegateModelGroup{
            id:group4
            objectName: StringConstants.modelOperatorPageItems;
            includeByDefault: false;
            name:StringConstants.modelOperatorPageItems
            Component.onCompleted: {
                console.log(" I am completed")
            }
        },
        DelegateModelGroup{
            id:group5
            objectName: StringConstants.modelReportPageItems;
            includeByDefault: false;
            name:StringConstants.modelReportPageItems
            Component.onCompleted: {
                console.log(" I am completed"+objectName)
            }
        },
//        DelegateModelGroup{
//            id:group6
//            objectName: StringConstants.modelNavigationItems;
//            includeByDefault: false;
//            name:StringConstants.modelNavigationItems
//            Component.onCompleted: {
//                console.log(" I am completed")
//            }
//        },
        DelegateModelGroup{
            id:group7
            objectName: StringConstants.modelTestPageControlItems;
            includeByDefault: false;
            name:StringConstants.modelTestPageControlItems
            Component.onCompleted: {
                console.log(" I am completed"+objectName)
            }
        },
        DelegateModelGroup{
            id:group8
            objectName: StringConstants.modelTestPageItems;
            includeByDefault: false;
            name:StringConstants.modelTestPageItems
            Component.onCompleted: {
                console.log(" I am completed"+objectName)
            }
        },
        DelegateModelGroup{
            id:group9
            objectName: StringConstants.modelHomeMainItems;
            includeByDefault: false;
            name:StringConstants.modelHomeMainItems
            Component.onCompleted: {
                console.log(" I am completed"+objectName)
            }
        }
    ]
    ActionDelegateModel{
        id:actionDelegateModel
    }
    Component.onCompleted: {
        console.log("items name is"+items.objectName)
        console.log("The value of items in the group is"+items.count)

        var rowCount = actionDelegateModel.count;
        for(var j = 0; j<items.count;j++)
        {
            console.log("Group names are"+j+allPageModel.groups.get(j).actionName)
        }
        console.log("The value of the count is"+rowCount)
        items.remove(0,rowCount);
        for(var i = 0;i<rowCount;i++)
        {

            var entry = actionDelegateModel.get(i);
            console.log("The value of the entry is"+entry.actionName)
            if(entry.homeMainAction !== undefined)
            {
                if(entry.homeMainAction === true)
                {
                    items.insert(entry,StringConstants.modelHomeMainItems);//"homeMainItems");
                }
            }
            if(entry.homeAction !== undefined)
            {
                if(entry.homeAction === true)
                {
                    items.insert(entry,StringConstants.modelHomeItems);//"homeItems");
                }
            }
            if(entry.existingPatientAction !== undefined)
            {
                if(entry.existingPatientAction === true)
                {
                    items.insert(entry,StringConstants.modelExistingPtItems);//"existingPatientItems");
                }
            }
            if(entry.newPatientAction !== undefined)
            {
                if(entry.newPatientAction === true)
                {
                    items.insert(entry,StringConstants.modelNewPatientItems);//"newPatientItems");
                }
            }
            if(entry.operatorPageAction !== undefined)
            {
                if(entry.operatorPageAction === true)
                {
                    items.insert(entry,StringConstants.modelOperatorPageItems);//"operatorPageItems");
                }
            }
            if(entry.reportPageAction !== undefined)
            {
                if(entry.reportPageAction === true)
                {
                    items.insert(entry,StringConstants.modelReportPageItems);//"reportPageItems");
                }
            }
            if(entry.testPageAction !== undefined)
            {
                if(entry.testPageAction === true)
                {
                    items.insert(entry,StringConstants.modelTestPageItems);//"testPageItems");
                }
            }
            if(entry.testPageControlAction !== undefined)
            {
                if(entry.testPageControlAction === true)
                {

                    items.insert(entry,StringConstants.modelTestPageControlItems);//"testPageItems");
                }
            }
//            if(entry.testPageNavItem !== undefined)
//            {
//                if(entry.testPageNavItem === true)
//                {
//                    items.insert(entry,StringConstants.modelNavigationItems)
//                    console.log("The value in items are"+items.get(i))
//                }
//            }
            //            if((entry.testAll !== undefined))
            //            {
            //                if((entry.testAll === true))
            //                {
            //                    items.insert(entry,StringConstants.modelDummy)
            //                }
            //            }

            //            if(entry.testPageNavItem !== undefined)
            //            {
            //                if(entry.testPageNavItem === true)
            //                {
            //                    console.log("The name of the entry is"+entry.actionName)
            //                   // items.insert(entry,StringConstants.modelTestPageNavigationItems);//"testPageItems");
            //                }
            //                else
            //                {
            //                    console.log("The name of the action is"+entry.actionName)
            //                }
            //            }
            //            else
            //            {
            //                console.log("The name of the action is"+entry.actionName)
            //            }
        }
        
    }

    
}
