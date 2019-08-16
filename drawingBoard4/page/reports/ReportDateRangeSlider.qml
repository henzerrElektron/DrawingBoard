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
    id:mainGridRec
    anchors.fill: parent
    color: StringConstants.actionBtnBackgroundColor
    property alias dateSliderTo: slider1.sliderTo
    function incrementValue(value)
    {
        return value+1
    }

    signal setFromDate(int index)
    onSetFromDate: {
        slider1.changeFirstValue(incrementValue(index))
    }
    signal setToDate(int index)
    onSetToDate: {
        slider1.changeSecValue(incrementValue(index))
    }

    signal setFromMonth(int index)
    onSetFromMonth: {
        slider2.changeFirstValue(incrementValue(index))
    }
    signal setToMonth(int index)
    onSetToMonth: {
        slider2.changeSecValue(incrementValue(index))
    }
    signal setFromYear(int index)
    onSetFromYear: {
       var value =  IntegerConstants.dobStartDate+index
        slider3.changeFirstValue(incrementValue(value))
    }
    signal setToYear(int index)
    onSetToYear: {
        var value =  IntegerConstants.dobStartDate+index
        slider3.changeSecValue(incrementValue(value))
    }

    signal dateFromChange(int value)
    onDateFromChange: {
        console.log("The index is"+value)
    }

    signal dateToChange(int value)
    onDateToChange: {
        console.log("The index is"+value)
    }

    signal monthFromChange(int value)
    onMonthFromChange: {
        console.log("The index is"+value)
    }

    signal monthToChange(int value)
    onMonthToChange: {
        slider1.prevSecValue = slider1.secValue+1
        slider1.changeDayValue(value,slider3.secValue)
        console.log("The index is"+value)
    }
    signal calcYearFromChange(int value)
    signal calcYearToChange(int value)
    signal yearFromChange(int value)
    onYearFromChange: {
        var index = value - IntegerConstants.dobStartDate
        calcYearFromChange(index)
        console.log("The index is"+value)
    }

    signal yearToChange(int value)

    onYearToChange: {
        slider1.prevSecValue = slider1.secValue+1
        slider1.changeDayValue(slider2.secValue,value)
        var index = value - IntegerConstants.dobStartDate
        calcYearToChange(index)
        console.log("The index is"+value)
    }
    // Here January is 1 based
    //Day 0 is the last day in the previous month
    // Here January is 0 based
    // return new Date(year, month+1, 0).getDate();
    //var getDaysInMonth =
    function getDaysInMonth(month,year) {
        var dateValue =  new Date(year, month, 0).getDate();
        console.log("The datevalue is "+dateValue)
        return dateValue;
    }
    //signal first1RangeValue(int value)
    //signal first2RangeValue(int value)
    //signal sec1RangeValue(int value)
    //signal sec2RangeValue(int value)
    // signal third1RangeValue(int value)
    // signal third2RangeValue(int value)
    //    property alias slider1From: slider1.from
    //    property alias slider1To: slider1.to
    //    property alias slider1FirstValue: slider1.first.value
    //    property alias slider1SecondValue: slider1.second.value
    //    property alias slider2From: slider2.from
    //    property alias slider2To: slider2.to
    //    property alias slider2FirstValue: slider2.first.value
    //    property alias slider2SecondValue: slider2.second.value
    //    property alias slider3From: slider3.from
    //    property alias slider3To: slider3.to
    //    property alias slider3FirstValue: slider3.first.value
    //    property alias slider3SecondValue: slider3.second.value
    //    onSlider1FromChanged: {

    //    }
    //    onSlider1ToChanged: {

    //    }

    //    onSlider1FirstValueChanged: {

    //    }
    //    onSlider1SecondValueChanged: {

    //    }



    //    onSlider2FromChanged: {

    //    }
    //    onSlider2ToChanged: {

    //    }

    //    onSlider2FirstValueChanged: {

    //    }
    //    onSlider2SecondValueChanged: {

    //    }



    //    onSlider3FromChanged: {

    //    }
    //    onSlider3ToChanged: {

    //    }

    //    onSlider3FirstValueChanged: {

    //    }
    //    onSlider3SecondValueChanged: {

    //    }


    GridLayout{
        id:mainRec
        anchors.fill: parent
        rows: 3
        Rectangle{
            id:slider1Rec
            Layout.alignment: Qt.AlignTop
            Layout.row: IntegerConstants.rowCount1
            Layout.rowSpan: IntegerConstants.rowSpan1
            Layout.fillHeight: true
            Layout.fillWidth: true
            anchors.top:parent.top
            color: "transparent"
            ReportRangeSlider {
                id: slider1
                anchors.fill: parent
                labelText: "Day"
                sliderFrom:1
                sliderTo: getDaysInMonth(slider2.sliderTo,slider3.sliderTo)//31
                alterValues:true//false
                Component.onCompleted: {
                    slider1.first1RangeValue.connect(dateFromChange)
                    slider1.first2RangeValue.connect(dateToChange)
                }

            }
        }

        Rectangle{
            id:slider2Rec
            Layout.alignment: Qt.AlignVCenter
            Layout.row: IntegerConstants.rowCount2
            Layout.rowSpan: IntegerConstants.rowSpan1
            Layout.fillHeight: true
            Layout.fillWidth: true
            anchors.top: slider1.bottom
            color: "transparent"
            ReportRangeSlider {
                id: slider2
                anchors.fill: parent
                labelText: "Month"
                sliderFrom:1
                sliderTo: 12
                alterValues:true
                Component.onCompleted: {
                    slider2.first1RangeValue.connect(monthFromChange)
                    slider2.first2RangeValue.connect(monthToChange)

                }
            }
        }
        Rectangle{
            id:slider3Rec
            anchors.top: slider2.bottom
            Layout.alignment: Qt.AlignBottom
            Layout.row: IntegerConstants.rowCount3
            Layout.rowSpan: IntegerConstants.rowSpan1
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "transparent"
            ReportRangeSlider {
                id: slider3
                anchors.fill: parent
                labelText: "Year"
                sliderFrom:IntegerConstants.dobStartDate
                sliderTo:IntegerConstants.dobEndDate
                alterValues:false//false
                Component.onCompleted: {
                    slider3.first1RangeValue.connect(yearFromChange)
                    slider3.first2RangeValue.connect(yearToChange)            }
            }
        }
    }
}



/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
