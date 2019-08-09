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

    groups: [
        DelegateModelGroup{
            includeByDefault: false
            name:StringConstants.modelHomeMainItems
        },
        DelegateModelGroup{
            includeByDefault: false
            name:StringConstants.modelHomeItems
        },
        DelegateModelGroup{
            includeByDefault: false
            name:StringConstants.modelExistingPtItems
        },
        DelegateModelGroup{
            includeByDefault: false
            name:StringConstants.modelNewPatientItems
        },
        DelegateModelGroup{
            includeByDefault: false
            name:StringConstants.modelOperatorPageItems
        },
        DelegateModelGroup{
            includeByDefault: false
            name:StringConstants.modelReportPageItems
        },
        DelegateModelGroup{
            includeByDefault: false
            name:StringConstants.modelTestPageItems
        }
    ]
    Component.onCompleted: {
        var rowCount = actionDelegateModel.count;
        items.remove(0,rowCount);
        for(var i = 0;i<rowCount;i++)
        {
            var entry = actionDelegateModel.get(i);
            if(entry.homeMainAction !== undefined)
            {
                if(entry.homeMainAction === true)
                {
                    items.insert(entry,"homeMainItems");
                }
            }
            if(entry.homeAction !== undefined)
            {
                if(entry.homeAction === true)
                {
                    items.insert(entry,"homeItems");
                }
            }
            if(entry.existingPatientAction !== undefined)
            {
                if(entry.existingPatientAction === true)
                {
                    items.insert(entry,"existingPatientItems");
                }
            }
            if(entry.newPatientAction !== undefined)
            {
                if(entry.newPatientAction === true)
                {
                    items.insert(entry,"newPatientItems");
                }
            }
            if(entry.operatorPageAction !== undefined)
            {
                if(entry.operatorPageAction === true)
                {
                    items.insert(entry,"operatorPageItems");
                }
            }
            if(entry.reportPageAction !== undefined)
            {
                if(entry.reportPageAction === true)
                {
                    items.insert(entry,"reportPageItems");
                }
            }
            if(entry.testPageAction !== undefined)
            {
                if(entry.testPageAction === true)
                {
                    items.insert(entry,"testPageItems");
                }
            }
        }
        
    }
    
    
}
