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


Rectangle {
    id: rectangle
    height: 1000
    //color: StringConstants.testPage_backgroundColor
    anchors.fill: parent
    border.color: "black"
    border.width: 1
    GridLayout{
        id:mainGrid
        anchors.fill: parent
        columns: 3
        rows: 3
        // flow: Grid.TopToBottom
        Rectangle{
            id:rec1
            Layout.row: 1
            //Layout.rowSpan: 1
            Layout.column: 1
            Layout.columnSpan: 1
            Layout.fillWidth: true
            //color: "black"
            //anchors.topMargin: 10
            //anchors.right: parent.right
            //anchors.bottom: parent.bottom
            anchors.top: parent.top//.bottom
            anchors.left: parent.left
            height:75//titleOperator.height//4// parent.height/4//weightOperator.height
            //            NewPatientDataTumbler{
            //                id:patientTitleTumbler
            //                //height: parent.height
            //                //anchors.left: lbl.right
            //                //anchors.leftMargin: 10
            //                labelText:"Title"
            //                firstTumblerVisibility: true
            //                secTumblerVisibility: false
            //                thirdTumblerVisibility: false
            //                firstTumblerModel:["Mr","Mrs","Dr","Other"]
            //            }
            NewPatientRiskFactorSwitchSliderHorizontal{
                id:titleOperator
                anchors.fill: parent
                //height: 150
                labelText: "Title"
                dataTumblersecVisibility: false
                dataTumblerthirdVisibility: false
                dataTumblerfirstVisibility: true
                topSliderMinValue: 0
                labelCol1or2:false
                topSliderMaxValue: headerDelegate1.switchMetricsChecked ? 150: 1000
                dataTumblerNoOrColorDelegate:false
                dataTumblerFirstModel: ["Mr","Dr","Mrs","Miss","Other"]
                topSliderModel: headerDelegate1.switchMetricsChecked ? 150: 1000
                topSliderLabelText: headerDelegate1.switchMetricsChecked? "kg": "lbs"
                dataSwitchesVisible: false
                topSliderVisible: false
                btmSliderVisible:false
                eyeColorDialVisibilty: false
            }
        }
        Rectangle{
            id:rec2
            anchors.top: parent.top
            //anchors.top: rec1.bottom
            //anchors.topMargin: 10
            //Layout.rowSpan: 1
            //Layout.row: 2
            //Layout.rowSpan: 1
            anchors.left:  rec1.right
            anchors.leftMargin: 10
            Layout.row: 1
            Layout.column: 2
            Layout.columnSpan: 1
            Layout.fillWidth: true
            height:75//genderOperator.height//4// parent.height/4//weightOperator.height
            //width: parent.width/2//patientTitleTumbler.width
            //            NewPatientDataTumbler{
            //                id:patientGenderTumbler
            //                labelText:"Gender"
            //                //height: parent.height
            //                // anchors.left: lbl.right
            //                // anchors.leftMargin: 10
            //                firstTumblerVisibility: true
            //                secTumblerVisibility: false
            //                thirdTumblerVisibility: false
            //                firstTumblerModel:["Male","Female","Other"]
            //            }
            //color: "black"
            NewPatientRiskFactorSwitchSliderHorizontal{
                id:genderOperator
                anchors.fill: parent
                //height: 150
                labelText: "Gender"
                dataTumblersecVisibility: false
                dataTumblerthirdVisibility: false
                dataTumblerfirstVisibility: true
                labelCol1or2:false
                topSliderMinValue: 0
                topSliderMaxValue: headerDelegate1.switchMetricsChecked ? 150: 1000
                dataTumblerNoOrColorDelegate:false
                dataTumblerFirstModel: ["Male","Female","Other"]
                topSliderModel: headerDelegate1.switchMetricsChecked ? 150: 1000
                topSliderLabelText: headerDelegate1.switchMetricsChecked? "kg": "lbs"
                dataSwitchesVisible: false
                topSliderVisible: false
                btmSliderVisible:false
                eyeColorDialVisibilty: false
            }
        }
    }




}
