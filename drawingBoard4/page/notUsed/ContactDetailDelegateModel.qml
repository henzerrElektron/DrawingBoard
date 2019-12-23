import QtQuick 2.12
//import QtQuick.Controls 1.1
//import QtQuick.Window 2.0
import QtQml.Models 2.12
import "."
import ApplicationConstants 1.0

DelegateModel {
    id:contactDetailDelegateModel
    items.objectName: "ContactDetailDelegateModel"
    items.includeByDefault: false
    persistedItems.includeByDefault: false
    model: contactDetailModel
    groups: [
        DelegateModelGroup{
            id:group1
            objectName: StringConstants.model_contactLabeLAndText
            includeByDefault: false
            name:StringConstants.model_contactLabeLAndText
            Component.onCompleted: {
                for(var j = 0; j<group1.count;j++)
                {
                    var entry = group1.get(j);
                    console.log("The value of the item is"+entry.modelData.actionName)
                }
                console.log("I am completed"+objectName)
            }
        },
        DelegateModelGroup{
            id:group2
            objectName: StringConstants.model_ContactDetailLabel
            includeByDefault: false;
            name:StringConstants.model_ContactDetailLabel
            Component.onCompleted: {
                for(var j = 0; j<group2.count;j++)
                {
                    var entry = group2.get(j);
                    console.log("The value of the item is"+entry.modelData.actionName)
                }
                console.log("I am completed"+objectName)
            }
        },
        DelegateModelGroup{
            id:group3
            objectName: StringConstants.model_ContactDetailTxt;
            includeByDefault: false;
            name:StringConstants.model_ContactDetailTxt
            Component.onCompleted: {
                for(var j = 0; j<group3.count;j++)
                {
                    var entry = group3.get(j);
                    console.log("The value of the item is"+entry.modelData.actionName)
                }
                console.log("I am completed"+objectName)
            }
        }

    ]


    NewPatientContactDetailModel{
        id:contactDetailModel
    }
    Component.onCompleted: {
        console.log("Items name is"+items.objectName)
        console.log("The value of items in the group is"+items.count)
        var rowCount = contactDetailModel.count;
        for(var j = 0; j<items.count;j++)
        {
            console.log("Group names are"+j+contactDetailDelegateModel.groups.get(j).actionName)
        }
        console.log("The value of the count is"+rowCount)
        items.remove(0,rowCount);
        for(var i = 0;i<rowCount;i++)
        {

            var entry = contactDetailModel.get(i);
            console.log("The value of the entry is"+entry.actionName)
            if((entry.isLabel !== undefined)||(entry.isEntry !== undefined))
            {
                if((entry.isLabel === true)||(entry.isEntry === true))
                {
                    items.insert(entry,StringConstants.model_contactLabeLAndText)
                }
            }

            if(entry.isLabel !== undefined)
            {
                if(entry.isLabel === true)
                {
                    items.insert(entry,StringConstants.model_ContactDetailLabel)
                }
            }
            if(entry.isEntry !== undefined)
            {
                if(entry.isEntry === true)
                {
                    items.insert(entry,StringConstants.model_ContactDetailTxt)
                }
            }
        }
    }
}


