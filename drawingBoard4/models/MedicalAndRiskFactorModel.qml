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
            hasYesNoSwitch:false,
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
            index:1,
        },
        {
            actionName:StringConstants.np_pdActionNameLeftFitted,
            actionText:StringConstants.np_pdActionTextLeftFitted,
            hasYesNoSwitch:false,
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
            index:2,
        },
        {
            actionName:StringConstants.np_pdActionNameDiabetic,
            actionText:StringConstants.np_pdActionTextDiabetic,
            hasYesNoSwitch:false,
            hasComboBox:false,
            defaultSwitchState:IntegerConstants.switchOff,
            ismedicalDetailsPage:true,
            //comboBoxText:StringConstants.lbl_yrs,
            //defaultValue:IntegerConstants.numberZero,
            index:3,
        },
        {
            actionName:StringConstants.np_pdActionNameWeight,
            actionText:StringConstants.np_pdActionTextWeight,
            hasYesNoSwitch:false,
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
            index:4,
        },
        {
            actionName:StringConstants.np_pdActionNameHeight,
            actionText:StringConstants.np_pdActionTextHeight,
            hasYesNoSwitch:false,
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
            index:5,
        },
        {
            actionName:StringConstants.np_pdActionNameSmoker,
            actionText:StringConstants.np_pdActionTextSmoker,
            hasYesNoSwitch:false,
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
            index:6,
        },
        {
            actionName:StringConstants.np_pdActionNameAlcohol,
            actionText:StringConstants.np_pdActionTextAlcohol,
            hasYesNoSwitch:false,
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
            index:7,
        },
        {
            actionName:StringConstants.np_pdActionNameSupplementName,
            actionText:StringConstants.np_pdActionTextSupplementName,
            hasYesNoSwitch:false,
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
            index:8,
        },
        {
            actionName:StringConstants.np_pdActionNameAmdHistory,
            actionText:StringConstants.np_pdActionTextAmdHistory,
            hasYesNoSwitch:true,
            hasComboBox:false,
            isMedicalFactors:true,
            defaultSwitchState:IntegerConstants.switchOff,
            //comboBoxMetricOffText:StringConstants.lbl_supplementPortions,
            //comboBoxMetricONText:StringConstants.lbl_supplementPortions,
            //defaultValue:IntegerConstants.numberZero,
            //comboBoxMetricOnSubText:"",
            index:9,
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
