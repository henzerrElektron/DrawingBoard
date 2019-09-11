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
import ApplicationConstants 1.0
import QtQml.Models 2.12
import Qt.labs.calendar 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0

Rectangle{
    id:mainRec
    anchors.fill: parent
    property var locale: Qt.locale()
    property date currentDate: new Date()
    property string dateString
    signal changeMonthFromTumbler(int index)
    signal changeYearFromTumbler(int index)
    onChangeYearFromTumbler: {
        currentDate.setFullYear(index)
        console.log("Received year is "+index)
        //currentDate.setMonth(monthTumbler.model.index)
        dateString = currentDate.toLocaleDateString();
        print(Date.fromLocaleDateString(dateString));
        console.log("Change year from tumbler year is"+dateString+ "year index is"+index)
        grid.changeYear(index)
    }

    onChangeMonthFromTumbler: {
        //currentDate.setFullYear(yearTumbler.model.index)
        currentDate.setMonth(index)
        // dateString = currentDate.toLocaleDateString();
        print(Date.fromLocaleDateString(dateString));
        console.log("The index value is"+dateString)
        grid.changeMonth(index)
    }

    // width: 500
    // height: 500
    CalendarModel {
        id:calModel
        from: new Date(1875, 0, 1)
        to: new Date()//.getDate()
    }
    GridLayout {
        columns: 2
        anchors.fill: parent
        DayOfWeekRow {
            locale: grid.locale

            Layout.column: 1
            Layout.fillWidth: true
        }

        WeekNumberColumn {
            month: grid.month
            year: grid.year
            locale: grid.locale

            Layout.fillHeight: true
        }

        MonthGrid {
            id: grid
            //month: Calendar.December
            //year: 2015
            locale: Qt.locale("en_UK")
            // Layout.column: 2
            Layout.fillWidth: true
            Layout.fillHeight: true
            onClicked: {
                dateString = currentDate.toLocaleDateString();
                print(Date.fromLocaleDateString(dateString));
            }

            //            delegate: Text {
            //                horizontalAlignment: Text.AlignHCenter
            //                verticalAlignment: Text.AlignVCenter
            //                opacity: model.month === grid.month ? 1 : 0
            //                text: model.day
            //                font: control.font
            //            }
            function changeMonth(index)
            {
                console.log("The month value is"+index)
                month = index
                // month = index
            }
            function changeYear(index)
            {
                console.log("The year value is"+index)
                //year = index
                year = index
            }
        }
    }

}
