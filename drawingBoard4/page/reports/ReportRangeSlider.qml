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
import "./../newPatient/"
import ApplicationConstants 1.0
Rectangle{
    id:mainRec
    //width: grid.width
    //height: grid.height
    anchors.fill: parent
    color: StringConstants.actionBtnBackgroundColor
    property bool alterValues: true
    property alias labelText: titleLbl.text
    property alias sliderFrom: slider1.from
    property alias sliderTo: slider1.to
    //property alias sliderSecPosition: slider1.second.position
    property int prevTo: 0
    property int firstValue: 0
    property int secValue: 0
    property int newFirstValue: 0
    function changeFirstValue(index){
       slider1.first.value = index
    }
    function changeSecValue(index)
    {
        slider1.second.value = index
    }

    // property real realSecValue: 0
    property int prevFirstValue: 0
    property int prevSecValue: 0
    //    onSliderFromValueChanged: {
    //        first1RangeValue(first.value.toFixed(0))
    //    }
    //    onSliderToValueChanged:{
    //        first2RangeValue(second.value.toFixed(0))
    //    }

    onSliderFromChanged: {
        var curValue = first.value.toFixed(0) -1
        console.log("The curvalue is"+curValue)
        //first1RangeValue(curValue.toFixed(0))
    }


    onSliderToChanged: {
        var curValue = second.value.toFixed(0) -1
        console.log("The curvalue is"+curValue)
        //first2RangeValue(curValue.toFixed(0))
    }

    //color: "transparent"
    signal first1RangeValue(int value)
    signal first2RangeValue(int value)
    signal changeDayValue(int month,int year)
    signal changeToPosition()
    function getDaysInMonth(month,year) {
        var dateValue =  new Date(year, month+1, 0).getDate();
        console.log("The datevalue is "+dateValue+year+month)
        return dateValue;
    }
    onChangeDayValue: {
        slider1.to = getDaysInMonth(month,year)
        changeToPosition()
        //slider1.second.value = slider1.prevSecValue
        //slider1.setValues(slider1.first.value,slider1.prevSecValue)
        // console.log("The values are"+slider1.second.value+"The other values are"+slider1.prevSecValue)
    }
    onChangeToPosition: {
        console.log("This is in a wrong position"+prevTo+"ok"+slider1.to)
//        if(slider1.to >= prevTo)
//        {
//            if(slider1.second.position === 1.0)
//            {
//                console.log("This is in a wrong position"+prevTo+"ok"+prevSecValue)
//                slider1.second.value = prevSecValue
//            }
//        }
    }

    GridLayout{
        id:grid
        //width: rec1.width+rec1MaxLabel.width+rec1MinLabel.width
        // height: rec1.height+title.height
        anchors.fill: parent
        rows: IntegerConstants.rowCount2
        columns: IntegerConstants.columnCount3
        Rectangle{
            id:title
            Layout.alignment: Qt.AlignTop|Qt.AlignHCenter
            //Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.row: 1
            Layout.rowSpan: 1
            Layout.column: 1
            Layout.columnSpan: 3
            ///Layout.preferredWidth: 25
            //Layout.minimumWidth: 25
            //Layout.maximumWidth: 25
            Layout.preferredHeight: 30//slider1.height
            Layout.minimumHeight: 30
            Layout.maximumHeight: 30
            color: "transparent"
            Label{
                id:titleLbl
                anchors.fill: parent
                //color: "transparent"
                text: "Label"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }

        }

        Rectangle{
            id:rec1MinLabel
            anchors.top: title.bottom
            //anchors.left: parent.left
            Layout.alignment: Qt.AlignTop|Qt.AlignLeft
            Layout.fillHeight: true
            //Layout.fillWidth: true
            Layout.row: 2
            Layout.column: 1
            Layout.columnSpan: 1
            Layout.preferredWidth: 25
            Layout.minimumWidth: 25
            Layout.maximumWidth: 25
            Layout.preferredHeight: 30//slider1.height
            Layout.minimumHeight: 30
            Layout.maximumHeight: 30
            color: "transparent"
            Label{
                id:dateMinLabel
                anchors.fill: parent
                //color: "transparent"
                text: sliderFrom.toString()
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle{
            id:rec1
            anchors.top: title.bottom
            //anchors.left: rec1MinLabel.right
            // anchors.right: rec1MaxLabel.right
            //anchors.horizontalCenter: parent.horizontalCenter
            Layout.alignment: Qt.AlignTop|Qt.AlignHCenter
            //Layout.fillHeight: true
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.row: 2
            Layout.rowSpan: 1
            Layout.column: 2
            Layout.columnSpan: 1
            Layout.preferredHeight: 30//slider1.height
            Layout.minimumHeight: 30
            Layout.maximumHeight: 30
            color: "transparent"
            ReportCustomRangeSlider {
                id:slider1
                from: 0
                to: 0
                //first.value: slider1.from//0//
                //second.value: slider1.to//0//
                anchors.fill: parent

                first.onMoved: {

                    firstValue = first.value.toFixed(0);
                    if(alterValues === true)
                    {
                        firstValue  = first.value.toFixed(0)-1 //-1
                        console.log("The curvalue is"+firstValue)
                    }
                    first1RangeValue(firstValue)//.toFixed(0)
                    // first1RangeValue(first.value.toFixed(0))
                    // console.log("first.value changed to " + first.value)
                    update()
                }
                second.onMoved:
                {
                    //realSecValue = second.value
                    prevTo = slider1.to.toFixed(0);
                    secValue = second.value.toFixed(0);
                    if(alterValues === true)
                    {
                        secValue = second.value.toFixed(0)-1 //-1
                        console.log("The curvalue is"+secValue)
                    }
                    // console.log("The sec value is"+secValue+"The real secvalue is"+realSecValue+"the real slider1 to value is"+slider1.to)
//                    if((secValue) === slider1.to)
//                    {
//                        slider1.second.position = 1.0
//                    }
                    console.log("The curvalue is"+secValue)
                    first2RangeValue(secValue)//.toFixed(0)
                    //first2RangeValue(second.value.toFixed(0))
                    //console.log("second value changed to "+second.value)
                    update()
                }
                Component.onCompleted: {
                    //slider1.setValues(slider1.from,slider1.to)
                    //first.value = slider1.from
                    //second.value = slider1.to
                    prevSecValue =  second.valueto.toFixed(0);
                    prevTo = slider1.to.toFixed(0);
                    //firstValue = first.value.toFixed(0);
                    //secValue = second.value.toFixed(0);
                }
            }
        }
        Rectangle{
            id:rec1MaxLabel
            anchors.top: title.bottom
            //anchors.right: parent.right
            Layout.fillHeight: true
            // Layout.fillWidth: true
            Layout.row: 2
            Layout.column: 3
            Layout.columnSpan: 1
            Layout.alignment: Qt.AlignTop|Qt.AlignRight
            Layout.preferredWidth: 25
            //Layout.preferredWidth: 25
            Layout.minimumWidth: 25
            Layout.maximumWidth: 25
            Layout.preferredHeight: 30//slider1.height
            Layout.minimumHeight: 30
            Layout.maximumHeight: 30
            color: "transparent"
            Label{
                anchors.fill: parent
                id:dateMaxLabel
                //color: "transparent"
                text: sliderTo.toString()//"Text"
                verticalAlignment: Text.AlignVCenter
            }
        }
    }
    //        Rectangle{
    //            id:rec2MinLabel
    //            Layout.alignment: Qt.AlignTop|Qt.AlignLeft
    //            Layout.fillHeight: true
    //            //Layout.fillWidth: true
    //            Layout.row: 2
    //            Layout.column: 1
    //            Layout.columnSpan: 1
    //            Layout.preferredWidth: 25
    //            Layout.minimumWidth: 25
    //            Layout.maximumWidth: 25
    //            Layout.preferredHeight: 30//slider1.height
    //            Layout.minimumHeight: 30
    //            Layout.maximumHeight: 30
    //            Label{
    //                id:monthMinLabel
    //                anchors.fill: parent
    //                text: "Text"
    //            }
    //        }
    //        Rectangle{
    //            id:rec2
    //            Layout.row: 2
    //            Layout.rowSpan: 1
    //            Layout.preferredHeight: 30//slider1.height
    //            Layout.minimumHeight: 30
    //            Layout.maximumHeight: 30
    //            Layout.fillWidth: true
    //            Layout.alignment: Qt.AlignTop|Qt.AlignHCenter
    //            Layout.column: 2
    //            Layout.columnSpan: 1
    //            color: "transparent"
    //            RangeSlider {
    //                id:slider22
    //                from: 1
    //                to: 100
    //                first.value: 25
    //                second.value: 75
    //                anchors.fill: parent
    //                first.onMoved: {
    //                    sec1RangeValue(first.value)
    //                    console.log("first.value changed to " + first.value)
    //                }
    //                second.onMoved:
    //                {
    //                    sec2RangeValue(second.value)
    //                    console.log("second value changed to "+second.value)
    //                }
    //            }
    //        }
    //        Rectangle{
    //            id:rec2MaxLabel
    //            Layout.fillHeight: true
    //            // Layout.fillWidth: true
    //            Layout.row: 2
    //            Layout.column: 3
    //            Layout.columnSpan: 1
    //            Layout.alignment: Qt.AlignTop|Qt.AlignRight
    //           // Layout.preferredWidth: 25
    //            Layout.preferredWidth: 25
    //            Layout.minimumWidth: 25
    //            Layout.maximumWidth: 25
    //            Layout.preferredHeight: 30//slider1.height
    //            Layout.minimumHeight: 30
    //            Layout.maximumHeight: 30
    //            Label{
    //                anchors.fill: parent
    //                id:monthMaxLabel
    //                text: "Text"
    //            }
    //        }
    //        Rectangle{
    //            id:rec3MinLabel
    //            Layout.alignment: Qt.AlignTop|Qt.AlignLeft
    //            Layout.fillHeight: true
    //            //Layout.fillWidth: true
    //            Layout.row: 3
    //            Layout.column: 1
    //            Layout.columnSpan: 1
    //            Layout.preferredWidth: 25
    //            Layout.minimumWidth: 25
    //            Layout.maximumWidth: 25
    //            Layout.preferredHeight: 30//slider1.height
    //            Layout.minimumHeight: 30
    //            Layout.maximumHeight: 30
    //            Label{
    //                id:yearMinLabel
    //                anchors.fill: parent
    //                text: "Text"
    //            }
    //        }
    //        Rectangle{
    //            id:rec3
    //            Layout.row: 3
    //            Layout.rowSpan: 1
    //            Layout.fillHeight: true
    //            Layout.preferredHeight: 30//slider1.height
    //            Layout.minimumHeight: 30
    //            Layout.maximumHeight: 30
    //            Layout.fillWidth: true
    //            Layout.column: 2
    //            Layout.columnSpan: 1
    //            Layout.alignment: Qt.AlignTop|Qt.AlignHCenter
    //            color: "transparent"
    //            RangeSlider {
    //                id:slider3
    //                from: 1
    //                to: 100
    //                first.value: 25
    //                second.value: 75
    //                anchors.fill: parent
    //                first.onMoved: {
    //                    third1RangeValue(first.value)
    //                    console.log("first.value changed to " + first.value)
    //                }
    //                second.onMoved:
    //                {
    //                    third2RangeValue(second.value)
    //                    console.log("second value changed to "+second.value)
    //                }
    //            }
    //        }
    //        Rectangle{
    //            id:rec3MaxLabel
    //            Layout.fillHeight: true
    //            // Layout.fillWidth: true
    //            Layout.row: 3
    //            Layout.column: 3
    //            Layout.columnSpan: 1
    //            Layout.alignment: Qt.AlignTop|Qt.AlignRight
    //            Layout.preferredWidth: 25
    //            //Layout.preferredWidth: 25
    //            Layout.minimumWidth: 25
    //            Layout.maximumWidth: 25
    //            Layout.preferredHeight: 30//slider1.height
    //            Layout.minimumHeight: 30
    //            Layout.maximumHeight: 30
    //            Label{
    //                anchors.fill: parent
    //                id:yearMaxLabel
    //                text: "Text"
    //            }
    //        }
}
