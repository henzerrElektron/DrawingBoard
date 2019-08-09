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
    color: "transparent"
    width: mainGrid.width+3*(2* mainGrid.columnSpacing)
    height: mainGrid.height
   // border.color: OtherConstants.borderColorBlack
   // border.width: IntegerConstants.borderWidth1
    property int curSetDate: 0
    property int curSetYear: 0
    property string curSetYearString: ""
    property string curSetMonth: ""
    property string curDateMonthYear: ""
    property alias recTextVisible: recText.visible
    property alias lblText: lbl.text
//    property alias dateTumblerModel: dateTumbler.firstTumblerModel
//    property alias dateComboModel: dateTumbler.comboBoxModel
//    property alias monthTumblerModel: dateTumbler.firstTumblerModel
//    property alias monthComboModel: dateTumbler.comboBoxModel
//    property alias yearTumblerModel: dateTumbler.firstTumblerModel
//    property alias yearComboModel: dateTumbler.yearComboModel

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
        curSetMonth = OtherConstants.dobCalAllMonths[index]
        curDateMonthYear = curSetDate.toString()+"/"+curSetMonth+"/"+curSetYear.toString()//curSetYearString//
    }
    onSetYear: {
        curSetYear = OtherConstants.dobStartDate+index
        curDateMonthYear = curSetDate.toString()+"/"+curSetMonth+"/"+curSetYear.toString()//curSetYearString//
    }

    GridLayout{
        id:mainGrid
        columns: IntegerConstants.columnCount3
        rows: IntegerConstants.rowCount4
        columnSpacing: IntegerConstants.spacing
        Layout.minimumHeight: recDate.height+recTitle.height
        Layout.minimumWidth: recDate.width+recMonth.width+recYear.width//630
        Rectangle{
            id:recTitle
            color: "transparent"
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
            Layout.columnSpan: IntegerConstants.columnSpan2//3
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
            height:IntegerConstants.dobCalTumblerHeight
            width: IntegerConstants.dobCalTumblerWidth


            NewPatientDataTumbler{
                id:dateTumbler
                labelVisible: false
                ////////////////////////////////////labelText: Constants.dobDay
                firstTumblerVisibility: true
                secTumblerVisibility: false
                thirdTumblerVisibility: false
                firstTumblerModel:calModel.calculateRange(1,IntegerConstants.dobCalNoOfDays)//Constants.dobCalNoOfDays//[0,1,2,3]
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
            Layout.columnSpan: IntegerConstants.columnSpan2
            height:IntegerConstants.dobCalTumblerHeight
            width: 2*IntegerConstants.dobCalTumblerWidth
            NewPatientDataTumbler{
                id:monthTumbler
                labelVisible: false
                //////////////////////////////////////////labelText:Constants.dobMonth
                firstTumblerVisibility: true
                secTumblerVisibility: false
                thirdTumblerVisibility: false
                firstTumblerModel:OtherConstants.dobCalAllMonths
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
            //anchors.left:  recMonth.right
            anchors.right: parent.right
            //anchors.leftMargin: Constants.margin10
            Layout.row: IntegerConstants.rowCount2
            Layout.column: IntegerConstants.columnCount4
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
                //donotUpdateMovingTumbler: true
                firstTumblerModel:calModel.calculateYears()
                comboBoxModel: calModel.calculateRange(IntegerConstants.dobStartDate,IntegerConstants.dobEndDate)//calculateRange(1900,2019)//
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

