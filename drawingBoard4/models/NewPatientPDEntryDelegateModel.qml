import QtQuick 2.12
//import QtQuick.Controls 1.1
//import QtQuick.Window 2.0
import QtQml.Models 2.12
import "."
import ApplicationConstants 1.0
/*!
   \qmltype NewPatientPDEntryDelegateModel
   \brief This contains the medical risk factor items in groups

  This is used in the NewPatientPersonalDetailEntryGroup.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of NewPatientPDEntryDelegateModel is demonstrated below
   \qml
    NewPatientPDEntryDelegateModel {
        id: newPatientPDEntryDelegateModel
    }
   \endqml

*/
DelegateModel {
    id:npPDEntryDelegateModel
    items.objectName: "NewPatientPDEntryDelegateModel"
    items.includeByDefault: false
    persistedItems.includeByDefault: false
    model: newPatientPersonalDetailEntryModel
    groups: [
        DelegateModelGroup{
            id:group1
            objectName: StringConstants.comboBoxItemModel;
            includeByDefault: false;
            name:StringConstants.comboBoxItemModel
            Component.onCompleted: {
                console.log("I am completed"+objectName)
            }
        },
        DelegateModelGroup{
            id:group2
            objectName: StringConstants.textBoxItemsModel;
            includeByDefault: false;
            name:StringConstants.textBoxItemsModel
            Component.onCompleted: {
                console.log("I am completed"+objectName)
            }
        },
        DelegateModelGroup{
            id:group3
            objectName: StringConstants.doBItemModel;
            includeByDefault: false;
            name:StringConstants.doBItemModel;
            Component.onCompleted: {
                console.log("I am completed"+objectName)
            }
        }

    ]
    NewPatientPersonalDetailsEntryModel{
        id:newPatientPersonalDetailEntryModel
    }
    Component.onCompleted: {
        console.log("Items name is"+items.objectName)
        console.log("The value of items in the group is"+items.count)
        var rowCount = newPatientPersonalDetailEntryModel.count;
        for(var j = 0; j<items.count;j++)
        {
            console.log("Group names are"+j+npPDEntryDelegateModel.groups.get(j).actionName)
        }
        console.log("The value of the count is"+rowCount)
        items.remove(0,rowCount);
        for(var i = 0;i<rowCount;i++)
        {

            var entry = newPatientPersonalDetailEntryModel.get(i);
            console.log("The value of the entry is"+entry.actionName)
            if(entry.isNewPatientPage !== undefined)
            {
                if(entry.isNewPatientPage === true)
                {
                    if(entry.comboItem !== undefined)
                    {
                        if(entry.comboItem === true)
                        {
                            items.insert(entry,StringConstants.comboBoxItemModel)
                        }
                    }
                    if(entry.textItem !== undefined)
                    {
                        if(entry.textItem === true)
                        {
                            items.insert(entry,StringConstants.textBoxItemsModel)
                        }
                    }
                    if(entry.dobItem !== undefined)
                    {
                        if(entry.dobItem === true)
                        {
                            items.insert(entry,StringConstants.doBItemModel)
                        }
                    }
                }
            }
        }
    }
}
