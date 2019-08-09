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
        id:grid
        anchors.fill: parent
        rows: IntegerConstants.rowCount5
        Rectangle{
            id:rec1
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.row: 1
            Layout.rowSpan: 1
            color: "transparent"
            RangeSlider {
                id:slider1
                from: 1
                to: 31
                first.value: 1
                second.value: 31
                anchors.fill: parent
                onFirstChanged: {

                }
                onSecondChanged: {

                }
            }
        }
        Rectangle{
            id:rec2
            Layout.row: 2
            Layout.rowSpan: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "transparent"
            RangeSlider {
                id:slider22
                from: 1
                to: 100
                first.value: 25
                second.value: 75
                anchors.fill: parent
            }
        }
        Rectangle{
            id:rec3
            Layout.row: 3
            Layout.rowSpan: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
            color: "transparent"
            RangeSlider {
                id:slider3
                from: 1
                to: 100
                first.value: 25
                second.value: 75
                anchors.fill: parent
            }
        }
    }
}
