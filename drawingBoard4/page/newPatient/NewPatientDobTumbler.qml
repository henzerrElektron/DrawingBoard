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
//import "./../../imports/"
import "./../../models/"
import "./../../delegates/"
import "./../test/"
import ApplicationConstants 1.0
import QtQml.Models 2.12
import Qt.labs.calendar 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0


Rectangle {
    id: rectangle
    //color: StringConstants.label_NewPatientLabelBgColor//
    color: "transparent"
    width: mainGrid.width+3*(2* mainGrid.columnSpacing)
    height: mainGrid.height
    // border.color: OtherConstants.borderColorBlack
    // border.width: IntegerConstants.borderWidth1
    property int curSetDate: 0
    onCurSetDateChanged: {

        otherTumblerInfo(curSetDate,cursetIntMonth,curSetYear)
        console.log("The values are"+prevSetDate+curSetDate)
    }

    property int prevSetDate: 0
    property int curSetYear: 0//firstOrLast?IntegerConstants.dobEndDate:IntegerConstants.dobStartDate
    onCurSetYearChanged: {
        otherTumblerInfo(curSetDate,cursetIntMonth,curSetYear)
        console.log("The values are"+prevSetDate+curSetDate)
    }

    property int prevSetYear: firstOrLast?IntegerConstants.dobEndDate:IntegerConstants.dobStartDate
    property int startDate: IntegerConstants.dobStartDate
    property int endDate: IntegerConstants.dobEndDate
    //    property int stopDateIndex: 0
    //    property int stopMonthIndex: 0
    //    property int stopYearIndex: 0
    property bool firstOrLast: false//false == first//startTumbler true == second//means stopTumbler

    property string curSetYearString: ""
    property int cursetIntMonth:0
    onCursetIntMonthChanged: {

        otherTumblerInfo(curSetDate,cursetIntMonth,curSetYear)
    }

    property string curSetMonth: ""
    property string curDateMonthYear: ""
    property alias dateModel: dateTumbler.firstTumblerModel
    property alias monthModel: monthTumbler.secTumblerModel
    property alias yearModel: yearTumbler.thirdTumblerModel
    property alias recTextVisible: recText.visible
    property alias lblText: lbl.text
    property bool sortLeapYears: false//true//
    //    property alias dateTumblerModel: dateTumbler.firstTumblerModel
    //    property alias dateComboModel: dateTumbler.comboBoxModel
    //    property alias monthTumblerModel: dateTumbler.firstTumblerModel
    //    property alias monthComboModel: dateTumbler.comboBoxModel
    //    property alias yearTumblerModel: dateTumbler.firstTumblerModel
    //    property alias yearComboModel: dateTumbler.yearComboModel
    function getDaysInMonth(month,year) {
        var dateValue =  new Date(year, month+1, 0).getDate();
        console.log("The datevalue is "+dateValue+year+month)
        return dateValue;
    }
    signal setTumblerDate(int index)
    onSetTumblerDate: {
        curSetDate = index
        dateTumbler.changeTumblerComboValue(index)
    }


    signal setTumblerMonth(int index)
    onSetTumblerMonth: {
        cursetIntMonth = index
        monthTumbler.changeTumblerComboValue(index)
        //monthTumbler.topTextArea.currentIndex = index
        //        if(sortLeapYears === false)
        //        {
        //            var totaldays = getDaysInMonth(index,yearTumbler.comboBoxIndex)//-1
        //            var currentDay = dateTumbler.comboBoxIndex
        //            console.log("Th total days are "+totaldays+"Total months are"+currentDay)
        //            if(currentDay >= totaldays)
        //            {
        //                dateTumbler.changeTumblerComboValue(totaldays-1)//-1
        //            }
        //        }

    }

    signal setTumblerYear(int index)
    onSetTumblerYear: {
        curSetYear = index
        console.log("The year index is"+index)
        yearTumbler.changeTumblerComboValue(index)
        //        if(sortLeapYears === false)
        //        {
        //            var totaldays = getDaysInMonth(monthTumbler.comboBoxIndex,index)
        //            var currentDay = dateTumbler.comboBoxIndex
        //            console.log("Th total days are "+totaldays+"Total months are"+currentDay)
        //            if(currentDay >= totaldays)
        //            {
        //                dateTumbler.changeTumblerComboValue(totaldays-1)//-1
        //            }
        //        }
    }
    signal setNoDateInMonthYear()
    onSetNoDateInMonthYear: {
        dateTumbler.comboBoxIndex = prevSetDate
        dateTumbler.curSetDate = prevSetDate
        // dateTumbler.comboBoxModel = getDaysInMonth(curSetMonth,curSetYear)
        // dateTumbler.firstTumblerModel = getDaysInMonth(curSetMonth,curSetYear)
    }

    signal setDate(int index)
    signal setMonth(int index)
    signal setYear(int index)
    signal setYearString(string value)
    signal resetYear()
    signal informOtherTumbler(int index)
    signal otherTumblerInfo(int day,int month,int year)
    onOtherTumblerInfo: {
        otherTumblerDay = day
        otherTumblerMonth = month
        otherTumblerYear = year
        //setOtherTumblerInfo(day,month,year)
    }
    function setOtherTumblerInfo(day,month,year){
        otherTumblerDay = day
        otherTumblerMonth = month
        otherTumblerYear = year
        if(firstOrLast === true)
        {
            console.log("The other Start tumbler values are"+otherTumblerDay+"Month"+otherTumblerMonth+"Year"+otherTumblerYear)
            console.log("The End tumbler values are"+curSetDate+"Month"+cursetIntMonth+"Year"+curSetYear)
            if(curSetYear === otherTumblerYear){
                if(cursetIntMonth < otherTumblerMonth)
                {
                    if(otherTumblerMonth !== 11)
                    {
                        setTumblerMonth(otherTumblerMonth+1)
                    }
                    else
                    {
                        setTumblerMonth(otherTumblerMonth)
                    }
                }
                if(cursetIntMonth === otherTumblerMonth){
                    if(curSetDate <otherTumblerDay)
                    {
                        console.log("The current number of days in a month is"+getDaysInMonth(otherTumblerMonth,otherTumblerYear))
                        if((otherTumblerDay+1) !== getDaysInMonth(otherTumblerMonth,otherTumblerYear))
                        {
                            setTumblerDate(otherTumblerDay+1)
                        }
                        else
                        {
                            setTumblerDate(otherTumblerDay)
                        }
                    }
                }
            }
            if(curSetYear < otherTumblerYear){
                if(otherTumblerYear !== (IntegerConstants.dobEndDate - IntegerConstants.dobStartDate))
                {
                    setTumblerYear(otherTumblerYear+1)
                }
                else
                {
                    setTumblerYear(otherTumblerYear)
                }
            }
        }
        else
        {
            console.log("The other End tumbler values are"+otherTumblerDay+"Month"+otherTumblerMonth+"Year"+otherTumblerYear)
            console.log("The start tumbler values are"+curSetDate+"Month"+cursetIntMonth+"Year"+curSetYear)
            if(curSetYear === otherTumblerYear){
                if(cursetIntMonth > otherTumblerMonth){
                    if(otherTumblerMonth !== 0)
                    {
                        setTumblerMonth(otherTumblerMonth-1)
                    }
                    else
                    {
                        setTumblerMonth(otherTumblerMonth)
                    }
                }
                if(cursetIntMonth === otherTumblerMonth){
                    if(curSetDate > otherTumblerDay){
                        if((otherTumblerDay !== 0))//||(curSetDate != 0))
                        {
                            setTumblerDate(otherTumblerDay-1)
                        }
                        else
                        {
                            setTumblerDate(otherTumblerDay)
                        }

                    }
                }
            }
            if(curSetYear > otherTumblerYear){
                if(otherTumblerYear !== 0)
                {
                    setTumblerYear(otherTumblerYear-1)
                }
                else
                {
                    setTumblerYear(otherTumblerYear)
                }
            }
        }
    }

    property int otherTumblerDay: 0
    property int otherTumblerMonth: 0
    property int otherTumblerYear: 0
    onResetYear: {
        console.log("The prevsetYesar"+prevSetYear)
        setYear(prevSetYear)
    }

    onSetYearString: {
        curSetYearString = value
    }
    signal setMinYear(int index)
    onSetMinYear: {
        console.log("The first or last is"+firstOrLast)
        if(firstOrLast === true)
        {
            prevSetYear = startDate +index
            curSetYear = startDate + index
            console.log("The index is"+index+"The prev year is"+prevSetYear+"The current year is"+curSetYear+"Start date"+startDate+"endDate"+endDate)
            yearTumbler.comboBoxModel = calModel.calculateRange(startDate+index,endDate)//index
            console.log("The model is the current model"+yearTumbler.comboBoxModel)
            yearTumbler.firstTumblerModel = calModel.calculateRange(startDate+index,endDate)//index
            //startDate = IntegerConstants.dobStartDate+ index
            console.log("The index is"+index+"The prev year is"+prevSetYear+"The current year is"+curSetYear+"Start date"+startDate+"endDate"+endDate)
            // curSetYear = prevSetYear
            resetYear()
        }


        console.log("The modified start date  is"+startDate)
    }

    signal setMaxYear(int index)
    onSetMaxYear: {
        console.log("The first or last is"+firstOrLast)
        if(firstOrLast === false)
        {
            prevSetYear = index
            // endDate = startDate+index
            console.log("The index is"+index+"The prev year is"+prevSetYear+"The current year is"+curSetYear+"The start date is"+startDate+"The end date is"+endDate)
            yearTumbler.comboBoxModel = calModel.calculateRange(curSetYear,curSetYear+index)//index
            console.log("The model is the current model"+yearTumbler.comboBoxModel)
            yearTumbler.firstTumblerModel = calModel.calculateRange(curSetYear,curSetYear+index)//index
            console.log("The model is the current model"+yearTumbler.firstTumblerModel)
            curSetYear = startDate+index
            resetYear()
        }


    }

    function minYear(index){
        console.log("The first or last is"+firstOrLast+"Test"+curSetYear+"PrevSetYear"+prevSetYear+"AllIndex"+index)
        if(firstOrLast === false)
        {
            if(IntegerConstants.dobStartDate+curSetYear > (IntegerConstants.dobStartDate+index))
            {
                setYear(index)
                //prevSetYear = curSetYear
                //curSetYear = IntegerConstants.dobStartDate+(index - 1)
            }
        }


        console.log("The first or last is"+firstOrLast+"Test"+curSetYear+"PrevSetYear"+prevSetYear+"AllIndex"+index)
    }
    function maxYear(index){
        console.log("The first or last is"+firstOrLast+"Test"+curSetYear+"PrevSetYear"+prevSetYear+"AllIndex"+index)
        if(firstOrLast === true)
        {
            if(IntegerConstants.dobStartDate+curSetYear < (IntegerConstants.dobStartDate+index))
            {
                // prevSetYear = curSetYear
                // curSetYear = IntegerConstants.dobStartDate+(index + 1)
                setYear(index)
            }
        }
        console.log("The first or last is"+firstOrLast+"Test"+curSetYear+"PrevSetYear"+prevSetYear+"AllIndex"+index)
    }
    onSetDate: {
        // prevSetDate = curSetDate
        console.log("The values are"+prevSetDate+curSetDate)
        curSetDate = index
        curDateMonthYear = curSetDate.toString()+"/"+curSetMonth+"/"+curSetYear.toString()//curSetYearString//
    }
    // onCurSetDateChanged: {
    //     console.log("The values are"+prevSetDate+curSetDate)
    // }

    onSetMonth: {
        prevSetDate = curSetDate
        cursetIntMonth = index
        curSetMonth = OtherConstants.dobCalAllMonths[index]
        curDateMonthYear = curSetDate.toString()+"/"+curSetMonth+"/"+curSetYear.toString()//curSetYearString//
        ////////////setNoDateInMonthYear()
    }
    onSetYear: {

        curSetYear = index//IntegerConstants.dobStartDate+index
        prevSetYear = index
        curDateMonthYear = curSetDate.toString()+"/"+curSetMonth+"/"+curSetYear.toString()//curSetYearString//
        yearTumbler.changeTumblerComboValue(index)
        //yearTumbler.comboBoxIndex = index
        informOtherTumbler(index)
        //        if(firstOrLast === true)
        //        {
        //            //endDate = startDate+index
        //            if(yearTumbler.firstTumblerStopped === true)
        //            {
        //                yearTumbler.firstTumblerStopped = false
        //                console.log("The index is"+index+"The prev year is"+prevSetYear+"The current year is"+curSetYear+"The start date is"+startDate+"The end date is"+endDate)
        //                pageStartTumbler.setMaxYear(index)
        //            }
        //        }
        //        if(firstOrLast === false)
        //        {
        //             pageStartTumbler.setMinYear(index)
        //             startDate = IntegerConstants.dobStartDate+ index
        //            if(yearTumbler.firstTumblerStopped === true)
        //            {
        //                yearTumbler.firstTumblerStopped = false
        //                console.log("The index is"+index+"The prev year is"+prevSetYear+"The current year is"+curSetYear+"The start date is"+startDate+"The end date is"+endDate)
        //                pageEndTumbler.setMinYear(index)
        //            }

        //        }

        // setNoDateInMonthYear()
    }

    GridLayout{
        id:mainGrid
        columns: IntegerConstants.columnCount3
        rows: IntegerConstants.rowCount4
        columnSpacing: IntegerConstants.spacing
        Layout.minimumHeight: recDate.height+recTitle.height
        Layout.minimumWidth: recDate.width+recMonth.width+recYear.width//+3*(2* IntegerConstants.columnSpacingTen)//630
        Layout.maximumWidth: recDate.width+recMonth.width+recYear.width//+3*(2* IntegerConstants.columnSpacingTen)
        //Layout.preferredWidth: recDate.width+recMonth.width+recYear.width+3*(2* IntegerConstants.columnSpacingTen)
        Rectangle{
            id:recTitle
            width: 60
            color: "transparent"
            Layout.topMargin: 0
            Layout.leftMargin: 10
            Layout.row: IntegerConstants.rowCount1
            Layout.fillWidth: true
            Layout.column: recTextVisible?IntegerConstants.columnCount1:IntegerConstants.columnCount2
            Layout.columnSpan: recTextVisible?IntegerConstants.columnSpan1:IntegerConstants.columnSpan3//3
            Layout.alignment: recTextVisible?Qt.AlignLeft:Qt.AlignHCenter
            anchors.top: parent.top
            anchors.left: recTextVisible?recDate.left:0//recMonth.left
            anchors.horizontalCenter: recTextVisible?0:parent.horizontalCenter
            //anchors.right: recYear.right
            height: 20//50//25//50
            //width: 100//parent.width
            Label{
                id:lbl
                text: StringConstants.dobTitle
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                //anchors.centerIn: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                //anchors.fill: parent
            }
        }
        Rectangle{
            id:recText
            color: "transparent"
            Layout.row: IntegerConstants.rowCount1
            Layout.fillWidth: true
            Layout.column: IntegerConstants.columnCount2
            //Layout.columnSpan: IntegerConstants.columnSpan2//3
            anchors.top: parent.top
            //anchors.left: recDate.left
            //anchors.right: recYear.right
            height: 20//50//25
            //width: parent.width
            TextField{
                id:txtDob
                text: curDateMonthYear
                //anchors.centerIn: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
                readOnly: true
                //font: Constants.fontFamily
                font.pixelSize: 13
            }
        }

        Rectangle{
            id:recDate
            color: "transparent"
            Layout.row: IntegerConstants.rowCount2//Constants.rowCount2
            Layout.column: IntegerConstants.columnCount1
            anchors.top:recTitle.bottom
            anchors.left: parent.left
            anchors.leftMargin: IntegerConstants.margin10
            height:IntegerConstants.dobCalTumblerHeight
            width: IntegerConstants.dobCalTumblerWidth


            NewPatientDataTumbler{
                id:dateTumbler
                labelVisible: false
                ////////////////////////////////////labelText: Constants.dobDay
                firstTumblerVisibility: true
                secTumblerVisibility: false
                thirdTumblerVisibility: false
                donotUpdateMovingTumbler: true
                //donotUpdateMovingTumbler: true
                firstTumblerModel:calModel.calculateRange(1,getDaysInMonth(monthTumbler.firstTumblerIndex,yearTumbler.firstTumblerIndex))//calModel.calculateRange(1,IntegerConstants.dobCalNoOfDays)//getDaysInMonth(monthTumbler.firstTumblerIndex,yearTumbler.firstTumblerIndex)//calModel.calculateRange(1,IntegerConstants.dobCalNoOfDays)//calModel.calculateRange(1,(getDaysInMonth(monthTumbler.comboBoxIndex,yearTumbler.comboBoxIndex)))//IntegerConstants.dobCalNoOfDays//(getDaysInMonth(index,yearTumbler.comboBoxIndex)-1//Constants.dobCalNoOfDays//[0,1,2,3]
                comboBoxModel: calModel.calculateRange(1,getDaysInMonth(monthTumbler.comboBoxIndex,yearTumbler.comboBoxIndex))//calModel.calculateRange(1,IntegerConstants.dobCalNoOfDays)//getDaysInMonth(monthTumbler.firstTumblerIndex,yearTumbler.firstTumblerIndex)//calModel.calculateRange(1,IntegerConstants.dobCalNoOfDays)
                onComboBoxModelChanged: {
                    firstTumblerModel = comboBoxModel
                    console.log("The index value is"+prevSetDate+getDaysInMonth(monthTumbler.comboBoxIndex,yearTumbler.comboBoxIndex))
                    if((prevSetDate+1) > getDaysInMonth(monthTumbler.comboBoxIndex,yearTumbler.comboBoxIndex))
                    {
                        prevSetDate = getDaysInMonth(monthTumbler.comboBoxIndex,yearTumbler.comboBoxIndex) -1
                    }

                    comboBoxIndex = prevSetDate
                    curSetDate = prevSetDate
                }


                onFirstTumblerCountChanged: {
                    console.log("The index value is"+prevSetDate+getDaysInMonth(monthTumbler.comboBoxIndex,yearTumbler.comboBoxIndex))
                    if((prevSetDate+1) >getDaysInMonth(monthTumbler.comboBoxIndex,yearTumbler.comboBoxIndex))
                    {
                        prevSetDate =  getDaysInMonth(monthTumbler.comboBoxIndex,yearTumbler.comboBoxIndex) - 1
                    }
                    comboBoxIndex = prevSetDate
                    curSetDate = prevSetDate
                }

                Component.onCompleted: {
                    dateTumbler.comboIndexChange.connect(setDate)
                }
            }
        }
        Rectangle{
            id:recMonth
            color: "transparent"
            anchors.top:recTitle.bottom
            anchors.left:  recDate.right
            anchors.leftMargin: IntegerConstants.margin10
            Layout.row: IntegerConstants.rowCount2
            Layout.column: IntegerConstants.columnCount2
            //Layout.columnSpan: IntegerConstants.columnSpan2
            height:IntegerConstants.dobCalTumblerHeight
            width: 1.5*IntegerConstants.dobCalTumblerWidth
            NewPatientDataTumbler{
                id:monthTumbler
                labelVisible: false
                //////////////////////////////////////////labelText:Constants.dobMonth
                firstTumblerVisibility: true
                secTumblerVisibility: false
                thirdTumblerVisibility: false
                donotUpdateMovingTumbler: true
                firstTumblerModel:OtherConstants.dobCalAllMonths
                comboBoxModel: OtherConstants.dobCalAllMonths
                onRearrangeModelChanged: {
                    update()
                }

                Component.onCompleted: {
                    monthTumbler.comboIndexChange.connect(setMonth)
                }
            }
        }


        Rectangle{
            id:recYear
            color: "transparent"
            anchors.top:recTitle.bottom
            anchors.left:  recMonth.right
            //anchors.right: parent.right
            anchors.leftMargin: IntegerConstants.margin10
            Layout.row: IntegerConstants.rowCount2
            Layout.column: IntegerConstants.columnCount3
            height:IntegerConstants.dobCalTumblerHeight
            width: IntegerConstants.dobCalTumblerWidth
            NewPatientDataTumbler{
                id:yearTumbler
                CalendarYearModel{
                    id:calModel
                }
                CalyearDelegateComponent{
                    id:calYearCom
                }
                labelVisible: false
                ////////////////////labelText:Constants.dobYear
                firstTumblerVisibility: true
                secTumblerVisibility: false
                thirdTumblerVisibility: false
                donotUpdateMovingTumbler: true
                firstTumblerModel:calModel.calculateRange(IntegerConstants.dobStartDate,IntegerConstants.dobEndDate)//calModel.calculateYears()
                comboBoxModel: calModel.calculateRange(IntegerConstants.dobStartDate,IntegerConstants.dobEndDate)//calculateRange(1900,2019)//
                firstTumblerDelegate:calYearCom
                onComboBoxModelChanged: {
                    console.log("The prev and current year"+prevSetYear+curSetYear)
                    prevSetYear = (IntegerConstants.dobStartDate+curSetYear) - IntegerConstants.dobStartDate
                    console.log("The prev and current year"+prevSetYear+curSetYear)
                }
                onFirstTumblerModelChanged: {
                    console.log("The prev and current year"+prevSetYear+curSetYear)
                    prevSetYear = (IntegerConstants.dobStartDate+curSetYear) - IntegerConstants.dobStartDate
                    console.log("The prev and current year"+prevSetYear+curSetYear)
                }

                onRearrangeModelChanged: {
                    update()
                }
                Component.onCompleted: {
                    yearTumbler.comboIndexChange.connect(setYear)
                    //yearTumbler.comboDisplayTextChange.connect(setYearString)
                    // yearTumbler.firstTumblerValue.connect(monthTumbler.rearrangeValues)
                }
            }
        }
    }

}
//old one without any text entry possibl e
//if this is needed we can make the label a
// and text hidden but this can be done
//anyways
//Rectangle {
//    id: rectangle
//    height: 1000

