import QtQuick 2.12
//import QtQuick.Controls 1.1
//import QtQuick.Window 2.0
import QtQml.Models 2.12
import "."
import ApplicationConstants 1.0

DelegateModel {
    id:supplemenationDelegateModel
    items.objectName: "SupplementationDelegateModel"
    items.includeByDefault: false
    persistedItems.includeByDefault: false
    groups: [
        DelegateModelGroup{
            id:group1
            objectName: StringConstants.model_supplementationDosageDetails;
            includeByDefault: false;
            name:StringConstants.model_supplementationDosageDetails
            Component.onCompleted: {
                console.log("I am completed"+objectName)
            }
        },
        DelegateModelGroup{
            id:group2
            objectName: StringConstants.model_supplementationDosageNotes;
            includeByDefault: false;
            name: StringConstants.model_supplementationDosageNotes
            Component.onCompleted: {
                console.log("I am completed"+objectName)
            }
        }
    ]
    SupplementModel{
        id:supplementModel
    }
    Component.onCompleted: {
        console.log("Items name is"+items.objectName)
        console.log("The value of items in the group is"+items.count)
        var rowCount = supplementModel.count
        for(var j = 0; j<items.count;j++)
        {
            console.log("Group names are"+j+supplemenationDelegateModel.groups.get(j).actionName)
        }
        console.log("The value of the count is"+rowCount)
        items.remove(0,rowCount);
        for(var i = 0;i<rowCount;i++)
        {
            var entry = supplementModel.get(i);
            console.log("The value of the entry is"+entry.actionName)
            if(entry.hasComboBox !== undefined)
            {
                if(entry.hasComboBox === true)
                {
                    items.insert(entry,StringConstants.model_supplementDosageNameIntakeDetails)
                }
            }
            if(entry.hasTextOnly !== undefined)
            {
                if(entry.hasTextOnly === true)
                {
                    items.insert(entry,StringConstants.model_supplementDosageNotesDetails)
                }
            }
        }
    }
}
