
import QtQuick 2.12
import QtQuick.Controls 2.12

RangeSlider {
    id: control
    first.value: 0.25
    second.value: 0.75

//    background: Rectangle {
//        x: control.leftPadding
//        y: control.topPadding + control.availableHeight / 2 - height / 2
//        implicitWidth: 200
//        implicitHeight: 4
//        width: control.availableWidth
//        height: implicitHeight
//        radius: 2
//        color: "#bdbebf"

//        Rectangle {
//            x: control.first.visualPosition * parent.width
//            width: control.second.visualPosition * parent.width - x
//            height: parent.height
//            color: "#21be2b"
//            radius: 2
//        }
//    }

    first.handle: Rectangle {
        x: control.leftPadding + first.visualPosition * (control.availableWidth - width)
        y: control.topPadding + control.availableHeight / 2 - height / 2
        implicitWidth: 26
        implicitHeight: 26
        radius: 13
        color: first.pressed ? "#f0f0f0" : "#f6f6f6"
        border.color: "#bdbebf"
        Label{
            id:value1Label
            anchors.centerIn: parent
            text:first.value.toFixed(0) //parseInt(first.value,10)//.toFixed(0)//Math.round(first.value *100)/100//.toString()
            onTextChanged:console.log(value1Label.text)


        }
    }

    second.handle: Rectangle {
        x: control.leftPadding + second.visualPosition * (control.availableWidth - width)
        y: control.topPadding + control.availableHeight / 2 - height / 2
        implicitWidth: 26
        implicitHeight: 26
        radius: 13
        color: second.pressed ? "#f0f0f0" : "#f6f6f6"
        border.color: "#bdbebf"
        Label{
            id:value2Label
           anchors.centerIn: parent

            text: second.value.toFixed(0)//parseInt(second.value,10)//Math.round(second.value * 100)/100//second.value.toFixed(0)//.toString()//second.value.toString()
            onTextChanged:console.log(value2Label.text)
        }
    }
}
