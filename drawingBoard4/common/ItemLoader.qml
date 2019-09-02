import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Shapes 1.11
import QtQuick.Templates 2.5
import QtQuick.Layouts 1.12
import QtQuick.Extras 1.4
import QtQuick.Dialogs.qml 1.0
import QtQuick.Controls.Universal 2.0
import Qt.labs.calendar 1.0
import QtQuick.Controls.Material 2.0
import QtQuick.Controls 2.3
import Qt.labs.settings 1.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Shapes 1.11
import QtQml.Models 2.12
import "."

import ApplicationConstants 1.0

Loader {
    id:pageLoader
    signal pgLoad()
    signal pgInvokeSource(string source)
    signal pgInvokeIndex(int index)
    property bool loadedInfoOnce: false
    visible: false
    source:modelData.source
    onLoaded: {
        console.log(modelData.actionName)
        if(modelData.index === 1)
        {
            item.invokeIndex.connect(pageLoader.pgInvokeIndex)
            item.invokeSource.connect(pageLoader.pgInvokeSource)
        }
    }
    Component.onCompleted: {
        //item.invokeIndex.connect(pageLoader.pgInvokeIndex)
        //item.invokeSource.connect(pageLoader.pgInvokeSource)
    }
}
