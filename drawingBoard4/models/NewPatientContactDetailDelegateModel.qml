import QtQuick 2.12
//import QtQuick.Controls 1.1
//import QtQuick.Window 2.0
import QtQml.Models 2.12
import "."
import ApplicationConstants 1.0

DelegateModel  {
    id:npContactDetailDelegateModel
    items.objectName: "NewPatientContactDetailDelegateModel"
    items.includeByDefault: false
    persistedItems.includeByDefault: false
    model: npContactDetailModel
    groups: [
        DelegateModelGroup{
            id:group1
            objectName: StringConstants.np_ContactDetailLabelModel;
            includeByDefault: false;
            name:StringConstants.np_ContactDetailLabelModel;
            Component.onCompleted: {
                console.log("I am completed"+objectName)
            }
        },
        DelegateModelGroup{
            id:group2
            objectName:StringConstants.np_ContactDetailTextModel;
            includeByDefault: false;
            name:StringConstants.np_ContactDetailTextModel;
            Component.onCompleted: {
                console.log("I am completed"+objectName)
            }
        },
        DelegateModelGroup{
            id:group3
            objectName: StringConstants.np_ContactDetailAllModel;
            includeByDefault: false;
            name:StringConstants.np_ContactDetailAllModel;
            Component.onCompleted: {
                console.log("I am completed"+objectName)
            }
        }
    ]
    NewPatientContactDetailModel{
        id:npContactDetailModel
    }
    Component.onCompleted: {
        console.log("Items name is"+items.objectName)
        console.log("The value of items in the group is"+items.count)
        var rowCount = model.count//npContactDetailModel.count// npContactDetailModel.count;
        for(var j = 0; j<items.count;j++)
        {
            console.log("Group names are"+j+npContactDetailDelegateModel.groups.get(j).actionName)
        }
        console.log("The value of the count is"+rowCount)
        items.remove(0,rowCount);
        for(var i = 0;i<rowCount;i++){
            var entry = npContactDetailModel.get(i);
            console.log("The value of the entry is"+entry.actionName)
            if(entry.allItem !== undefined)
            {
                if(entry.isLabel !== undefined)
                {
                    if((entry.isLabel === true)&&(entry.allItem === true))
                    {
                        items.insert(entry,StringConstants.np_ContactDetailLabelModel)
                        items.insert(entry,StringConstants.np_ContactDetailAllModel)
                    }
                }
                if(entry.isEntry !== undefined)
                {
                    if((entry.isEntry === true)&&(entry.allItem === true))
                    {
                        items.insert(entry,StringConstants.np_ContactDetailTextModel)
                        items.insert(entry,StringConstants.np_ContactDetailAllModel)
                    }
                }
            }
        }
    }


}
