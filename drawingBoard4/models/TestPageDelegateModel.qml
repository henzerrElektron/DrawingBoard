import QtQuick 2.12
import QtQml.Models 2.12
import QtQuick.Controls 2.5
DelegateModel{
    id:testPageModel
    model: actionModel
    delegate: actionDelegate
    groups: [
        DelegateModelGroup{
            includeByDefault: false
            name:"testPageItems"
        }
    ]
    filterOnGroup: "testPageItems"
    Component.onCompleted: {
        var rowCount = actionModel.count;
        items.remove(0,rowCount);
        for(var i = 0;i<rowCount;i++)
        {
            var entry = actionModel.get(i);
            if(entry.testPageAction !== undefined)
            {
                if(entry.testPageAction === true)
                {
                    items.insert(entry,"testPageItems");
                }
            }
        }
    }
}
