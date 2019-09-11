import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Shapes 1.11
import QtQuick.Templates 2.5
import QtQuick.Layouts 1.3
import QtQuick.Extras 1.4
import QtQuick.Dialogs.qml 1.0
import QtQuick.Controls.Universal 2.0
import Qt.labs.calendar 1.0
import QtQuick.Controls.Material 2.0
import QtQuick.Controls 2.3
import Qt.labs.settings 1.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Shapes 1.11
import "."
import "./../../images/"
import "./../../delegates/"
import "./../../models/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0

Tumbler {
    id: colTumbler
    property alias colTumblerModel: colTumbler.model
    property alias colTumblerDelegate: colTumbler.delegate
    signal colTumblerValue(int index)
    signal firstDialValue(int index)
    signal firstSliderValue(int value)
    onFirstDialValue: {
        colTumbler.currentIndex = index
    }
    onFirstSliderValue: {
        console.log("The value is"+value)
        colTumbler.currentIndex = value
    }
    anchors.fill: parent
    //                    background: Rectangle{
    //                        anchors.fill: parent
    //                        color:"pink"
    //                    }
    model: colorModel
    delegate: colordelegateComponent
    visibleItemCount: count%2 === 0?visibleItemCount+1:visibleItemCount
    wheelEnabled: true
    onModelChanged: {
        console.log("The model has changed")
    }
    onCurrentIndexChanged: {
        colTumblerValue(currentIndex)
    }
    Component {
        id: appHighlight
        Rectangle { color:colorModel.get(pathView.currentIndex).value }
    }
    contentItem: PathView {
        id: pathView
        width: colTumbler.width
        height: colTumbler.height
        model: colTumbler.model
        delegate: colTumbler.delegate
        //clip: true
        pathItemCount: colTumbler.visibleItemCount + 1
        preferredHighlightBegin: 0.5
        preferredHighlightEnd: 0.5
        dragMargin: width / 2
        //highlight: appHighlight
        path: Path {
            startX: -pathView.delegateWidth / 2//pathView.width / 2
            startY: pathView.height / 4//-pathView.delegateHeight / 2
            PathLine {
                x: pathView.pathItemCount * pathView.delegateWidth - pathView.delegateWidth / 2//pathView.width / 2
                y: pathView.height / 4//pathView.pathItemCount * pathView.delegateHeight - pathView.delegateHeight / 2
            }
        }

        property real delegateHeight: colTumbler.availableHeight / colTumbler.visibleItemCount
        property real delegateWidth: colTumbler.availableWidth/colTumbler.visibleItemCount
    }


}
