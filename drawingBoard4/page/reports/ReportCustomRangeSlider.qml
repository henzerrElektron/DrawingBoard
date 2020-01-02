
import QtQuick 2.12
import QtQuick.Controls 2.12
import "."
import ApplicationConstants 1.0
/*!
   \qmltype ReportCustomRangeSlider
   \brief Contains the custom  range slider that is used throught the application
    This contains both from and two slider value which can be modified as desired

  This is used in ReportRangeSlider .
   \image tobeprovided.png

   \section1 Sample usage

   The usage of ReportCustomRangeSlider is demonstrated below
   \qml
            ReportCustomRangeSlider {
                id:slider1
                from: 0
                to: 0
                anchors.fill: parent
                first.onMoved: {
                }
                second.onMoved:{

                }
                Component.onCompleted: {
                    first.value = slider1.from
                    second.value = slider1.to
                }
            }
   \endqml

*/
RangeSlider {
    id: control
    first.value: 0.25
    second.value: 0.75
    background: Rectangle {
        x: control.leftPadding
        y: control.topPadding + control.availableHeight / 2 - height / 2
        implicitWidth: 200
        implicitHeight: 4
        width: control.availableWidth
        height: implicitHeight
        radius: 2
        color: StringConstants.actionBtnBackgroundColor
        //color: "#bdbebf"

        Rectangle {
            x: control.first.visualPosition * parent.width
            width: control.second.visualPosition * parent.width - x
            height: parent.height
            color:"orange" //"orange"
            // color: "#21be2b"
            radius: 2
        }
    }
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
        implicitWidth: 39//control.pressed ?26:39
        implicitHeight:39//control.pressed ?26:39
        radius: 13
        color:first.pressed ?StringConstants.actionBtnBackgroundColor:StringConstants.testPage_backgroundColor//first.pressed ?"green":"lightsteelblue" //first.pressed ? "#f0f0f0" : "#f6f6f6"
        //border.color: "#bdbebf"
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
        implicitWidth: 39//control.pressed ?26:39
        implicitHeight:39//control.pressed ?26:39
        radius: 13
        color: second.pressed ?StringConstants.actionBtnBackgroundColor:StringConstants.testPage_backgroundColor//second.pressed ?"green":"pink"// "#f0f0f0" : "#f6f6f6"
        //border.color: "#bdbebf"
        Label{
            id:value2Label
            anchors.centerIn: parent
            text: second.value.toFixed(0)//parseInt(second.value,10)//Math.round(second.value * 100)/100//second.value.toFixed(0)//.toString()//second.value.toString()
            font { family: OtherConstants.fontFamily; pixelSize: pixelSize; weight: Font.Bold; capitalization: Font.MixedCase }//StringConstants.barBackgroundColor
            onTextChanged:console.log(value2Label.text)

        }
    }
}
