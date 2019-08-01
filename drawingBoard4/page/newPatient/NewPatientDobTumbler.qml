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
import ApplicationContstants 1.0
import QtQml.Models 2.12
import Qt.labs.calendar 1.0



Rectangle {
    id: rectangle
    width: mainGrid.width+3*(2* mainGrid.columnSpacing)
    height: mainGrid.height
    border.color: "black"//Constants.borderColorBlack
    border.width: 1//Constants.borderWidth1
    property int curSetDate: 0
    property int curSetYear: 0
    property string curSetYearString: ""
    property string curSetMonth: ""
    property string curDateMonthYear: ""
    signal setDate(int index)
    signal setMonth(int index)
    signal setYear(int index)
    signal setYearString(string value)
    onSetYearString: {
        curSetYearString = value
    }

    onSetDate: {
        curSetDate = index
        curDateMonthYear = curSetDate.toString()+"/"+curSetMonth+"/"+curSetYear.toString()//curSetYearString//
    }
    onSetMonth: {
        curSetMonth = Constants.dobCalAllMonths[index]
        curDateMonthYear = curSetDate.toString()+"/"+curSetMonth+"/"+curSetYear.toString()//curSetYearString//
    }
    onSetYear: {
        curSetYear = 1900+index
        curDateMonthYear = curSetDate.toString()+"/"+curSetMonth+"/"+curSetYear.toString()//curSetYearString//
    }

    GridLayout{
        id:mainGrid
        columns: Constants.columnCount3
        rows: Constants.rowCount4
        columnSpacing: Constants.spacing
        Layout.minimumHeight: recDate.height+recTitle.height
        Layout.minimumWidth: recDate.width+recMonth.width+recYear.width//630
        Rectangle{
            id:recTitle
            Layout.row: Constants.rowCount1
            Layout.fillWidth: true
            Layout.column: Constants.columnCount1
            Layout.columnSpan: Constants.columnSpan1//3
            anchors.top: parent.top
            anchors.left: recDate.left
            //anchors.right: recYear.right
            height: 50
            //width: 100//parent.width
            Label{
                id:lbl
                text: Constants.dobTitle
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
            Layout.row: Constants.rowCount1
            Layout.fillWidth: true
            Layout.column: Constants.columnCount2
            Layout.columnSpan: Constants.columnSpan2//3
            anchors.top: parent.top
            //anchors.left: recDate.left
            //anchors.right: recYear.right
            height: 50
            //width: parent.width
            TextField{
                id:txtDob
                text: curDateMonthYear
                //anchors.centerIn: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
            }
        }

        Rectangle{
            id:recDate
            Layout.row: Constants.rowCount2
            Layout.column: Constants.columnCount1
            anchors.top:recTitle.bottom
            anchors.left: parent.left
            height:Constants.dobCalTumblerHeight
            width: Constants.dobCalTumblerWidth


            NewPatientDataTumbler{
                id:dateTumbler
                labelText: Constants.dobDay
                firstTumblerVisibility: true
                secTumblerVisibility: false
                thirdTumblerVisibility: false
                firstTumblerModel:Constants.dobCalNoOfDays//[0,1,2,3]
                Component.onCompleted: {
                      dateTumbler.comboIndexChange.connect(setDate)
                }
            }
        }
        Rectangle{
            id:recMonth
            anchors.top:recTitle.bottom
            anchors.left:  recDate.right
            anchors.leftMargin: Constants.margin10
            Layout.row: Constants.rowCount2
            Layout.column: Constants.columnCount2
            height:Constants.dobCalTumblerHeight
            width: Constants.dobCalTumblerWidth
            NewPatientDataTumbler{
                id:monthTumbler
                labelText:Constants.dobMonth
                firstTumblerVisibility: true
                secTumblerVisibility: false
                thirdTumblerVisibility: false
                firstTumblerModel:Constants.dobCalAllMonths
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
            anchors.top:recTitle.bottom
            anchors.left:  recMonth.right
            //anchors.right: parent.right
            anchors.leftMargin: Constants.margin10
            Layout.row: Constants.rowCount2
            Layout.column: Constants.columnCount3
            height:Constants.dobCalTumblerHeight
            width: Constants.dobCalTumblerWidth
            NewPatientDataTumbler{
                id:yearTumbler
                CalendarYearModel{
                    id:calModel
                }
                CalyearDelegateComponent{
                    id:calYearCom
                }

                labelText:Constants.dobYear
                firstTumblerVisibility: true
                secTumblerVisibility: false
                thirdTumblerVisibility: false
                donotUpdateMovingTumbler: true
                firstTumblerModel:calModel.calculateYears()
                comboBoxModel: calModel.calculateRange(Constants.dobStartDate,Constants.dobEndDate)//calculateRange(1900,2019)//
                firstTumblerDelegate:calYearCom
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


