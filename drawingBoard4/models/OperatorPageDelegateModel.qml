import QtQuick 2.12
import QtQml.Models 2.12
import QtQuick.Controls 2.5
import ApplicationConstants 1.0
import "."
DelegateModel{
    id:operatorPageModel
    model: actionModel
    delegate: actionDelegate
    groups: [
        DelegateModelGroup{
            includeByDefault: false
            name:"operatorPageItems"
        }
    ]
    filterOnGroup: "operatorPageItems"
    Component.onCompleted: {
        var rowCount = actionModel.count;
        items.remove(0,rowCount);
        for(var i = 0;i<rowCount;i++)
        {
            var entry = actionModel.get(i);
            if(entry.operatorPageAction !== undefined)
            {
                if(entry.operatorPageAction === true)
                {
                    items.insert(entry,"operatorPageItems");
                }
            }
        }
    }
}
