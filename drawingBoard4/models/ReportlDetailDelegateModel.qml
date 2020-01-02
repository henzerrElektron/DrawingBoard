import QtQuick 2.12
//import QtQuick.Controls 1.1
//import QtQuick.Window 2.0
import QtQml.Models 2.12
import "."
import ApplicationConstants 1.0
/*!
   \qmltype ReportlDetailDelegateModel
   \brief This contains the details of the reports

  This is used in the ReportDetailLabelGroup.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of ReportlDetailDelegateModel is demonstrated below
   \qml
    ReportlDetailDelegateModel {
        id: reportlDetailDelegateModel
    }
   \endqml

*/
DelegateModel {
    id:reportlDetailDelegateModel
    items.objectName: "ReportDetailDelegateModel"
    items.includeByDefault: false
    persistedItems.includeByDefault: false
    model: reportDetailModel
    groups: [
        DelegateModelGroup{
            id:group1
            objectName: StringConstants.report_PatientDetailModel;
            includeByDefault: false;
            name:StringConstants.report_PatientDetailModel
            Component.onCompleted: {
                console.log("I am completed"+objectName)
            }
        },
        DelegateModelGroup{
            id:group2
            objectName: StringConstants.report_PraticeDetailModel;
            includeByDefault: false;
            name:StringConstants.report_PraticeDetailModel
            Component.onCompleted: {
                console.log("I am completed"+objectName)
            }
        }
    ]

    ReportDetailModel{
        id:reportDetailModel
    }
    Component.onCompleted: {
        console.log("Items name is"+items.objectName)
        console.log("The value of items in the group is"+items.count)
        var rowCount = reportDetailModel.count;
        for(var j = 0; j<items.count;j++)
        {
            console.log("Group names are"+j+reportlDetailDelegateModel.groups.get(j).actionName)
        }
        console.log("The value of the count is"+rowCount)
        items.remove(0,rowCount);
        for(var i = 0;i<rowCount;i++)
        {

            var entry = reportDetailModel.get(i);
            console.log("The value of the entry is"+entry.actionName)
            if(entry.isPatient !== undefined)
            {
                if(entry.isPatient === true)
                {
                    items.insert(entry,StringConstants.report_PatientDetailModel)
                }
            }
            if(entry.isPratice !== undefined)
            {
                if(entry.isPratice === true)
                {
                    items.insert(entry,StringConstants.report_PraticeDetailModel)
                }
            }
        }
    }
}
