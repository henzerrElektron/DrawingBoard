import QtQuick 2.12
//import QtQuick.Controls 1.1
//import QtQuick.Window 2.0
import QtQml.Models 2.12
import "."
import ApplicationConstants 1.0

DelegateModel {
    id: allDateDelegateModel
    items.objectName: "AllDateDelegateModel"
    items.includeByDefault: false
    persistedItems.includeByDefault: false
    model: allDateModel
    groups: [
        DelegateModelGroup{
            id:group1
            objectName: StringConstants.modelReportPraticeItems;
            includeByDefault: false
            name:StringConstants.modelReportPraticeItems
            Component.onCompleted: {
                console.log("I am completed"+objectName)
            }
        },
        DelegateModelGroup{
            id:group2
            objectName: StringConstants.modelReportPatientItems;
            includeByDefault: false
            name: StringConstants.modelReportPatientItems
            Component.onCompleted: {
                console.log("I am completed"+objectName)
            }
        }

    ]
    AllDateModel{
        id:allDateModel
    }
    Component.onCompleted: {
        console.log("items name is"+items.objectName)
        console.log("The value of items in the group is"+items.count)
        var rowCount = allDateModel.count;
        for(var j = 0; j<items.count;j++)
        {
            console.log("Group names are"+j+allDateDelegateModel.groups.get(j).actionName)
        }
        console.log("The value of the count is"+rowCount)
        items.remove(0,rowCount);
        for(var i = 0;i<rowCount;i++)
        {
            var entry = allDateModel.get(i);
            console.log("The value of the entry is"+entry.actionName)
            if(entry.reportPratice !== undefined)
            {
                if(entry.reportPratice === true)
                {
                    items.insert(entry,StringConstants.modelReportPraticeItems);//"homeMainItems");
                }
            }
            if(entry.reportPatient !== undefined)
            {
                if(entry.reportPatient === true)
                {
                    items.insert(entry,StringConstants.modelReportPatientItems);//"homeMainItems");
                }
            }
        }
    }
}
