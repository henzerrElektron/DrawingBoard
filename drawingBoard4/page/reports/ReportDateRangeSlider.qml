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
    anchors.left: parent.left
    anchors.right: parent.right
    //anchors.fill: parent
    height: mainRec.height
    //color: "black"
    color: StringConstants.actionBtnBackgroundColor
    property alias dateSliderTo: sliderDay.sliderTo
    property alias sliderDayVisible: slider1Rec.visible
    onSliderDayVisibleChanged: {
        sliderDay.visible = sliderDayVisible
    }

    property alias sliderMonthVisible: slider2Rec.visible
    onSliderMonthVisibleChanged: {
        sliderMonth.visible = sliderMonthVisible
    }

    property alias sliderYearVisible: slider3Rec.visible
    onSliderYearVisibleChanged: {
        sliderYear.visible = sliderYearVisible
    }

    function incrementValue(value)
    {
        return value+1
    }

    signal setFromDate(int index)
    onSetFromDate: {
        sliderDay.changeFirstValue(incrementValue(index))
    }
    signal setToDate(int index)
    onSetToDate: {
        sliderDay.changeSecValue(incrementValue(index))
    }

    signal setFromMonth(int index)
    onSetFromMonth: {
        sliderMonth.changeFirstValue(incrementValue(index))
    }
    signal setToMonth(int index)
    onSetToMonth: {
        sliderMonth.changeSecValue(incrementValue(index))
    }
    signal setFromYear(int index)
    onSetFromYear: {
        var value =  IntegerConstants.dobStartDate+index
        sliderYear.changeFirstValue(incrementValue(value))
        dateFromChange(sliderDay.firstValue)
        dateToChange(sliderDay.secValue)
    }


    signal setToYear(int index)
    onSetToYear: {
        var value =  IntegerConstants.dobStartDate+index
        sliderYear.changeSecValue(incrementValue(value))

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
        dateFromChange(sliderDay.firstValue)
        dateToChange(sliderDay.secValue)
        console.log("The index is"+value)
        console.log("The index is"+value)
    }

    signal monthToChange(int value)
    onMonthToChange: {
        dateFromChange(sliderDay.firstValue)
        dateToChange(sliderDay.secValue)
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
        sliderDay.prevSecValue = sliderDay.secValue+1
        sliderDay.changeDayValue(sliderMonth.secValue,value)
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
    function checkEqualYear(index){
        console.log("This index is not used"+index)
        if(sliderYear.firstValue === sliderYear.secValue)
        {
            if(sliderMonthVisible === false)
            {
                sliderMonthVisible = true
                sliderMonth.visible = true
            }
        }
        else
        {
            if(sliderMonthVisible === true)
            {
                sliderMonthVisible  = false
                sliderMonth.visible = false
                sliderDayVisible = false
                sliderDay.visible = false
            }
        }
    }
    function checkEqualMonth(index)
    {
        console.log("This index is not used"+index)
        if(sliderMonth.firstValue === sliderMonth.secValue)
        {
            if(sliderDayVisible === false)
            {
                sliderDayVisible = true
                sliderDay.visible = true
            }
        }
        else
        {
            if(sliderDayVisible === true)
            {
                sliderDayVisible  = false
                sliderDay.visible = false
            }
        }
    }


    GridLayout{
        id:mainRec
        anchors.left: parent.left
        anchors.right: parent.right
        //anchors.fill: parent
        rows: 3
        rowSpacing: 0
        height: slider1Rec.height+slider2Rec.height+slider3Rec.height
        Rectangle{
            id:slider3Rec
            color: "red"
            Layout.alignment: Qt.AlignTop
            //anchors.top: sliderMonth.bottom
            //Layout.alignment: Qt.AlignBottom
            Layout.row: IntegerConstants.rowCount1
            Layout.rowSpan: IntegerConstants.rowSpan1
            //Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredHeight: 75// sliderYear.height
            Layout.maximumHeight:75// sliderYear.height
            Layout.minimumHeight: 0//sliderYear.height
            // color: "transparent"
            ReportRangeSlider {
                id: sliderYear
                anchors.fill: slider3Rec
                labelText: "Year"
                sliderFrom:IntegerConstants.dobStartDate
                sliderTo:IntegerConstants.dobEndDate
                alterValues:false//false
                allowSameFirstSec:true
                Component.onCompleted: {
                    sliderYear.first1RangeValue.connect(yearFromChange)
                    sliderYear.first2RangeValue.connect(yearToChange)            }
            }
        }
        Rectangle{
            id:slider2Rec
            //Layout.alignment: Qt.AlignTop
            //Layout.alignment: Qt.AlignVCenter
            Layout.row: IntegerConstants.rowCount2
            Layout.rowSpan: IntegerConstants.rowSpan1
            //Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredHeight: 75//sliderMonth.height
            Layout.maximumHeight: 75//sliderMonth.height
            Layout.minimumHeight: 0//sliderMonth.height
            //anchors.top: sliderDay.bottom
            color: "transparent"
            //color: "black"
            ReportRangeSlider {
                id: sliderMonth
                anchors.fill: slider2Rec
                labelText: "Month"
                sliderFrom:1
                sliderTo: 12
                alterValues:true
                allowSameFirstSec:true
                onFirst1RangeValue: {
                    sliderDay.sliderTo=getDaysInMonth(sliderMonth.secValue,sliderYear.secValue)
                }
                onFirst2RangeValue: {
                    sliderDay.sliderTo=getDaysInMonth(sliderMonth.secValue,sliderYear.secValue)
                }


                Component.onCompleted: {

                    sliderMonth.first1RangeValue.connect(monthFromChange)
                    sliderMonth.first2RangeValue.connect(monthToChange)

                }
            }
        }
        Rectangle{
            id:slider1Rec
            //Layout.alignment: Qt.AlignTop
            Layout.row: IntegerConstants.rowCount3
            Layout.rowSpan: IntegerConstants.rowSpan1
            //Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredHeight: 75//sliderDay.height
            Layout.maximumHeight: 75//sliderDay.height
            Layout.minimumHeight: 0//sliderDay.height
            //anchors.top:parent.top
            color: "transparent"
            //color: "green"
            ReportRangeSlider {
                id: sliderDay
                anchors.fill: slider1Rec
                labelText: "Day"
                sliderFrom:1
                sliderTo: getDaysInMonth(sliderMonth.sliderTo,sliderYear.sliderTo)//31
                firstValue: 0
                secValue: getDaysInMonth(sliderMonth.secValue,sliderYear.secValue)
                alterValues:true//false
                allowSameFirstSec:false
                Component.onCompleted: {
                    sliderDay.first1RangeValue.connect(dateFromChange)
                    sliderDay.first2RangeValue.connect(dateToChange)
                }

            }
        }



    }
}



/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
