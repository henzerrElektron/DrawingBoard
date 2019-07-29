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
    height: 1000
    //color: Constants.testPage_backgroundColor
    anchors.fill: parent
    border.color: "black"
    border.width: 1
    GridLayout{
        id:mainGrid
        anchors.fill: parent
        columns: 3
        rows: 3
        columnSpacing: 20
        // flow: Grid.TopToBottom
        Rectangle{
            id:rec1
            Layout.row: 1
            //Layout.rowSpan: 1
            Layout.column: 1
            //Layout.columnSpan: 1
            //Layout.fillWidth: true
            //color: "black"
            anchors.top: parent.top//.bottom
            //anchors.topMargin: 10
            anchors.left: parent.left
            //anchors.right: parent.right
            //anchors.bottom: parent.bottom
            height:210//titleOperator.height//4// parent.height/4//weightOperator.height
            width: 70//titleOperator.width//patientTitleTumbler.width
            //            Label {
            //                id:lbl
            //                anchors.verticalCenter: parent.verticalCenter
            //                text: "Title"
            //            }

            NewPatientDataTumbler{
                id:dateTumbler
                //height: parent.height
                //anchors.left: lbl.right
                //anchors.leftMargin: 10
                labelText: "Day"
                firstTumblerVisibility: true
                secTumblerVisibility: false
                thirdTumblerVisibility: false
                firstTumblerModel:32//[0,1,2,3]
                Component.onCompleted: {
                    //dateTumbler.firstTumblerValue.connect(monthTumbler.rearrangeValues)
                }
            }

            //            NewPatientRiskFactorSwitchSliderHorizontal{
            //                id:titleOperator
            //                anchors.fill: parent
            //                //height: 150
            //                labelText: "Title"
            //                dataTumblersecVisibility: false
            //                dataTumblerthirdVisibility: false
            //                dataTumblerfirstVisibility: true
            //                topSliderMinValue: 0
            //                labelCol1or2:false
            //                topSliderMaxValue: headerDelegate1.switchMetricsChecked ? 150: 1000
            //                dataTumblerNoOrColorDelegate:false
            //                dataTumblerFirstModel: ["Mr","Dr","Mrs","Miss","Other"]
            //                topSliderModel: headerDelegate1.switchMetricsChecked ? 150: 1000
            //                topSliderLabelText: headerDelegate1.switchMetricsChecked? "kg": "lbs"
            //                dataSwitchesVisible: false
            //                topSliderVisible: false
            //                btmSliderVisible:false
            //                eyeColorDialVisibilty: false
            //            }

        }
        Rectangle{
            id:rec2
            anchors.top: parent.top
            //anchors.top: rec1.bottom
            //anchors.topMargin: 10
            anchors.left:  rec1.right
            anchors.leftMargin: 10
            Layout.row: 1
            //Layout.rowSpan: 1
            Layout.column: 2
            //Layout.columnSpan: 1
            //Layout.row: 2
            //Layout.rowSpan: 1
            //Layout.fillWidth: true
            height:210//genderOperator.height//4// parent.height/4//weightOperator.height
            width: 70//patientTitleTumbler.width
            NewPatientDataTumbler{
                id:monthTumbler
                labelText:"Month"
                //height: parent.height
                // anchors.left: lbl.right
                // anchors.leftMargin: 10

                firstTumblerVisibility: true
                secTumblerVisibility: false
                thirdTumblerVisibility: false
                firstTumblerModel:["Jan","Feb","Mar","Apr","May","Jun","Jul","Aug","Sep","Oct","Nov","Dec"]//rearrangeModel?10:2
                onRearrangeModelChanged: {
                    update()
                }

                Component.onCompleted: {

                }
            }
        }


        Rectangle{
            id:rec3
            anchors.top: parent.top
            //anchors.top: rec1.bottom
            //anchors.topMargin: 10
            anchors.left:  rec2.right
            anchors.leftMargin: 10
            Layout.row: 1
            //Layout.rowSpan: 1
            Layout.column: 2
            //Layout.columnSpan: 1
            //Layout.row: 2
            //Layout.rowSpan: 1
            //Layout.fillWidth: true
            height:210//genderOperator.height//4// parent.height/4//weightOperator.height
            width: 70//210//patientTitleTumbler.width
            NewPatientDataTumbler{
                id:yearTumbler
                CalendarYearModel{
                    id:calModel
                }
                CalyearDelegateComponent{
                    id:calYearCom
                }

                labelText:"Year"
                //height: parent.height
                // anchors.left: lbl.right
                // anchors.leftMargin: 10
                firstTumblerVisibility: true
                secTumblerVisibility: false
                thirdTumblerVisibility: false
                firstTumblerModel:calModel.calculateYears()
                firstTumblerDelegate:calYearCom
                    //[1,2]//rearrangeModel?10:2
                    //               secModelReArrangeCondition: 1
                    //               thirdModelReArrangeCondition: 1
                    //secModelRearrange: true
                    //thirdModelRearrange: true
                    //                onSecModelRearrangeChanged: {
                    //                    secTumblerModel:secModelRearrange?["nine","eight"]:["zero"]
                    //                }
                    //                onThirdModelRearrangeChanged: {
                    //                    thirdTumblerModel:thirdModelRearrange?100:Qt.formatDateTime(new Date(), "yy")
                    //                }

                    //                secTumblerModel:secModelRearrange? ["9","8"]:["0"]
                    //                thirdTumblerModel:thirdModelRearrange? 100:Qt.formatDateTime(new Date(), "yy")
                    onRearrangeModelChanged: {
                        update()
                    }

                Component.onCompleted: {
                    // yearTumbler.firstTumblerValue.connect(monthTumbler.rearrangeValues)
                }
            }
        }

        //color: "black"
        //            NewPatientRiskFactorSwitchSliderHorizontal{
        //                id:genderOperator
        //                anchors.fill: parent
        //                //height: 150
        //                labelText: "Gender"
        //                dataTumblersecVisibility: false
        //                dataTumblerthirdVisibility: false
        //                dataTumblerfirstVisibility: true
        //                labelCol1or2:false
        //                topSliderMinValue: 0
        //                topSliderMaxValue: headerDelegate1.switchMetricsChecked ? 150: 1000
        //                dataTumblerNoOrColorDelegate:false
        //                dataTumblerFirstModel: ["Male","Female","Other"]
        //                topSliderModel: headerDelegate1.switchMetricsChecked ? 150: 1000
        //                topSliderLabelText: headerDelegate1.switchMetricsChecked? "kg": "lbs"
        //                dataSwitchesVisible: false
        //                topSliderVisible: false
        //                btmSliderVisible:false
        //                eyeColorDialVisibilty: false
        //            }
        // }

        //        NewPatientLabelWithText{
        //            id:oneLabel
        //            anchors.top: rec2.bottom
        //            textAlignLeftOrCenter:false
        //            labelText:"    "+Constants.lbl_npContactMobile
        //            tfReadOnly:false
        //            tfPlaceHolderText:Constants.lbl_npContactMobilePh
        //            Layout.row: 3
        //            Layout.rowSpan: 1
        //            height: 100
        //            // Layout.fillHeight: true
        //            Layout.fillWidth: true
        //        }

    }




}
