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
import ApplicationContstants 1.0
import QtQml.Models 2.12
import Qt.labs.calendar 1.0
Rectangle{
    id:mainRec
    anchors.fill: parent
    signal changeMonthFromTumbler(int index)
    signal changeYearFromTumbler(int index)
    onChangeYearFromTumbler: {
        console.log("Change year from tumbler year is"+index)
        grid.changeYear(index)
    }

    onChangeMonthFromTumbler: {
        console.log("The index value is"+index)
        grid.changeMonth(index)
    }

    // width: 500
    // height: 500
    CalendarModel {
        id:calModel
        from: new Date(1875, 0, 1)
        to: new Date(2015, 11, 31)//new Date().getDate()
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

            Layout.fillWidth: true
            Layout.fillHeight: true
            delegate: Text {
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                opacity: model.month === grid.month ? 1 : 0
                text: model.day
                font: control.font
            }
            function changeMonth(index)
            {
                console.log("The month value is"+index)
                month = index
            }
            function changeYear(index)
            {
                console.log("The year value is"+index)
                year = index
            }
        }
    }

}
