import QtQuick 2.12
//import QtQuick.Controls 1.1
//import QtQuick.Window 2.0
import QtQml.Models 2.12
import "."
import ApplicationConstants 1.0
/*!
   \qmltype AllDateModel
   \brief This contains all the report related items for ReportPraticeItems and ReportPatientItems

  This is used in the ReportPageDateBtnGroup and AllDateDelegateModel.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of AllDateModel is demonstrated below
   \qml
    AllDateModel {
        id: allDateModel
    }
   \endqml

*/
ListModel{
    id:allDateModel
    readonly property var modelElements: [
        {
            actionName:StringConstants.btn_reportAllRecord,
            dateFrom: DateAndLocaleConstants.dateString,
            dateTo: DateAndLocaleConstants.dateString,
            reportPatient:true,
            index:IntegerConstants.actionIndexAllRecord,
            //actionSignal:allRecordClicked(),
            actionConsole:function(){console.log("All record")}

        },
        {
            actionName:StringConstants.btn_reportPageDateToday,
            dateFrom: DateAndLocaleConstants.dateString,
            dateTo:DateAndLocaleConstants.dateString,
            reportPratice:true,
            index:IntegerConstants.actionIndexToday,
            //actionSignal:todayClicked(),
            actionConsole: function(){console.log("Today Clicked")},
        },
        {
            actionName:StringConstants.btn_reportPageDateThisWeek,
            dateFrom: DateAndLocaleConstants.dateString,
            dateTo:DateAndLocaleConstants.dateString,
            reportPratice:true,
            index:IntegerConstants.actionIndexThisWeek,
            //actionSignal:thisWeekClicked(),
            actionConsole: function(){console.log("This week clicked")},
        },
        {
            actionName:StringConstants.btn_reportPageDateThisMonth,
            dateFrom: DateAndLocaleConstants.dateString,
            dateTo:DateAndLocaleConstants.dateString,
            reportPratice:true,
            index:IntegerConstants.actionIndexThisMonth,
           // actionSignal:thisMonthClicked(),
            actionConsole: function(){console.log("This month clicked")},
        },
        {
            actionName:StringConstants.btn_reportPageDateSixMonths,
            dateFrom: DateAndLocaleConstants.dateString,
            dateTo:DateAndLocaleConstants.dateString,
            reportPatient:true,
            reportPratice:true,
            index:IntegerConstants.actionIndexSixMonth,
            //actionSignal:sixMonthClicked(),
            actionConsole: function(){console.log("6 months clicked")},
        },
        {
            actionName:StringConstants.btn_reportPageDateThisYear,
            dateFrom: DateAndLocaleConstants.dateString,
            dateTo:DateAndLocaleConstants.dateString,
            reportPatient:true,
            reportPratice:true,
            index:IntegerConstants.actionIndexThisYear,
            //actionSignal:thisYearClicked(),
            actionConsole: function(){console.log("This year clicked")},
        },
        {
            actionName:StringConstants.btn_oneYear,
            dateFrom: DateAndLocaleConstants.dateString,
            dateTo:DateAndLocaleConstants.dateString,
            index:IntegerConstants.actionIndexOneYear,
            //actionSignal:thisYearClicked(),
            actionConsole: function(){console.log("One year Clicked")},
        },
        {
            actionName:StringConstants.btn_twoyear,
            dateFrom: DateAndLocaleConstants.dateString,
            dateTo:DateAndLocaleConstants.dateString,
            reportPatient:true,
            index:IntegerConstants.actionIndexTwoYear,
            //actionSignal:thisYearClicked(),
            actionConsole: function(){console.log("Two year Clicked")},
        },
        {
            actionName:StringConstants.btn_threeYear,
            dateFrom: DateAndLocaleConstants.dateString,
            dateTo:DateAndLocaleConstants.dateString,
            reportPatient:true,
            index:IntegerConstants.actionIndexThreeYear,
            //actionSignal:thisYearClicked(),
            actionConsole: function(){console.log("Three year Clicked")},
        },
        {
            actionName:StringConstants.btn_reportPageDateCustoms,
            dateFrom: DateAndLocaleConstants.dateString,
            dateTo:DateAndLocaleConstants.dateString,
            reportPatient:true,
            reportPratice:true,
            index:IntegerConstants.actionIndexCustom,
            //actionSignal:thisYearClicked(),
            actionConsole: function(){console.log("Custom Date Clicked")},
        },

    ]
    Component.onCompleted: {

        modelElements.forEach(function(element)
        {
            console.log("The value of the element is"+element.actionName)
            allDateModel.append(element)
        })
    }

}
