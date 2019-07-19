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
import QtQuick.Extras 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls 2.5
import "."
import "./../../images/"
import "./../../delegates/"
import "./../../models/"
import ApplicationContstants 1.0
Rectangle {
    width: frame.implicitWidth + 10
    height: frame.implicitHeight + 10
    property alias firstTumblerModel: firstTumbler.model
    property alias firstTumblerDelegate: firstTumbler.delegate
    property alias secTumblerModel: secTumbler.model
    property alias thirdTumblerModel: thirdTumbler.model
    property alias firstTumblerVisibility: firstTumbler.visible
    property alias secTumblerVisibility: secTumbler.visible
    property alias thirdTumblerVisibility: thirdTumbler.visible
    property bool numberOrColorDelegate: false
    signal firstTumblerValue(int index)
    signal firstDialValue(int index)
    signal firstSliderValue(int value)
    onFirstDialValue: {
        firstTumbler.currentIndex = index
    }
    onFirstSliderValue: {
        console.log("The value is"+value)
        firstTumbler.currentIndex = value
    }


    function formatText(count, modelData) {
        //var data = count === 12 ? modelData + 1 : modelData;
        ///var newData = name
        //console.log("NewData"+newData)
        var data = count === 12 ? modelData + 1 : modelData;
        return data.toString().length < 2 ? "0" + data : data;
    }

    FontMetrics {
        id: fontMetrics
    }

    DelegateComponent {
        id: delegateComponent
    }
    ColordelegateComponent {
        id: colordelegateComponent
    }

    Frame {
        id: frame
        padding: 0
        anchors.centerIn: parent

        Row {
            id: row

            Tumbler {
                id: firstTumbler
                //                anchors.bottom: parent.bottom
                //                anchors.bottomMargin: 10
                //                anchors.top: parent.top
                //                anchors.topMargin: 10
                delegate: numberOrColorDelegate?colordelegateComponent:delegateComponent
                wheelEnabled: true
                onModelChanged: {
                    console.log("The model has changed")
                }
                onCurrentIndexChanged: {
                    firstTumblerValue(currentIndex)
                }




            }

            Tumbler {
                id: secTumbler
                //                anchors.bottom: parent.bottom
                //                anchors.bottomMargin: 10
                //                anchors.top: parent.top
                //                anchors.topMargin: 10
                delegate: delegateComponent
                wheelEnabled: true
                onModelChanged: {
                    console.log("The model has changed")
                }
            }

            Tumbler {
                id: thirdTumbler
                //                anchors.bottom: parent.bottom
                //                anchors.bottomMargin: 10
                //                anchors.top: parent.top
                //                anchors.topMargin: 10
                delegate: delegateComponent
                wheelEnabled: true

                onModelChanged: {
                    console.log("The model has changed")
                }
            }
        }
    }
}
