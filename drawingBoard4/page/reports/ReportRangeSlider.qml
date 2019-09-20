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
    anchors.fill: parent
    color: StringConstants.actionBtnBackgroundColor
    property bool alterValues: true
    property bool allowSameFirstSec:true
    property alias labelText: titleLbl.text
    property alias sliderFrom: slider1.from
    property alias sliderTo: slider1.to
    property int firstSecEqualCount: 0
    property int prevTo: 0
    property int firstValue: 0
    onFirstValueChanged: {
        console.log("The changed value is "+firstValue)
    }

    property int secValue: 0
    onSecValueChanged: {
        console.log("The changed value is"+secValue)
    }

    property int newFirstValue: 0
    property int firstSliderSetValue: 0
    property int secSliderSetValue: 0
    function changeFirstValue(index){
        slider1.first.value = index
        firstValue = slider1.first.value.toFixed(0);

    }
    function changeSecValue(index)
    {
        slider1.second.value = index
        secValue = slider1.second.value.toFixed(0);
    }

    property int prevFirstValue: 0
    property int prevSecValue: 0


    onSliderFromChanged: {
        var curValue = first.value.toFixed(0) -1
        console.log("The curvalue is"+curValue)
    }


    onSliderToChanged: {
        var curValue = second.value.toFixed(0) -1
        console.log("The curvalue is"+curValue)
    }

    signal first1RangeValue(int value)
    signal first2RangeValue(int value)
    signal changeDayValue(int month,int year)
    signal changeToPosition()
    signal equalFirstSec(int index)
    function getDaysInMonth(month,year) {
        var dateValue =  new Date(year, month+1, 0).getDate();
        console.log("The datevalue is "+dateValue+year+month)
        return dateValue;
    }
    onChangeDayValue: {
        slider1.to = getDaysInMonth(month,year)
        changeToPosition()
    }
    onChangeToPosition: {
        console.log("This is in a wrong position"+prevTo+"ok"+slider1.to)
    }

    GridLayout{
        id:grid
        anchors.fill: parent
        rows: IntegerConstants.rowCount2
        columns: IntegerConstants.columnCount3
        Rectangle{
            id:title
            Layout.alignment: Qt.AlignTop|Qt.AlignHCenter
            Layout.fillWidth: true
            Layout.row: 1
            Layout.rowSpan: 1
            Layout.column: 1
            Layout.columnSpan: 3
            Layout.preferredHeight: 30//slider1.height
            Layout.minimumHeight: 30
            Layout.maximumHeight: 30
            color: "transparent"
            Label{
                id:titleLbl
                anchors.fill: parent
                text: "Label"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
            }

        }

        Rectangle{
            id:rec1MinLabel
            anchors.top: title.bottom
            Layout.alignment: Qt.AlignTop|Qt.AlignLeft
            Layout.fillHeight: true
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
                text: sliderFrom.toString()
                verticalAlignment: Text.AlignVCenter
            }
        }

        Rectangle{
            id:rec1
            anchors.top: title.bottom
            Layout.alignment: Qt.AlignTop|Qt.AlignHCenter
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
                anchors.fill: parent

                first.onMoved: {
                    var secChanged = false
                    firstValue = first.value.toFixed(0);
                    secValue = second.value.toFixed(0);
                    if(allowSameFirstSec === false)
                    {
                        if(firstValue === secValue)
                        {
                            secValue = secValue + 1;
                            second.value = secValue;
                            secChanged = true
                        }
                    }
                    else
                    {
                        if(firstValue === secValue)
                        {
                             equalFirstSec(secValue)
                        }
                    }

                    if((firstValue) > (secValue))
                    {

                        secValue = secValue + 1;
                        second.value = secValue;
                        secChanged = true
                        console.log("The first and second values are"+firstValue+"SEC"+secValue+"to"+slider1.to+"from"+slider1.from)

                    }
                    if(secValue > firstValue)
                    {
                        console.log("The first and second values are"+firstValue+"SEC"+secValue+"to"+slider1.to+"from"+slider1.from)
                    }


                    if(alterValues === true)
                    {
                        firstValue  = first.value.toFixed(0)-1
                        secValue = second.value.toFixed(0)-1
                        console.log("The curvalue is"+firstValue)
                        secChanged  = true
                    }
                    else
                    {
                        if(firstValue+1 < slider1.from)
                        {
                            firstValue = slider1.from
                        }
                        if(secValue+1 > slider1.to)
                        {
                            secValue = slider1.to
                            secChanged = true
                        }
                    }
                    if(secChanged === true)
                    {
                        first2RangeValue(secValue)
                    }
                    first1RangeValue(firstValue)
                    update()
                }
                second.onMoved:
                {
                    var firstchanged = false
                    prevTo = slider1.to.toFixed(0);
                    firstValue = first.value.toFixed(0);
                    secValue = second.value.toFixed(0);
                    if(allowSameFirstSec === false)
                    {
                        if(secValue === firstValue)
                        {
                            firstValue = firstValue -1
                            first.value = firstValue
                            firstchanged = true;
                        }
                    }
                    else
                    {
                        if(firstValue === secValue)
                        {
                           equalFirstSec(secValue)
                        }
                    }

                    if(((secValue) < (firstValue)))
                    {
                        firstValue = firstValue -1
                        first.value = firstValue
                        firstchanged = true;
                    }

                    if(alterValues === true)
                    {
                        firstValue  = first.value.toFixed(0)-1
                        secValue = second.value.toFixed(0)-1
                        console.log("The curvalue is"+secValue)
                        if(firstValue+1 < slider1.from)
                        {
                            firstValue = slider1.from
                            firstchanged = true;
                        }
                        if(secValue+1 > slider1.to)
                        {
                            secValue = slider1.to
                        }
                    }
                    else
                    {
                        if(firstValue < slider1.from)
                        {
                            firstValue = slider1.from
                            firstchanged = true
                        }
                        if(secValue > slider1.to)
                        {
                            secValue = slider1.to
                        }
                    }


                    console.log("The curvalue is"+secValue)
                    if(firstchanged === true)
                    {
                        first1RangeValue(firstValue)
                    }
                    first2RangeValue(secValue)
                    update()
                }
                Component.onCompleted: {
                    first.value = slider1.from
                    second.value = slider1.to
                    prevSecValue =  second.valueto.toFixed(0);
                    prevTo = slider1.to.toFixed(0);
                }
            }
        }
        Rectangle{
            id:rec1MaxLabel
            anchors.top: title.bottom
            Layout.fillHeight: true
            Layout.row: 2
            Layout.column: 3
            Layout.columnSpan: 1
            Layout.alignment: Qt.AlignTop|Qt.AlignRight
            Layout.preferredWidth: 25
            Layout.minimumWidth: 25
            Layout.maximumWidth: 25
            Layout.preferredHeight: 30
            Layout.minimumHeight: 30
            Layout.maximumHeight: 30
            color: "transparent"
            Label{
                anchors.fill: parent
                id:dateMaxLabel
                text: sliderTo.toString()//"Text"
                verticalAlignment: Text.AlignVCenter
            }
        }
    }
}
