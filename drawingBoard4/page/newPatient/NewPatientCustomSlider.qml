import QtQuick 2.12
import QtQuick.Controls 2.12
import "."
import ApplicationConstants 1.0
Slider {
    id:control
    value: 0.1

    background: Rectangle {
        x: control.leftPadding
        y: control.topPadding + control.availableHeight / 2 - height / 2
        implicitWidth: 200
        implicitHeight: 4
        width: control.availableWidth
        height: implicitHeight
        radius: 2
        color: "orange"
        //color: "#bdbebf"

        Rectangle {
            width: control.visualPosition * parent.width
            height: parent.height
            color: StringConstants.actionBtnBackgroundColor//"orange"
            // color: "#21be2b"
            radius: 2
        }
    }

    handle: Rectangle {
        x: control.leftPadding + control.visualPosition * (control.availableWidth - width)
        y: control.topPadding + control.availableHeight / 2 - height / 2
        implicitWidth: 39//control.pressed ?26:39
        implicitHeight:39//control.pressed ?26:39
        radius: 13
        color: control.pressed ?StringConstants.actionBtnBackgroundColor:StringConstants.testPage_backgroundColor
        // color: control.pressed ? "#f0f0f0" : "#f6f6f6"
        // border.color: "#bdbebf"
        Label{
            id:value1Label
            anchors.centerIn: parent
            text:value.toFixed(0) //parseInt(first.value,10)//.toFixed(0)//Math.round(first.value *100)/100//.toString()
            font: StringConstants.barBackgroundColor
            onTextChanged:console.log(value1Label.text)
        }
    }

}
