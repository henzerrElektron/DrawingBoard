import QtQuick 2.0
//Need to think of comibining this with either risk factor model or Medical Detail model
ListModel {
    id:supplementRiskFactorModel
    readonly property var modelElements: [
        {
            actionName:StringConstants.sp_sdNameLuteinDosageName,
            actionText:StringConstants.sp_sdTextLuteinDosageName,
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
            index:1,
        },
        {
            actionName:StringConstants.sp_sdNameIntakePerDay,
            actionText:StringConstants.sp_sdTextIntakePerDay,
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
            index:2,
        },
        {
            actionName:StringConstants.sp_sdNameSupplementDescription,
            actionText:StringConstants.sp_sdTextSupplementDescription,
            hasYesNoSwitch:false,
            hasComboBox:false,
            isSupplementPage:true,
            hasTextOnly:true,
            sliderMiNValue:IntegerConstants.minCigPerDay,
            sliderMaxValue:IntegerConstants.maxCigPerDay,
            tumblerFirstModel:IntegerConstants.maxCigPerDay,
            sliderModel:IntegerConstants.maxCigPerDay,
            //defaultSwitchState:IntegerConstants.switchOff,
            comboBoxMetricOffText:StringConstants.lbl_cigPerDay,
            comboBoxMetricONText:StringConstants.lbl_cigPerDay,
            defaultValue:IntegerConstants.numberZero,
            comboBoxMetricOnSubText:"",
            index:3,
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