//    anchors.fill: parent
//    border.color: "black"
//    border.width: 1
//    GridLayout{
//        id:mainGrid
//        anchors.fill: parent
//        columns: 3
//        rows: 3
//        columnSpacing: 20
//        Rectangle{
//            id:rec1
//            Layout.row: 1
//            Layout.column: 1
//            anchors.top: parent.top
//            anchors.left: parent.left
//            height:210
//            width: 70
//            NewPatientDataTumbler{
//                id:dateTumbler
//                labelText: "Day"
//                firstTumblerVisibility: true
//                secTumblerVisibility: false
//                thirdTumblerVisibility: false
//                firstTumblerModel:32
//                Component.onCompleted: {
//                }
//            }
//        }
//        Rectangle{
//            id:rec2
//            anchors.top: parent.top
//            anchors.left:  rec1.right
//            anchors.leftMargin: 10
//            Layout.row: 1
//            Layout.column: 2
//            height:210
//            width: 70
//            NewPatientDataTumbler{
//                id:monthTumbler
//                labelText:"Month"
//                firstTumblerVisibility: true
//                secTumblerVisibility: false
//                thirdTumblerVisibility: false
//                firstTumblerModel:["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]
//                onRearrangeModelChanged: {
//                    update()
//                }
//                Component.onCompleted: {
//                }
//            }
//        }


