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
    // width: 500
    // height: 500
    CalendarModel {
        id:calModel
        from: new Date(1875, 0, 1)
        to: new Date(2015, 11, 31)//new Date().getDate()
    }
    GridLayout {
        rows:2
        columns: 2
        anchors.fill: parent
        Rectangle{
            id:rec1
            //  color: "black"
            Layout.row: 2
            Layout.column: 1
            // Layout.columnSpan: 1
            anchors.top: rec2.bottom
            anchors.left: parent.left
            anchors.bottom: parent.bottom
            //Layout.columnSpan: 4
            Layout.fillHeight: true

            //Layout.fillWidth: true
            width: 150
            // height: 100
            NewPatientDataTumbler{
                id:monthTumbler
                labelText:"Month"
                anchors.fill: parent
                //height: parent.height
                // anchors.left: lbl.right
                // anchors.leftMargin: 10

                firstTumblerVisibility: true
                secTumblerVisibility: false
                thirdTumblerVisibility: false
                //firstTumblerCount:5
                firstTumblerModel:[Calendar.January,Calendar.February,Calendar.March,Calendar.April,Calendar.May,Calendar.June,Calendar.July,Calendar.August,Calendar.September,Calendar.October,Calendar.November,Calendar.December]//rearrangeModel?10:2
                onRearrangeModelChanged: {
                    update()
                }

                Component.onCompleted: {
                    monthTumbler.firstTumblerValue.connect(grid.changeMonthFromTumbler)
                }
            }
        }
        Rectangle{
            id:rec2
            color: "red"
            Layout.row: 1
            Layout.column: 1
            //Layout.columnSpan: 2
            Layout.fillWidth: true
            //anchors.right: dwr.right
            anchors.top: parent.top
            anchors.left:rec1.right// parent.left//
            //anchors.fill: parent
            anchors.right: parent.right
            // width: 100
            height: 200//150
            //            NewPatientDataTumblerHorizontal{
            //                id:yearOperator
            //                anchors.fill: parent
            //                firstTumblerModel: [1800,1900,2000]//calModel.year
            //                firstTumblerVisibility: true
            //                secTumblerVisibility: true
            //                secTumblerModel:100
            //                Component.onCompleted: {
            //                    yearOperator.firstTumblerValue.connect(grid.changeMonthFromTumbler)
            //                    yearOperator.firstSecTumblerValue.connect(grid.changeYearFromTumbler)
            //                }
            //            }
            NewPatientDataTumbler{
                id:yearTumbler
                labelText:"Year"
                firstTumblerVisibility: true
                secTumblerVisibility: true
                thirdTumblerVisibility: true
                firstTumblerModel:[1,2]//rearrangeModel?10:2
                secModelReArrangeCondition: 1
                thirdModelReArrangeCondition: 1
                secTumblerModel:secModelRearrange? [9,8]:[0]
                thirdTumblerModel:thirdModelRearrange? 100:Qt.formatDateTime(new Date(), "yy")+1

                onRearrangeModelChanged: {
                    update()
                }
                Component.onCompleted: {
                    //yearOperator.firstTumblerValue.connect(grid.changeMonthFromTumbler)
                    yearTumbler.firstSecThirdTumblerValue.connect(grid.changeYearFromTumbler)
                }
            }
        }
            Rectangle{
                id:rec3
                color: "red"
                Layout.row: 2
                Layout.column: 2
                //Layout.columnSpan: 2
                Layout.fillWidth: true
                //Layout.fillHeight: true
                //anchors.fill: parent
                //anchors.right: dwr.right
                anchors.top: rec2.bottom
                anchors.left:rec1.right// parent.left//
                anchors.bottom: parent.bottom
                //anchors.fill: parent
                anchors.right: parent.right
                // width: 100
                //  height: 150
                NewPatientDateCalendar{
                    id:grid
                    anchors.fill: parent
                    //firstTumblerModel: 2000//calModel.year
                    Component.onCompleted: {
                        // monthTumbler.firstTumblerValue.connect(grid.changeMonthFromTumbler)
                    }
                }
            }


        }

    }
