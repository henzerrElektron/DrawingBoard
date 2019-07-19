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
    //height: //dataTumbler.height
    anchors.fill: parent
    // GridLayout{
    //     id:mainGrid
    //     anchors.fill: parent
    //      columns: 4
    //    GridView{
    //        id:mainGridView
    //        anchors.fill: parent
    //        header: RiskFactorHeaderDelegate {
    //            id: headerDelegate
    //        }



    //    }
    //Grid{
    //    anchors.fill: parent
    //    rowSpacing: 10
    //rows: 9
    //Rectangle{
    //    id:firstRec
    //height: 100
    //color: "black"
    RiskFactorHeaderDelegate{
        id: headerDelegate1
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right

    }
    //}

    Label  {
        id:label
        // Layout.row: 1
        // Layout.rowSpan: 1
        anchors.top: headerDelegate1.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.right: parent.right
        text: qsTr("Diet and LifeStyle")
        Layout.alignment: Qt.AlignLeft | Qt.AlignTop
    }
    Rectangle{
        id:rec1
        color: "black"
        anchors.top: label.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.right: parent.right
        height: parent.height/3//weightOperator.height
        NewPatientRiskFactorSwitchSliderHorizontal{
            id:weightOperator
            labelText: "Weight"
            dataTumblersecVisibility: false
            dataTumblerfirstVisibility: true
            topSliderMinValue: 0
            topSliderMaxValue: headerDelegate1.switchMetricsChecked ? 150: 1000
            dataTumblerNoOrColorDelegate:false
            dataTumblerFirstModel: headerDelegate1.switchMetricsChecked ? 150: 1000
            topSliderModel: headerDelegate1.switchMetricsChecked ? 150: 1000
            topSliderLabelText: headerDelegate1.switchMetricsChecked? "kg": "lbs"
            btmSliderVisible:false
            eyeColorDialVisibilty: false
        }
    }
    Rectangle{
        id:rec2
        color: "black"
        anchors.top: rec1.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.right: parent.right
        //height: heightOperator.height
        height: parent.height/3
        NewPatientRiskFactorSwitchSliderHorizontal{
            id:heightOperator
            labelText: "Height"
            dataTumblersecVisibility: true//headerDelegate1.switchMetricsChecked ?true:false
            dataTumblerfirstVisibility: true
            topSliderMinValue: 0
            topSliderMaxValue: headerDelegate1.switchMetricsChecked ? 150: 12
            dataTumblerNoOrColorDelegate:false
            dataTumblerFirstModel: headerDelegate1.switchMetricsChecked ? 150: 12
            dataTumblerSecModel: headerDelegate1.switchMetricsChecked ? 0: 12
            topSliderModel: headerDelegate1.switchMetricsChecked ? 150: 1000
            btmSliderModel: headerDelegate1.switchMetricsChecked ? 0: 12
            topSliderLabelText: headerDelegate1.switchMetricsChecked? "m": "inch"
            btmSliderLabelText: headerDelegate1.switchMetricsChecked? "m": "inch"
            btmSliderVisible:true//headerDelegate1.switchMetricsChecked ?true:false
            eyeColorDialVisibilty: false
        }
    }
    //        Rectangle{
    //            id:rec3
    //            color: "black"
    //            anchors.top: rec2.bottom
    //            anchors.topMargin: 10
    //            anchors.left: parent.left
    //            anchors.right: parent.right
    //            height: weightOperator.height
    //            NewPatientRiskFactorSwitchSlide{
    //                id:cigOperator
    //                labelText: "Smoker"
    //                dataTumblersecVisibility: false
    //                dataTumblerFirstModel: 100
    //                topSliderLabelText: "Cigarettes per day"
    //                btmSliderVisible:false
    //                eyeColorDialVisibilty: false
    //            }
    //        }

    //        Rectangle{
    //            id:rec4
    //            color: "black"
    //            anchors.top: rec3.bottom
    //            anchors.topMargin: 10
    //            anchors.left: parent.left
    //            anchors.right: parent.right
    //            height: weightOperator.height
    //            NewPatientRiskFactorSwitchSlide{
    //                id:alcoholOperator
    //                labelText: "Alcohol"
    //                dataTumblersecVisibility: false
    //                dataTumblerFirstModel: 100
    //                topSliderLabelText: "units per week"
    //                btmSliderVisible:false
    //                eyeColorDialVisibilty: false
    //            }
    //        }

    //        Rectangle{
    //            id:rec5
    //            color: "black"
    //            anchors.top: rec4.bottom
    //            anchors.topMargin: 10
    //            anchors.left: parent.left
    //            anchors.right: parent.right
    //            height: weightOperator.height
    //            NewPatientRiskFactorSwitchSlide{
    //                id:medicineOperator
    //                labelText: "Lutein/ZeaxanthinIntake"
    //                dataTumblersecVisibility: false
    //                dataTumblerFirstModel: 100
    //                topSliderLabelText: "portions per week"
    //                btmSliderVisible:false
    //                eyeColorDialVisibilty: false
    //            }
    //        }
    //        Label  {
    //            id:label1
    //            // Layout.row: 1
    //            // Layout.rowSpan: 1
    //            anchors.top: headerDelegate1.bottom
    //            anchors.topMargin: 10
    //            anchors.left: parent.left
    //            anchors.right: parent.right
    //            text: qsTr("Medical Factors")
    //            Layout.alignment: Qt.AlignLeft | Qt.AlignTop

    //        }
    //    Rectangle{
    //        id:rec6
    //        color: "black"
    //        anchors.top: parent.top//rec4.bottom
    //        anchors.topMargin: 10
    //        anchors.left: parent.left
    //        anchors.right: parent.right
    //        height: amdOperator.height

    //        NewPatientRiskFactorSwitchSlide{
    //            id:amdOperator
    //            ColorModel {
    //                id: colorModel
    //            }
    //            labelText: "Amd Family History"
    //            dataTumblersecVisibility: false
    //            dataTumblerNoOrColorDelegate:true
    //            dataTumblerFirstModel: ColorModel{}
    //            topSliderVisible:false
    //            topSliderLabelText: "eyeColor"
    //            btmSliderVisible:false
    //            eyeColorDialVisibilty: true
    //        }
    //    }
    //        NewPatientRiskFactorSwitchSlide{
    //            id:heightOperator
    //            width: 640
    //            height: 225
    //        }
    // }

}







































































































































/*##^## Designer {
    D{i:2;anchors_height:470}
}
 ##^##*/
