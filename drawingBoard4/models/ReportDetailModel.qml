import QtQuick 2.12
//import QtQuick.Controls 1.1
//import QtQuick.Window 2.0
import QtQml.Models 2.12
import "."
import ApplicationConstants 1.0
/*!
   \qmltype ReportDetailModel
   \brief This contains the details of the reports

  This is used in the ReportDetailLabelGroup and in ReportDetailDelegateModel.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of ReportDetailModel is demonstrated below
   \qml
    ReportDetailModel {
        id: reportDetailModel
    }
   \endqml

*/
ListModel {
    id:reportDetailModel
    readonly property var modelElements:[
        {
            actionName:StringConstants.lbl_ReportForPatient,
            actionText:StringConstants.lbl_ReportForPatient,
            isLabel:true,
            isEntry:false,
            isPatient:true,
            isPratice:false,
            type:"labelItem",
            index:IntegerConstants.lbl_ReportForPatient
        },
        {
            actionName:StringConstants.lbl_rpPatientName,
            actionText:StringConstants.lbl_rpPatientName,
            isLabel:true,
            isEntry:false,
            isPatient:true,
            isPratice:false,
            type:"labelItem",
            index:IntegerConstants.lbl_rpPatientName
        },
        {
            actionName:StringConstants.lbl_ReportFrom,
            actionText:StringConstants.lbl_ReportFrom,
            isLabel:true,
            isEntry:false,
            isPatient:true,
            isPratice:false,
            type:"labelItem",
            index:IntegerConstants.lbl_ReportFrom
        },
        {
            actionName:StringConstants.lbl_rpFromDate,
            actionText:StringConstants.lbl_rpFromDate,
            isLabel:true,
            isEntry:false,
            isPatient:true,
            isPratice:false,
            type:"labelItem",
            index:IntegerConstants.lbl_rpFromDate
        },
        {
            actionName:StringConstants.lbl_reportTo,
            actionText:StringConstants.lbl_reportTo,
            isLabel:true,
            isEntry:false,
            isPatient:true,
            isPratice:false,
            type:"labelItem",
            index:IntegerConstants.lbl_reportTo
        },
        {
            actionName:StringConstants.lbl_rpToDate,
            actionText:StringConstants.lbl_rpToDate,
            isLabel:true,
            isEntry:false,
            isPatient:true,
            isPratice:false,
            type:"labelItem",
            index:IntegerConstants.lbl_rpToDate
        },
        {
            actionName:StringConstants.lbl_rpGenerate,
            actionText:StringConstants.lbl_rpGenerate,
            isLabel:true,
            isEntry:false,
            isPatient:true,
            isPratice:true,
            type:"labelItem",
            index:IntegerConstants.lbl_rpGenerate
        },
        {
            actionName:StringConstants.lbl_rpGenerateValue,
            actionText:StringConstants.lbl_rpGenerateValue,
            isLabel:true,
            isEntry:false,
            isPatient:true,
            isPratice:true,
            type:"labelItem",
            index:IntegerConstants.lbl_rpGenerateValue
        },
        {
            actionName:StringConstants.lbl_rpNoOfRETests,
            actionText:StringConstants.lbl_rpNoOfRETests,
            isLabel:true,
            isEntry:false,
            isPatient:true,
            isPratice:true,
            type:"labelItem",
            index:IntegerConstants.lbl_rpNoOfRETests
        },
        {
            actionName:StringConstants.lbl_rpNoOfRETestsValue,
            actionText:StringConstants.lbl_rpNoOfRETestsValue,
            isLabel:true,
            isEntry:false,
            isPatient:true,
            isPratice:true,
            type:"labelItem",
            index:IntegerConstants.lbl_rpNoOfRETestsValue
        },
        {
            actionName:StringConstants.lbl_rpNoOfLETests,
            actionText:StringConstants.lbl_rpNoOfLETests,
            isLabel:true,
            isEntry:false,
            isPatient:true,
            isPratice:true,
            type:"labelItem",
            index:IntegerConstants.lbl_rpNoOfLETests
        },
        {
            actionName:StringConstants.lbl_rpNoOfLETestsValue,
            actionText:StringConstants.lbl_rpNoOfLETestsValue,
            isLabel:true,
            isEntry:false,
            isPatient:true,
            isPratice:true,
            type:"labelItem",
            index:IntegerConstants.lbl_rpNoOfLETestsValue
        },
        {
            actionName:StringConstants.lbl_rpTotalTests,
            actionText:StringConstants.lbl_rpTotalTests,
            isLabel:true,
            isEntry:false,
            isPatient:false,
            isPratice:true,
            type:"labelItem",
            index:IntegerConstants.lbl_rpTotalTests
        },
        {
            actionName:StringConstants.lbl_rpTotalTestsValue,
            actionText:StringConstants.lbl_rpTotalTestsValue,
            isLabel:true,
            isEntry:false,
            isPatient:false,
            isPratice:true,
            type:"labelItem",
            index:IntegerConstants.lbl_rpTotalTestsValue
        },
        {
            actionName:StringConstants.lbl_rpNoOfCombinedTests,
            actionText:StringConstants.lbl_rpNoOfCombinedTests,
            isLabel:true,
            isEntry:false,
            isPatient:false,
            isPratice:true,
            type:"labelItem",
            index:IntegerConstants.lbl_rpNoOfCombinedTests
        },
        {
            actionName:StringConstants.lbl_rpNoOfCombinedTestsValue,
            actionText:StringConstants.lbl_rpNoOfCombinedTestsValue,
            isLabel:true,
            isEntry:false,
            isPatient:false,
            isPratice:true,
            type:"labelItem",
            index:IntegerConstants.lbl_rpNoOfCombinedTestsValue        }
    ]
    Component.onCompleted: {
        modelElements.forEach(function(element)
        {
            console.log("The value of the element is"+element.actionName)
            reportDetailModel.append(element)
        })
    }
}
