import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Window 2.0
//import QtQml.Models 2.1
import "."
import "./../images/"
import "./../validators/"
import ApplicationConstants 1.0
/*!
   \qmltype MedicalAndRiskFactorModel
   \brief This contains the medical and Risk factor model

  This is used in the NewPatientMedicalDetailsRiskFactorGroup.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of MedicalAndRiskFactorModel is demonstrated below
   \qml
    MedicalAndRiskFactorModel {
        id: medicalAndRiskFactorModel
    }
   \endqml

*/
ListModel {
    id:medicalRiskFactorModel
    readonly property var modelElements: [
        {
            actionName:StringConstants.np_pdActionNameRightFitted,
            actionText:StringConstants.np_pdActionTextRightFitted,
            hasKnownSwitch:false,
            hasYesNoSwitch:true,
            hasComboBox:true,
            defaultSwitchState:IntegerConstants.switchOff,
            comboBoxMetricOffText:StringConstants.lbl_yrs,
            comboBoxMetricONText:StringConstants.lbl_yrs,
            comboBoxMetricOnSubText:"",
            ismedicalDetailsPage:true,
            sliderMiNValue:IntegerConstants.minAge,
            sliderMaxValue:IntegerConstants.maxAge,
            tumblerFirstModel:IntegerConstants.maxAge,
            sliderModel:IntegerConstants.maxAge,
            defaultValue:IntegerConstants.numberZero,
            type:StringConstants.comboItem,
            index:1,
        },
        {
            actionName:StringConstants.np_pdActionNameLeftFitted,
            actionText:StringConstants.np_pdActionTextLeftFitted,
            hasKnownSwitch:false,
            hasYesNoSwitch:true,
            hasComboBox:true,
            defaultSwitchState:IntegerConstants.switchOff,
            comboBoxMetricOffText:StringConstants.lbl_yrs,
            comboBoxMetricONText:StringConstants.lbl_yrs,
            comboBoxMetricOnSubText:"",
            ismedicalDetailsPage:true,
            sliderMiNValue:IntegerConstants.minAge,
            sliderMaxValue:IntegerConstants.maxAge,
            tumblerFirstModel:IntegerConstants.maxAge,
            sliderModel:IntegerConstants.maxAge,
            defaultValue:IntegerConstants.numberZero,
            type:StringConstants.comboItem,
            index:2,
        },
        {
            actionName:StringConstants.np_pdActionNameDiabetic,
            actionText:StringConstants.np_pdActionTextDiabetic,
            hasKnownSwitch:false,
            hasYesNoSwitch:true,
            hasComboBox:false,
            defaultSwitchState:IntegerConstants.switchOff,
            ismedicalDetailsPage:true,
            type:StringConstants.comboItem,
            //comboBoxText:StringConstants.lbl_yrs,
            //defaultValue:IntegerConstants.numberZero,
            index:3,
        },
        {
            actionName:StringConstants.np_pdActionNameWeight,
            actionText:StringConstants.np_pdActionTextWeight,
            hasKnownSwitch:false,
            hasYesNoSwitch:true,
            hasComboBox:true,
            isDietStylePage:true,
            sliderMiNValue:IntegerConstants.minWeightMetricOFF,
            sliderMaxValue:IntegerConstants.maxWeightMetricOFF,
            tumblerFirstModel:IntegerConstants.maxWeightMetricOFF,
            sliderModel:IntegerConstants.maxWeightMetricOFF,
            //defaultSwitchState:IntegerConstants.switchOff,
            comboBoxMetricOffText:StringConstants.lbl_kg,
            comboBoxMetricONText:StringConstants.lbl_lbs,
            defaultValue:IntegerConstants.numberZero,
            comboBoxMetricOnSubText:"",
            type:StringConstants.comboItem,
            index:4,
        },
        {
            actionName:StringConstants.np_pdActionNameHeight,
            actionText:StringConstants.np_pdActionTextHeight,
            hasKnownSwitch:false,
            hasYesNoSwitch:true,
            hasComboBox:true,
            isDietStylePage:true,
            sliderMiNValue:IntegerConstants.minHeightMetricOFF,
            sliderMaxValue:IntegerConstants.maxHeightMetricOFF,
            tumblerFirstModel:IntegerConstants.maxHeightMetricOFF,
            sliderModel:IntegerConstants.maxHeightMetricOFF,
            //defaultSwitchState:IntegerConstants.switchOff,
            comboBoxMetricOffText:StringConstants.lbl_meter,
            comboBoxMetricONText:StringConstants.lbl_feet,
            defaultValue:IntegerConstants.numberZero,
            comboBoxMetricOnSubText:StringConstants.lbl_inch,
            type:StringConstants.comboItem,
            index:5,
        },
        {
            actionName:StringConstants.np_pdActionNameSmoker,
            actionText:StringConstants.np_pdActionTextSmoker,
            hasKnownSwitch:false,
            hasYesNoSwitch:true,
            hasComboBox:true,
            isDietStylePage:true,
            sliderMiNValue:IntegerConstants.minCigPerDay,
            sliderMaxValue:IntegerConstants.maxCigPerDay,
            tumblerFirstModel:IntegerConstants.maxCigPerDay,
            sliderModel:IntegerConstants.maxCigPerDay,
            //defaultSwitchState:IntegerConstants.switchOff,
            comboBoxMetricOffText:StringConstants.lbl_cigPerDay,
            comboBoxMetricONText:StringConstants.lbl_cigPerDay,
            defaultValue:IntegerConstants.numberZero,
            comboBoxMetricOnSubText:"",
            type:StringConstants.comboItem,
            index:6,
        },
        {
            actionName:StringConstants.np_pdActionNameAlcohol,
            actionText:StringConstants.np_pdActionTextAlcohol,
            hasKnownSwitch:false,
            hasYesNoSwitch:true,
            hasComboBox:true,
            isDietStylePage:true,
            sliderMiNValue:IntegerConstants.minAlcholPerDay,
            sliderMaxValue:IntegerConstants.maxAlcholPerDay,
            tumblerFirstModel:IntegerConstants.maxAlcholPerDay,
            sliderModel:IntegerConstants.maxAlcholPerDay,
            //defaultSwitchState:IntegerConstants.switchOff,
            comboBoxMetricOffText:StringConstants.lbl_unitsPerWeek,
            comboBoxMetricONText:StringConstants.lbl_unitsPerWeek,
            defaultValue:IntegerConstants.numberZero,
            comboBoxMetricOnSubText:"",
            type:StringConstants.comboItem,
            index:7,
        },
        {
            actionName:StringConstants.np_pdActionNameSupplementName,
            actionText:StringConstants.np_pdActionTextSupplementName,
            hasKnownSwitch:false,
            hasYesNoSwitch:true,
            hasComboBox:true,
            isDietStylePage:true,
            sliderMiNValue:IntegerConstants.minPortionsPerDay,
            sliderMaxValue:IntegerConstants.maxPortionsPerDay,
            tumblerFirstModel:IntegerConstants.maxPortionsPerDay,
            sliderModel:IntegerConstants.maxPortionsPerDay,
            //defaultSwitchState:IntegerConstants.switchOff,
            comboBoxMetricOffText:StringConstants.lbl_supplementPortions,
            comboBoxMetricONText:StringConstants.lbl_supplementPortions,
            defaultValue:IntegerConstants.numberZero,
            comboBoxMetricOnSubText:"",
            type:StringConstants.comboItem,
            index:8,
        },
        {
            actionName:StringConstants.np_pdActionNameAmdHistory,
            actionText:StringConstants.np_pdActionTextAmdHistory,
            hasKnownSwitch:true,
            hasYesNoSwitch:true,//this should be true only in this
            hasComboBox:false,
            isMedicalFactors:true,
            defaultSwitchState:IntegerConstants.switchOff,
            //comboBoxMetricOffText:StringConstants.lbl_supplementPortions,
            //comboBoxMetricONText:StringConstants.lbl_supplementPortions,
            //defaultValue:IntegerConstants.numberZero,
            //comboBoxMetricOnSubText:"",
            type:StringConstants.comboItem,
            index:9,
        },
        {
            actionName:StringConstants.sp_sdNameLuteinDosageName,
            actionText:StringConstants.sp_sdTextLuteinDosageName,
            hasKnownSwitch:false,
            hasYesNoSwitch:false,
            hasComboBox:true,
            isSupplementPage:true,
            hasTextOnly:false,
            sliderMiNValue:IntegerConstants.luteinDosageMinIntake,
            sliderMaxValue:IntegerConstants.luteinDosageMaxIntake,
            tumblerFirstModel:IntegerConstants.luteinDosageMaxIntake,
            sliderModel:IntegerConstants.luteinDosageMaxIntake,
            //defaultSwitchState:IntegerConstants.switchOff,
            comboBoxMetricOffText:StringConstants.lbl_luteinDosageMetric,
            comboBoxMetricONText:StringConstants.lbl_luteinDosageMetric,
            defaultValue:IntegerConstants.numberZero,
            comboBoxMetricOnSubText:"",
            type:StringConstants.comboItem,
            index:10,
        },
        {
            actionName:StringConstants.sp_sdNameIntakePerDay,
            actionText:StringConstants.sp_sdTextIntakePerDay,
            hasKnownSwitch:false,
            hasYesNoSwitch:false,
            hasComboBox:true,
            isSupplementPage:true,
            hasTextOnly:false,
            sliderMiNValue:IntegerConstants.luteinIntakeMin,
            sliderMaxValue:IntegerConstants.luteinIntakeMax,
            tumblerFirstModel:IntegerConstants.luteinIntakeMax,
            sliderModel:IntegerConstants.luteinIntakeMax,
            //defaultSwitchState:IntegerConstants.switchOff,
            comboBoxMetricOffText:StringConstants.lbl_luteinIntakeDays,
            comboBoxMetricONText:StringConstants.lbl_luteinIntakeDays,
            defaultValue:IntegerConstants.numberZero,
            comboBoxMetricOnSubText:"",
            type:StringConstants.comboItem,
            index:11,
        },
        {
            actionName:StringConstants.sp_sdNameSupplementDescription,
            actionText:StringConstants.sp_sdTextSupplementDescription,
            hasKnownSwitch:false,
            hasYesNoSwitch:false,
            hasComboBox:false,
            isSupplementPage:true,
            hasTextOnly:true,
            type:StringConstants.textItem,
            index:12,
        },
    ]
    Component.onCompleted: {
        modelElements.forEach(function(element)
        {
            console.log("The value of the element is"+element.actionName)
            medicalRiskFactorModel.append(element)
        })
        console.log("The model elements are "+modelElements)
    }
}
