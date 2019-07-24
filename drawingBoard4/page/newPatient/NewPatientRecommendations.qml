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
        height: 50
        onSwitchMetricsCheckedChanged: {
            if(switchMetricsChecked)
            {
                rec2.height = parent.height/5
            }
            else
            {
                rec2.height = parent.height/8
            }
        }
    }

    Label  {
        id:label
        // Layout.row: 1
        // Layout.rowSpan: 1
        anchors.top: headerDelegate1.bottom
        //anchors.topMargin: 60
        width: parent.width
        height: 15
        text: qsTr("Diet and LifeStyle")
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
            id:weightOperator
            anchors.fill: parent
            //height: 150
            labelText: "Weight"
            dataTumblersecVisibility: false
            dataTumblerthirdVisibility: false
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
        //color: "black"
        anchors.top: rec1.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.right: parent.right
        height: parent.height/8//heightOperator.height
       // height:headerDelegate1.switchMetricsChecked? parent.height/10:parent.height/7
        NewPatientRiskFactorSwitchSliderHorizontal{
            id:heightOperator
            labelText: "Height"
            dataTumblersecVisibility: headerDelegate1.switchMetricsChecked ?true:false
            dataTumblerfirstVisibility: true
            dataTumblerthirdVisibility: false
            topSliderMinValue: 0
            topSliderMaxValue: headerDelegate1.switchMetricsChecked ? 150: 13
            btmSliderMinValue: 0
            btmSliderMaxValue: headerDelegate1.switchMetricsChecked ? 13: 13
            dataTumblerNoOrColorDelegate:false
            dataTumblerFirstModel: headerDelegate1.switchMetricsChecked ? 150: 13
            dataTumblerSecModel: headerDelegate1.switchMetricsChecked ? 13: 13
            topSliderModel: headerDelegate1.switchMetricsChecked ? 150: 13
            btmSliderModel: headerDelegate1.switchMetricsChecked ? 13: 13
            topSliderLabelText: headerDelegate1.switchMetricsChecked? "m": "feet"
            btmSliderLabelText: headerDelegate1.switchMetricsChecked? "m": "inch"
            btmSliderVisible:headerDelegate1.switchMetricsChecked ?true:false
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
            id:cigOperator
            labelText: "Smoker"
            dataTumblersecVisibility: false
            dataTumblerfirstVisibility: true
            dataTumblerthirdVisibility: false
            topSliderMinValue: 0
            topSliderMaxValue:100
            dataTumblerNoOrColorDelegate:false
            dataTumblerFirstModel: 100
            topSliderModel:100
            topSliderLabelText: "Cigarettes per day"
            btmSliderVisible:false
            eyeColorDialVisibilty: false
        }
    }

    Rectangle{
        id:rec4
        //color: "black"
        anchors.top: rec3.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.right: parent.right
        height: weightOperator.height
        NewPatientRiskFactorSwitchSliderHorizontal{
            id:alcoholOperator
            labelText: "Alcohol"
            dataTumblersecVisibility: false
            dataTumblerfirstVisibility: true
            dataTumblerthirdVisibility: false
            topSliderMinValue: 0
            topSliderMaxValue:100
            dataTumblerNoOrColorDelegate:false
            dataTumblerFirstModel: 100
            topSliderModel:100
            topSliderLabelText: "units per week"
            btmSliderVisible:false
            eyeColorDialVisibilty: false
        }
    }

    Rectangle{
        id:rec5
        color: "black"
        anchors.top: rec4.bottom
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.right: parent.right
        height: weightOperator.height
        NewPatientRiskFactorSwitchSliderHorizontal{
            id:medicineOperator
            dataTumblersecVisibility: false
            dataTumblerfirstVisibility: true
            dataTumblerthirdVisibility: false
            topSliderMinValue: 0
            topSliderMaxValue:100
            dataTumblerNoOrColorDelegate:false
            dataTumblerFirstModel: 100
            topSliderModel:100
            topSliderLabelText: "portions per day"
            btmSliderVisible:false
            eyeColorDialVisibilty: false
        }
    }
    Label  {
        id:label1
        // Layout.row: 1
        // Layout.rowSpan: 1
        height: 15
        anchors.top: rec5.bottom
        anchors.topMargin: 0
        anchors.left: parent.left
        anchors.right: parent.right
        text: qsTr("Medical Factors")
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        Layout.alignment: Qt.AlignHCenter | Qt.AlignTop

    }
    Rectangle{
        id:rec6
        color: "black"
        anchors.top: label1.bottom//parent.top//
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.right: parent.right
        //anchors.bottom: parent.bottom
        //anchors.bottomMargin: 10
        height: parent.height/16//weightOperator.height//amdOperator.height
        NewPatientRiskFactorSwitchSliderHorizontal{
            id:amdOperator
            labelText: "AMD family History"
            dataSwitchesVisible:true
            dataTumblersecVisibility: false
            dataTumblerfirstVisibility: false
            dataTumblerthirdVisibility: false
            dataTumblerVisibility:false
            //topSliderMinValue: 0
            //topSliderMaxValue:100
            dataTumblerNoOrColorDelegate:false
            topSliderVisible: false
            btmSliderVisible: false
            //topSliderModel:100
            //topSliderLabelText: "eyeColor"
            //btmSliderVisible:false
            eyeColorDialVisibilty: false
        }

    }
    Rectangle{
        id:rec7
        //color: "black"
        anchors.top: rec6.bottom//parent.top//
        anchors.topMargin: 10
        anchors.left: parent.left
        anchors.right: parent.right
        height: parent.height/10//weightOperator.height//amdOperator.height
        NewPatientRiskFactorSwitchSliderHorizontal{
            id:eyeColorOperator
            labelText: "Eye Color"
            dataSwitchesVisible:false
            dataTumblersecVisibility: false
            dataTumblerfirstVisibility: true
            dataTumblerthirdVisibility: false
            topSliderMinValue: 0
            topSliderMaxValue:100
            dataTumblerNoOrColorDelegate:true
            dataTumblerFirstModel: ColorModel{}
            topSliderVisible: false
            btmSliderVisible: false
            //topSliderModel:100
            //topSliderLabelText: "eyeColor"
            //btmSliderVisible:false
            eyeColorDialVisibilty: true
        }
}
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
