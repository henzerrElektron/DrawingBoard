import QtQuick 2.12
//import QtQuick.Controls 1.1
//import QtQuick.Window 2.0
import QtQml.Models 2.12
import "."
import ApplicationConstants 1.0
/*!
   \qmltype NewPatientContactDetailModel
   \brief This contains the medical risk factor items in groups

  This is used in the NewPatientContalDetailGroup.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of NewPatientContactDetailModel is demonstrated below
   \qml
    NewPatientContactDetailModel {
        id: newPatientContactDetailModel
    }
   \endqml

*/
DelegateModel {
    id:medicalRiskFactorDelegateModel
    items.objectName: "MedicalRiskFactorDelegateModel"
    items.includeByDefault: false
    persistedItems.includeByDefault: false
    groups: [
        DelegateModelGroup{
            id:group1
            objectName: StringConstants.model_medicalDetails;
            includeByDefault: false;
            name:StringConstants.model_medicalDetails
            Component.onCompleted: {
                console.log("I am completed"+objectName)
            }
        },
        DelegateModelGroup{
            id:group2
            objectName: StringConstants.model_dietAndLifeStyle;
            includeByDefault: false;
            name:StringConstants.model_dietAndLifeStyle
            Component.onCompleted: {
                console.log("I am completed"+objectName)
            }
        },
        DelegateModelGroup{
            id:group3
            objectName: StringConstants.model_medicalFactors;
            includeByDefault: false;
            name:StringConstants.model_medicalFactors
            Component.onCompleted: {
                console.log("I am completed"+objectName)
            }
        },
        DelegateModelGroup{
            id:group4
            objectName:StringConstants.model_supplementationItems;
            includeByDefault: false;
            name: StringConstants.model_supplementationItems
            Component.onCompleted: {
                console.log("I am completed"+objectName)
            }
        },
        DelegateModelGroup{
            id:group5
            objectName: StringConstants.model_otherRiskFactorItems;
            includeByDefault: false;
            name:StringConstants.model_otherRiskFactorItems
            Component.onCompleted: {
                console.log("I am completed"+objectName)
            }
        }

    ]
    MedicalAndRiskFactorModel{
        id:medicalRiskFactorModel
    }
    Component.onCompleted: {
        console.log("Items name is"+items.objectName)
        console.log("The value of items in the group is"+items.count)
        var rowCount = medicalRiskFactorModel.count;
        for(var j = 0; j<items.count;j++)
        {
            console.log("Group names are"+j+medicalRiskFactorDelegateModel.groups.get(j).actionName)
        }
        console.log("The value of the count is"+rowCount)
        items.remove(0,rowCount);
        for(var i = 0;i<rowCount;i++)
        {
            var entry = medicalRiskFactorModel.get(i);
            console.log("The value of the entry is"+entry.actionName)
            if(entry.ismedicalDetailsPage !== undefined)
            {
                if(entry.ismedicalDetailsPage === true)
                {
                    items.insert(entry,StringConstants.model_medicalDetails)
                }
            }
            if(entry.isDietStylePage !== undefined)
            {
                if(entry.isDietStylePage === true)
                {
                    items.insert(entry,StringConstants.model_dietAndLifeStyle)
                }
            }
            if(entry.isMedicalFactors !== undefined)
            {
                if(entry.isMedicalFactors === true)
                {
                    items.insert(entry,StringConstants.model_medicalFactors)
                }
            }
            if(entry.isSupplementPage !== undefined)
            {
                if(entry.isSupplementPage === true)
                {
                    items.insert(entry,StringConstants.model_supplementationItems)
                }
            }
            if(entry.isOtherMedicalFactorsPage !== undefined)
            {
                if(entry.isOtherMedicalFactorsPage === true)
                {
                    items.insert(entry,StringConstants.model_otherRiskFactorItems)
                }
            }
        }
    }
}
