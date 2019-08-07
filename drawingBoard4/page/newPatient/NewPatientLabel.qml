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
import "./../../imports/"
import "./../../models/"
import "./../../delegates/"
import "./../test/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0

//GridLayout {
//    columns: 2

//    DayOfWeekRow {
//        locale: grid.locale

//        Layout.column: 1
//        Layout.fillWidth: true
//    }

//    WeekNumberColumn {
//        month: grid.month
//        year: grid.year
//        locale: grid.locale

//        Layout.fillHeight: true
//    }

//    MonthGrid {
//        id: grid
//        month: Calendar.December
//        year: 2015
//        locale: Qt.locale("en_US")

//        Layout.fillWidth: true
//        Layout.fillHeight: true
//    }
//}
Rectangle {
    id: rectangle
    color: StringConstants.testPage_backgroundColor
    anchors.fill: parent
    border.color: "black"
    border.width: 1
    GridLayout{
        id: mainRow
        width: 700
        anchors.fill: parent
        columns: 3
        rows:8

        TestPageTitle {
            id: rectangle1
            labelText:"Please enter the Patient details"//Constants.label_NewPatientQuestion
            anchors.top: parent.top
            anchors.left: parent.left
            Layout.column: 1
            Layout.columnSpan: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.row: 1
            Layout.rowSpan: 2
            Layout.maximumHeight: parent.height/5
        }

        TestPageAllLabels {
            id: rectangle2
            Layout.column: 1
            Layout.columnSpan: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.row: 3
            Layout.rowSpan: 5
            //anchors.bottom: rectangleSwitchPatientLabel.top
            anchors.top: rectangle1.bottom
        }

//        TestPageActionButtons {
//            id: rectangle3
//            Layout.column: 3
//            Layout.columnSpan: 1
//            Layout.fillHeight: true
//            Layout.fillWidth: true
//            Layout.row: 1
//            Layout.rowSpan: 7
//        }
//        SwitchSearchItems{
//            id:rectangleSwitchPatientLabel
//            Layout.column: 1
//            Layout.columnSpan: 3
//            Layout.fillHeight: true
//            Layout.fillWidth: true
//            Layout.row: 8
//            Layout.rowSpan: 2

//        }

//            TestPageSwitchButtons {
//                id: rectangle4
//                Layout.column: 2
//                Layout.columnSpan: 1
//                Layout.fillHeight: true
//                Layout.fillWidth: true
//                Layout.row: 3
//                Layout.rowSpan: 4
//                //anchors.centerIn: rectangle1
//                anchors.left: rectangle1.right
//                //anchors.leftMargin: 0
//                Layout.leftMargin: 0
//                //anchors.top: rectangle3.bottom
//            }


    }
}