//        Rectangle{
//            id:rec3
//            anchors.top: parent.top
//            anchors.left:  rec2.right
//            anchors.leftMargin: 10
//            Layout.row: 1
//            Layout.column: 2
//            height:210
//            width: 100
//            NewPatientDataTumbler{
//                id:yearTumbler
//                CalendarYearModel{
//                    id:calModel
//                }
//                CalyearDelegateComponent{
//                    id:calYearCom
//                }
//                labelText:"Year"
//                firstTumblerVisibility: true
//                secTumblerVisibility: false
//                thirdTumblerVisibility: false
//                donotUpdateMovingTumbler: true
//                firstTumblerModel:calModel.calculateYears()
//                comboBoxModel: calModel.calculateRange(1900,2019)
//                firstTumblerDelegate:calYearCom
//                onRearrangeModelChanged: {
//                    update()
//                }
//                Component.onCompleted: {
//                    // yearTumbler.firstTumblerValue.connect(monthTumbler.rearrangeValues)
//                }
//            }
//        }
//    }

//}



//    function checkStopDateIndex(index)
//    {
//        var setDateValue;
//        if(firstOrLast === false)
//        {
//            if(index> stopDateIndex)
//            {
//                console.log("StopDateIndex"+stopDateIndex+index+setDateValue)
//                curSetDate = stopDateIndex;
//            }
//        }
//        if(firstOrLast === true)
//        {

//            if(stopDateIndex < index)
//            {
//                console.log("StopDateIndex"+stopDateIndex+index+setDateValue)
//                curSetDate = stopDateIndex;
//            }
//        }
//        console.log("StopDateIndex"+stopDateIndex+index)
//        //curSetDate = setDateValue
//        //setDate(setDateValue);
//        //return setDateValue;

//    }
//    function checkStopMonthIndex(index)
//    {
//        var setMonthValue;
//        if(firstOrLast === false)
//        {
//            if(index> stopMonthIndex)
//            {
//                setMonthValue = stopMonthIndex;
//            }
//        }
//        else
//        {
//            if(stopMonthIndex < index)
//            {
//                setMonthValue = stopMonthIndex;
//            }
//        }
//        setMonth(setMonthValue);
//        //return setMonthValue;
//    }
//    function checkStopYearIndex(index)
//    {
//        var setYearValue;
//        if(firstOrLast === false)
//        {
//            if(index> stopYearIndex)
//            {
//                setYearValue = stopYearIndex;
//            }
//        }
//        else
//        {
//            if(stopYearIndex < index)
//            {
//                setYearValue = stopYearIndex;
//            }
//        }
//        //return setYearValue;
//        setYear(setYearValue)
//    }
