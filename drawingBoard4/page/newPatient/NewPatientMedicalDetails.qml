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
import ApplicationContstants 1.0
Rectangle{
    id:mainRec
    height: 1225
    anchors.fill: parent
    border.width: 1
    border.color: "black"
    NewPatientGroupLabel{
        id:medicalDetailsLabel
        anchors.left: parent.left
        anchors.right: parent.right
        height: 100
        text: "MedicalDetails"
    }

    Label  {
        id:label
        // Layout.row: 1
        // Layout.rowSpan: 1
        anchors.top: medicalDetailsLabel.bottom
        //anchors.topMargin: 60
        width: parent.width
        height: 15
        text: qsTr("Intraocular Lens")
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.horizontalCenter: parent.horizontalCenter
        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
    }
    Rectangle{
        id:rec1
        //color: "black"
        anchors.top: label.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.right: parent.right
        //anchors.bottom: parent.bottom
        height: parent.height/8//weightOperator.height
        NewPatientRiskFactorSwitchSliderHorizontal{
            id:rightFittedOperator
            anchors.fill: parent
            //height: 150
            labelText: "Right Fitted"
            dataTumblersecVisibility: false
            dataTumblerthirdVisibility: false
            dataTumblerfirstVisibility: true
            topSliderMinValue: 0
            topSliderMaxValue:100
            dataTumblerNoOrColorDelegate:false
            dataTumblerFirstModel: 100
            topSliderModel: 100
            topSliderLabelText: "yrs"
            btmSliderVisible:false
            eyeColorDialVisibilty: false
        }
    }
    Rectangle{
        id:rec2
        //color: "black"
        anchors.top: rec1.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.right: parent.right
        height: parent.height/8//heightOperator.height
       // height:headerDelegate1.switchMetricsChecked? parent.height/10:parent.height/7
        NewPatientRiskFactorSwitchSliderHorizontal{
            id:leftFittedOperator
            labelText: "Left Fitted"
            dataTumblersecVisibility: false
            dataTumblerfirstVisibility: true
            dataTumblerthirdVisibility: false
            topSliderMinValue: 0
            topSliderMaxValue: 100
            //btmSliderMinValue: 0
            //btmSliderMaxValue: headerDelegate1.switchMetricsChecked ? 13: 13
            dataTumblerNoOrColorDelegate:false
            dataTumblerFirstModel: 100
            //dataTumblerSecModel: headerDelegate1.switchMetricsChecked ? 13: 13
            topSliderModel: 100//headerDelegate1.switchMetricsChecked ? 150: 13
            //btmSliderModel: headerDelegate1.switchMetricsChecked ? 13: 13
            topSliderLabelText: "yrs"//headerDelegate1.switchMetricsChecked? "m": "feet"
            //btmSliderLabelText: headerDelegate1.switchMetricsChecked? "m": "inch"
            btmSliderVisible:false//headerDelegate1.switchMetricsChecked ?true:false
            eyeColorDialVisibilty: false
        }
    }
    Rectangle{
        id:rec3
        //color: "black"
        anchors.top: rec2.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.right: parent.right
        height: parent.height/8//weightOperator.height
        NewPatientRiskFactorSwitchSliderHorizontal{
            id:diabeticsOperator
            labelText: "Diabetic"
            dataTumblerVisibility: false
            dataTumblersecVisibility: false
            dataTumblerfirstVisibility: false
            dataTumblerthirdVisibility: false
            //topSliderMinValue: 0
            //topSliderMaxValue:100
            dataTumblerNoOrColorDelegate:false
            //dataTumblerFirstModel: 100
            //topSliderModel:100
            //topSliderLabelText: "Cigarettes per day"
            topSliderVisible: false
            btmSliderVisible:false
            eyeColorDialVisibilty: false
        }
    }
}



















































































































































/*##^## Designer {
    D{i:2;anchors_height:470}
}
 ##^##*/