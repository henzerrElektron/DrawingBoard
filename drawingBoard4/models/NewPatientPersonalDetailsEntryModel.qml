import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Window 2.0
//import QtQml.Models 2.1
import "."
import "./../images/"
import ApplicationConstants 1.0
/*!
   \qmltype NewPatientPersonalDetailsEntryModel
   \brief This contains the personal details of the patient in a model

  This is used in the NewPatientPersonalDetailsEntryGroup.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of NewPatientPersonalDetailsEntryModel is demonstrated below
   \qml
    NewPatientPersonalDetailsEntryModel {
        id: newPatientPersonalDetailsEntryModel
    }
   \endqml

*/
ListModel {
    id:newPatientPersonalDetailEntryModel
    readonly property var  modelElements: [
//        {
//            actionName:StringConstants.lbl_npPatientTitle,
//            actionText:StringConstants.lbl_npPatientTitle,
//            type:StringConstants.labelItem,
//            isLabel:true,
//            isEntry:false,
//            comboItem:true,
//            isNewPatientPage:true,
//            labelOnTop:true,
//            index:1,
//        },
        {
            actionName:StringConstants.lbl_npPatientTitle,//StringConstants.lbl_npPatientTitleText,
            actionText:StringConstants.lbl_npPatientTitleValue,
            type:StringConstants.comboItem,
            isLabel:false,
            isEntry:true,
            comboItem:true,
            allItem:true,
            isNewPatientPage:true,
            dataModel:OtherConstants.modelTitle,
            validationText:StringConstants.txtValidatorWordsOnly,
            numberWordindex:IntegerConstants.wordOnly,
            inputHints:Qt.ImhUppercaseOnly|Qt.ImhLowercaseOnly,
            comboBoxTextRole:StringConstants.key,
            labelOnTop:true,
            hideBorderFlag:true,
            comboOrModelFlag:false,
            index:2,
        },
//        {
//            actionName:StringConstants.lbl_npPatientGender,
//            actionText:StringConstants.lbl_npPatientGender,
//            type:StringConstants.labelItem,
//            isLabel:true,
//            isEntry:false,
//            comboItem:true,
//            isNewPatientPage:true,
//            labelOnTop:true,
//            index:3,
//        },
        {
            actionName:StringConstants.lbl_npPatientGender,//StringConstants.lbl_npPatientGenderText,
            actionText:StringConstants.lbl_npPatientGenderValue,
            type:StringConstants.comboItem,
            isLabel:false,
            isEntry:true,
            comboItem:true,
            allItem:true,
            isNewPatientPage:true,
            dataModel:OtherConstants.modelGender,
            validationText:StringConstants.txtValidatorWordsOnly,
            numberWordindex:IntegerConstants.wordOnly,
            comboBoxTextRole:StringConstants.key,
            labelOnTop:true,
            hideBorderFlag:true,
            comboOrModelFlag:false,
            index:4,
        },
//        {
//            actionName:StringConstants.lbl_npSurName,
//            actionText:StringConstants.lbl_npSurName,
//            type:StringConstants.labelItem,
//            isLabel:true,
//            isEntry:false,
//            isNewPatientPage:true,
//            labelOnTop:true,
//            textItem:true,
//            index:5,
//        },
        {
            actionName:StringConstants.lbl_npSurName,//StringConstants.lbl_npSurNameText,
            actionText:StringConstants.lbl_npSurNameValue,
            type:StringConstants.textItem,
            isLabel:false,
            isEntry:true,
            textItem:true,
            allItem:true,
            isNewPatientPage:true,
            placeHolderTextItem:StringConstants.lbl_npRequestSurName,
            validationText:StringConstants.txtValidatorWordsOnly,
            numberWordindex:IntegerConstants.wordOnly,
            inputHints:Qt.ImhUppercaseOnly|Qt.ImhLowercaseOnly,
            labelOnTop:true,
            hideBorderFlag:true,
            comboOrModelFlag:false,
            index:6,
        },
//        {
//            actionName:StringConstants.lbl_npFirstName,
//            actionText:StringConstants.lbl_npFirstName,
//            type:StringConstants.labelItem,
//            isLabel:true,
//            isEntry:false,
//            textItem:true,
//            isNewPatientPage:true,
//            labelOnTop:true,
//            index:7,
//        },
        {
            actionName:StringConstants.lbl_npFirstName,//StringConstants.lbl_npFirstNameText,
            actionText:StringConstants.lbl_npFirstNameValue,
            type:StringConstants.textItem,
            isLabel:false,
            isEntry:true,
            textItem:true,
            allItem:true,
            isNewPatientPage:true,
            placeHolderTextItem:StringConstants.lbl_npRequestFirstName,
            validationText:StringConstants.txtValidatorWordsOnly,
            numberWordindex:IntegerConstants.wordOnly,
            inputHints:Qt.ImhUppercaseOnly|Qt.ImhLowercaseOnly,
            labelOnTop:true,
            hideBorderFlag:true,
            comboOrModelFlag:false,
            index:8,
        },
//        {
//            actionName:StringConstants.lbl_npMedicalReference,
//            actionText:StringConstants.lbl_npMedicalReference,
//            type:StringConstants.labelItem,
//            isLabel:true,
//            isEntry:false,
//            textItem:true,
//            isNewPatientPage:true,
//            //labelOnTop:true,
//            index:9,
//        },
        {
            actionName:StringConstants.lbl_npMedicalReference,//StringConstants.lbl_npMedicalReferenceText,
            actionText:StringConstants.lbl_npMedicalReferenceValue,
            type:StringConstants.textItem,
            isLabel:false,
            isEntry:true,
            textItem:true,
            allItem:true,
            isNewPatientPage:true,
            placeHolderTextItem:StringConstants.lbl_npRequestMedicalReference,
            validationText:StringConstants.txtValidatorWordsNumbersOnly,
            numberWordindex:IntegerConstants.numberWordOnly,
            inputHints:Qt.ImhUppercaseOnly|Qt.ImhLowercaseOnly|Qt.ImhDigitsOnly,
            labelOnTop:true,
            hideBorderFlag:true,
            comboOrModelFlag:false,
            index:10,
        },
//        {
//            actionName:StringConstants.lbl_npDOB,
//            actionText:StringConstants.lbl_npDOBLabel,
//            type:StringConstants.labelItem,
//            isLabel:true,
//            isEntry:false,
//            labelValueItem:true,
//            isNewPatientPage:true,
//            //labelOnTop:true,
//            index:11,
//        },
//        {
//            actionName:StringConstants.lbl_npDOBDay,
//            actionText:StringConstants.lbl_npDOBDayLabel,
//            type:StringConstants.labelItem,
//            isLabel:true,
//            isEntry:false,
//            comboItem:true,
//            isNewPatientPage:true,
//            //labelOnTop:true,
//            index:12,
//        },
//        {
//            actionName:StringConstants.lbl_npDOBDayText,
//            actionText:StringConstants.lbl_npDOBDayValue,
//            type:StringConstants.comboItem,
//            isLabel:false,
//            isEntry:true,
//            comboItem:true,
//            isNewPatientPage:true,
//           // placeHolderTextItem:StringConstants.lbl_npRequestMedicalReference,
//           // validationText:StringConstants.txtValidatorWordsNumbersOnly,
//            numberWordindex:IntegerConstants.numberOnly,
//            inputHints:Qt.ImhDigitsOnly,
//            labelOnTop:true,
//            hideBorderFlag:true,
//            comboOrModelFlag:false,
//            index:13,
//        },
//        {
//            actionName:StringConstants.lbl_npDOBMonth,
//            actionText:StringConstants.lbl_npDOBMonthLabel,
//            type:StringConstants.labelItem,
//            isLabel:true,
//            isEntry:false,
//            comboItem:true,
//            isNewPatientPage:true,
//            //labelOnTop:true,
//            index:14,
//        },
//        {
//            actionName:StringConstants.lbl_npDOBMonthText,
//            actionText:StringConstants.lbl_npDOBMonthValue,
//            type:StringConstants.comboItem,
//            isLabel:false,
//            isEntry:true,
//            comboItem:true,
//            isNewPatientPage:true,
//            //placeHolderTextItem:StringConstants.lbl_npRequestMedicalReference,
//            //validationText:StringConstants.txtValidatorWordsNumbersOnly,
//            numberWordindex:IntegerConstants.wordOnly,
//            inputHints:Qt.ImhUppercaseOnly|Qt.ImhLowercaseOnly,
//            labelOnTop:true,
//            hideBorderFlag:true,
//            comboOrModelFlag:false,
//            index:15,
//        },
//        {
//            actionName:StringConstants.lbl_npDOBYear,
//            actionText:StringConstants.lbl_npDOBYearLabel,
//            type:StringConstants.labelItem,
//            isLabel:true,
//            isEntry:false,
//            comboItem:true,
//            isNewPatientPage:true,
//            //labelOnTop:true,
//            index:16,
//        },
//        {
//            actionName:StringConstants.lbl_npDOBYearText,
//            actionText:StringConstants.lbl_npDOBYearValue,
//            type:StringConstants.comboItem,
//            isLabel:false,
//            isEntry:true,
//            comboItem:true,
//            isNewPatientPage:true,
//            //placeHolderTextItem:StringConstants.lbl_npRequestMedicalReference,
//            //validationText:StringConstants.txtValidatorWordsNumbersOnly,
//            numberWordindex:IntegerConstants.numberOnly,
//            inputHints:IntegerConstants.numberOnly,
//            labelOnTop:true,
//            hideBorderFlag:true,
//            comboOrModelFlag:false,
//            index:17,
//        },
//        {
//            actionName:StringConstants.lbl_npDOBAge,
//            actionText:StringConstants.lbl_npDOBAgeLabel,
//            type:StringConstants.labelItem,
//            isLabel:true,
//            isEntry:false,
//            textItem:true,
//            isNewPatientPage:true,
//            //labelOnTop:true,
//            index:16,
//        },
        {
            actionName:StringConstants.lbl_npDOBAge,//StringConstants.lbl_npDOBAgeText,
            actionText:StringConstants.lbl_npDOBAgeValue,
            type:StringConstants.dobItem,//textItem,
            isLabel:false,
            isEntry:false,
            dobItem:true,
            allItem:true,
            readonlyItem:true,
            isNewPatientPage:true,
            //placeHolderTextItem:StringConstants.lbl_npRequestMedicalReference,
            //validationText:StringConstants.txtValidatorWordsNumbersOnly,
            numberWordindex:IntegerConstants.numberOnly,
            inputHints:IntegerConstants.numberOnly,
            labelOnTop:true,
            hideBorderFlag:true,
            comboOrModelFlag:false,
            index:17,
        },
    ]
    Component.onCompleted: {
        modelElements.forEach(function(element)
        {
            console.log("The value of the element is"+element.actionName)
            newPatientPersonalDetailEntryModel.append(element)
        })
        console.log("The model elements are "+modelElements)
    }

}
