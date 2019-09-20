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
import "./../../common/"
import ApplicationConstants 1.0
Rectangle{
    id:mainGridRec
    anchors.left: parent.left
    anchors.right: parent.right
    //anchors.fill: parent
    height: mainRec.height
    //color: "black"
    color: StringConstants.actionBtnBackgroundColor
    property real prevSliderTo: sliderDay.secValue
    property real prevSliderFrom: sliderDay.firstValue
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
        return value///value+1
    }

    signal setFromDate(int index)
    onSetFromDate: {
        prevSliderFrom = sliderDay.firstValue//index
        console.log("The value of the index is"+prevSliderFrom)
        if(!(prevSliderFrom === index))
        {
            console.log("The value of the index is"+index)
            sliderDay.changeFirstValue(incrementValue(index+1))
        }
        //        if(index > prevSliderTo)
        //        {
        //            setToDate(index+1)
        //        }
    }
    signal setToDate(int index)
    onSetToDate: {
        prevSliderTo = sliderDay.secValue//index
        console.log("The value of the index is"+prevSliderTo)
        if(!(prevSliderTo === index))
        {
            console.log("The value of the index is "+index)
            sliderDay.changeSecValue(incrementValue(index+1))
        }
    }

    signal setFromMonth(int index)
    onSetFromMonth: {
        var value = (index)
        sliderMonth.changeFirstValue(incrementValue(index))
        //checkEqualMonth(value)

    }
    signal setToMonth(int index)
    onSetToMonth: {
        var value = (index)
        sliderMonth.changeSecValue(incrementValue(index))
        // checkEqualMonth(value)

    }
    signal setFromYear(int index)
    onSetFromYear: {
        var value =  (IntegerConstants.dobStartDate+index)
        // checkEqualYear(value)
        sliderYear.changeFirstValue(incrementValue(IntegerConstants.dobStartDate+index))
        //dateFromChange(sliderDay.firstValue)
        //dateToChange(sliderDay.secValue)
        // checkEqualYear(value)

    }


    signal setToYear(int index)
    onSetToYear: {
        var value = ( IntegerConstants.dobStartDate+index)
        sliderYear.changeSecValue(incrementValue(IntegerConstants.dobStartDate+index))
        //checkEqualYear(value)

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
        console.log("The date from values are"+sliderDay.firstValue)
        console.log("The date to values are"+sliderDay.secValue)
        console.log("The index is"+prevSliderFrom+prevSliderTo)
        prevSliderFrom = sliderDay.firstValue
        prevSliderTo = sliderDay.secValue
       // dateFromChange(prevSliderFrom)//dateFromChange(sliderDay.firstValue)
       // dateToChange(prevSliderTo)//dateToChange(sliderDay.secValue)
        console.log("The date from values are"+sliderDay.firstValue)
        console.log("The date to values are"+sliderDay.secValue)
        console.log("The index is"+prevSliderFrom+prevSliderTo)
        console.log("The index is"+value)
        console.log("The index is"+value)
    }

    signal monthToChange(int value)
    onMonthToChange: {
        console.log("The date from values are"+sliderDay.firstValue)
        console.log("The date to values are"+sliderDay.secValue)
        sliderDay.changeDayValue(value,sliderYear.secValue)
        console.log("The index is"+prevSliderFrom+prevSliderTo)
        prevSliderFrom = sliderDay.firstValue
        prevSliderTo = sliderDay.secValue
        //dateFromChange(prevSliderFrom)//sliderDay.firstValue
        //dateToChange(prevSliderTo)//sliderDay.secValue
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
        console.log("This index is not used"+index+"first value is"+sliderYear.firstValue+"secValue"+sliderYear.secValue)
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
            if(sliderDayVisible === true)
            {
                sliderDayVisible = false
                sliderDay.visible = false
            }
        }
    }
    function checkEqualMonth(index)
    {
        console.log("This index is not used"+index+"sliderMonth"+sliderMonth.firstValue+"slidersecMonth"+sliderMonth.secValue)
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
            //anchors.top: sliderMonth.bottom
            //Layout.alignment: Qt.AlignBottom
            //Layout.fillHeight: true
            // color: "transparent"
            color: "red"
            Layout.alignment: Qt.AlignTop
            //anchors.top: parent.top
            Layout.row: IntegerConstants.rowCount1
            Layout.rowSpan: IntegerConstants.rowSpan1
            Layout.fillWidth: true
            Layout.preferredHeight: 75// sliderYear.height
            Layout.maximumHeight:75// sliderYear.height
            Layout.minimumHeight: 0//sliderYear.height

            ReportRangeSlider {
                id: sliderYear
                anchors.fill: slider3Rec
                labelText: "Year"
                sliderFrom:IntegerConstants.dobStartDate
                sliderTo:IntegerConstants.dobEndDate
                alterValues:false//false
                allowSameFirstSec:true
                onFirstValueChanged: {
                    checkEqualYear(0)
                }
                onSecValueChanged: {
                    checkEqualYear(0)
                }

                Component.onCompleted: {
                    sliderYear.first1RangeValue.connect(yearFromChange)
                    sliderYear.first2RangeValue.connect(yearToChange)            }
            }
        }
        Rectangle{
            id:slider2Rec
            anchors.top: slider3Rec.bottom
            //Layout.alignment: Qt.AlignTop
            //Layout.alignment: Qt.AlignVCenter
            //Layout.fillHeight: true
            //anchors.top: sliderDay.bottom
            //color: "black"
            Layout.row: IntegerConstants.rowCount2
            Layout.rowSpan: IntegerConstants.rowSpan1
            Layout.fillWidth: true
            Layout.preferredHeight: 75//sliderMonth.height
            Layout.maximumHeight: 75//sliderMonth.height
            Layout.minimumHeight: 0//sliderMonth.height
            color: "transparent"

            ReportRangeSlider {
                id: sliderMonth
                anchors.fill: slider2Rec
                labelText: "Month"
                sliderFrom:1
                sliderTo: 12
                alterValues:true
                allowSameFirstSec:true
                onFirst1RangeValue: {
                    //  sliderDay.sliderTo=getDaysInMonth(sliderMonth.secValue,sliderYear.secValue)
                }
                onFirst2RangeValue: {
                    sliderDay.sliderTo=getDaysInMonth(sliderMonth.secValue,sliderYear.secValue)
                }
                onFirstValueChanged: {
                    checkEqualMonth(0)
                }
                onSecValueChanged: {
                    checkEqualMonth(0)
                }


                Component.onCompleted: {

                    sliderMonth.first1RangeValue.connect(monthFromChange)
                    sliderMonth.first2RangeValue.connect(monthToChange)

                }
            }
        }
        Rectangle{
            id:slider1Rec
            anchors.top: slider2Rec.bottom
            //Layout.alignment: Qt.AlignTop
            //Layout.fillHeight: true
            //anchors.top:parent.top
            //color: "green"
            Layout.row: IntegerConstants.rowCount3
            Layout.rowSpan: IntegerConstants.rowSpan1
            Layout.fillWidth: true
            Layout.preferredHeight: 75//sliderDay.height
            Layout.maximumHeight: 75//sliderDay.height
            Layout.minimumHeight: 0//sliderDay.height
            color: "transparent"

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
                //onFirstValueChanged: checkEqualMonth(0)
                //onSecValueChanged: checkEqualMonth(0)
                Component.onCompleted: {
                    sliderDay.first1RangeValue.connect(dateFromChange)
                    sliderDay.first2RangeValue.connect(dateToChange)
                    sliderDay.equalFirstSec.connect(checkEqualMonth)
                }

            }
        }
//        Rectangle{
//            id:okCancelRec
//            anchors.top: slider1Rec.visible?slider1Rec.bottom:slider2Rec.visible?slider2Rec.bottom:slider3Rec.bottom
//            Layout.row: IntegerConstants.rowCount4
//            Layout.rowSpan: IntegerConstants.rowSpan1
//            Layout.fillWidth: true
//            Layout.preferredHeight: 120//75
//            Layout.maximumHeight: 120//75
//            Layout.minimumHeight: 120
//            color: "transparent"
//            ReportOkCancelGroup{
//                id:pgOkCancel
//                //anchors.left: parent.left
//                //anchors.right: parent.right
//                anchors.centerIn: parent
//                //height: 100
//                Component.onCompleted: {
//                    pgOkCancel.okClicked.connect(mainRec.pgOkCancel)
//                    pgOkCancel.cancelClicked.connect(mainRec.pgOkCancel)
//                }
//            }
//        }



    }
}



/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
