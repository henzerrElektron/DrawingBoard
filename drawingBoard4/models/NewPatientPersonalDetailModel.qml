import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Window 2.0
//import QtQml.Models 2.1
import "."
import "./../images/"
import ApplicationConstants 1.0
/*!
   \qmltype NewPatientPersonalDetailModel
   \brief This contains the medical risk factor items in groups

  This is used in the NewPatientPersonalDetailGroup.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of NewPatientPersonalDetailModel is demonstrated below
   \qml
    NewPatientPersonalDetailModel {
        id: newPatientPersonalDetailModel
    }
   \endqml

*/
ListModel {
    id:newPatientPersonalDetailModel
    readonly property var  modelElements: [
        {
            actionName:StringConstants.lbl_npPatientName,
            actionText:StringConstants.lbl_npPatientName+":",
            type:StringConstants.labelItem,//"labelItem",
            isLabel:true,
            isEntry:false,
            isExistingPatientPage:true,
            isTestPatientPage:true,
            //labelOnTop:true,
            index:IntegerConstants.actionIndexPatientNameLabel,
        },
        {
            actionName:StringConstants.lbl_npPatientNameText,
            actionText:StringConstants.lbl_npPatientNameValue,
            type:StringConstants.labelItem,
            isLabel:true,
            isEntry:false,
            isExistingPatientPage:true,
            isTestPatientPage:true,
            //labelOnTop:true,
            index:IntegerConstants.actionIndexPatientNameText,
        },
        {
            actionName:StringConstants.lbl_npMedicalReference,
            actionText:StringConstants.lbl_npMedicalReference+":",
            type:StringConstants.labelItem,
            isLabel:true,
            isEntry:false,
            isExistingPatientPage:true,
            isTestPatientPage:true,
            //labelOnTop:true,
            index:IntegerConstants.actionIndexMedRefLabel,
        },
        {
            actionName:StringConstants.lbl_npMedicalReferenceLabel,
            actionText:StringConstants.lbl_npMedicalReferenceValue,
            type:StringConstants.labelItem,
            isLabel:true,
            isEntry:false,
            isExistingPatientPage:true,
            isTestPatientPage:true,
            //labelOnTop:true,
            index:IntegerConstants.actionIndexMedRefText,
        },
        {
            actionName:StringConstants.lbl_npPatientAddress,
            actionText:StringConstants.lbl_npPatientAddress+":",
            type:StringConstants.labelItem,
            isLabel:true,
            isEntry:false,
            isExistingPatientPage:true,
            //labelOnTop:true,
            index:IntegerConstants.actionIndexAddressLabel,
        },
        {
            actionName:StringConstants.lbl_npPatientAddressLabel,
            actionText:StringConstants.lbl_npPatientAddressValue,
            type:StringConstants.labelItem,
            isLabel:true,
            isEntry:false,
            isExistingPatientPage:true,
            //labelOnTop:true,
            index:IntegerConstants.actionIndexAddressText,
        },
        {
            actionName:StringConstants.lbl_npBirthDate,
            actionText:StringConstants.lbl_npBirthDate+":",
            type:StringConstants.labelItem,
            isLabel:true,
            isEntry:false,
            isExistingPatientPage:true,
            isTestPatientPage:true,
            //labelOnTop:true,
            index:IntegerConstants.actionIndexBirthDateLabel,
        },
        {
            actionName:StringConstants.lbl_npBirthDateLabel,
            actionText:StringConstants.lbl_npBirthDateText,
            type:StringConstants.labelItem,
            isLabel:true,
            isEntry:false,
            isExistingPatientPage:true,
            isTestPatientPage:true,
            //labelOnTop:true,
            index:IntegerConstants.actionIndexBirthDateText,
        },
        {
            actionName:StringConstants.lbl_npPatientIOLFitted,
            actionText:StringConstants.lbl_npPatientIOLFitted+":",
            type:StringConstants.labelItem,
            isLabel:true,
            isEntry:false,
            isTestPatientPage:true,
            //labelOnTop:true,
            index:IntegerConstants.actionIndexPatientIolFittedLabel,
        },
        {
            actionName:StringConstants.lbl_npPatientIOLFittedLabel,
            actionText:StringConstants.lbl_npPatientIOLFittedText,
            type:StringConstants.labelItem,
            isLabel:true,
            isEntry:false,
            isTestPatientPage:true,
            //labelOnTop:true,
            index:IntegerConstants.actionIndexPatientIolFittedText,
        },
        {
            actionName:StringConstants.lbl_npPatientIOLAge,
            actionText:StringConstants.lbl_npPatientIOLAge+":",
            type:StringConstants.labelItem,
            isLabel:true,
            isEntry:false,
            isTestPatientPage:true,
            //labelOnTop:true,
            index:IntegerConstants.actionIndexPatientIolAgeLabel,
        },
        {
            actionName:StringConstants.lbl_npPatientIOLAgeLabel,
            actionText:StringConstants.lbl_npPatientIOLAgeText,
            type:StringConstants.labelItem,
            isLabel:true,
            isEntry:false,
            isTestPatientPage:true,
            //labelOnTop:true,
            index:IntegerConstants.actionIndexPatientIolAgeText,
        },
    ]
    Component.onCompleted: {
        modelElements.forEach(function(element)
        {
            console.log("The value of the element is"+element.actionName)
            newPatientPersonalDetailModel.append(element)
        })
        console.log("The model elements are "+modelElements)
    }
}
