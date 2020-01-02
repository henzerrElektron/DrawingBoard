import QtQuick 2.12
//import QtQuick.Controls 1.1
//import QtQuick.Window 2.0
import QtQml.Models 2.12
import "."
import ApplicationConstants 1.0
/*!
   \qmltype NewPatientPersonalDetailDelegateModel
   \brief This contains the medical risk factor items in groups

  This is used in the NewPatientPersonalDetailGroup.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of NewPatientPersonalDetailDelegateModel is demonstrated below
   \qml
    NewPatientPersonalDetailDelegateModel {
        id: newPatientPersonalDetailDelegateModel
    }
   \endqml

*/
DelegateModel {
    id:npPersonalDetailDelegateModel
    items.objectName: "NewPatientPersonalDetailDelegateModel"
    items.includeByDefault: false
    persistedItems.includeByDefault: false
    model: newPatientPersonalDetailModel
    groups: [
        DelegateModelGroup{
            id:group1
            objectName: StringConstants.np_PersonalDetailExistingPage;
            includeByDefault: false;
            name:StringConstants.np_PersonalDetailExistingPage
            Component.onCompleted: {
                console.log("I am completed"+objectName)
            }
        },
        DelegateModelGroup{
            id:group2
            objectName: StringConstants.np_PersonalDetailTestPage;
            includeByDefault: false;
            name:StringConstants.np_PersonalDetailTestPage
            Component.onCompleted: {
                console.log("I am completed"+objectName)
            }
        }
    ]
    NewPatientPersonalDetailModel{
        id:newPatientPersonalDetailModel
    }
    Component.onCompleted: {
        console.log("Items name is"+items.objectName)
        console.log("The value of items in the group is"+items.count)
        var rowCount = newPatientPersonalDetailModel.count;
        for(var j = 0; j<items.count;j++)
        {
            console.log("Group names are"+j+npPersonalDetailDelegateModel.groups.get(j).actionName)
        }
        console.log("The value of the count is"+rowCount)
        items.remove(0,rowCount);
        for(var i = 0;i<rowCount;i++)
        {

            var entry = newPatientPersonalDetailModel.get(i);
            console.log("The value of the entry is"+entry.actionName)
            if(entry.isExistingPatientPage !== undefined)
            {
                if(entry.isExistingPatientPage === true)
                {
                    items.insert(entry,StringConstants.np_PersonalDetailExistingPage)
                }
            }
            if(entry.isTestPatientPage !== undefined)
            {
                if(entry.isTestPatientPage === true)
                {
                    items.insert(entry,StringConstants.np_PersonalDetailTestPage)
                }
            }
        }
    }
}
