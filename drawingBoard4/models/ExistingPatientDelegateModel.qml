import QtQuick 2.12
import QtQml.Models 2.12
import QtQuick.Controls 2.5
import ApplicationIntegerConstants 1.0
import ApplicationStringConstants 1.0
import ApplicationOtherConstants 1.0
DelegateModel{
    id:existingPatientModel
    model: actionModel
    delegate: actionDelegate
    groups: [
        DelegateModelGroup{
            includeByDefault: false
            name:"existingPatientItems"
        }
    ]
    filterOnGroup: "existingPatientItems"
    Component.onCompleted: {
        var rowCount = actionModel.count;
        items.remove(0,rowCount);
        for(var i = 0;i<rowCount;i++)
        {
            var entry = actionModel.get(i);
            if(entry.existingPatientAction !== undefined)
            {
                if(entry.existingPatientAction === true)
                {
                    items.insert(entry,"existingPatientItems");
                }
            }
        }
    }
}
