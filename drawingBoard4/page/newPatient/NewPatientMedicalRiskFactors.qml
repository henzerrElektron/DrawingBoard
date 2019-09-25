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
import ApplicationConstants 1.0


Rectangle{
    id:mainRec
    anchors.fill: parent
    //width: mainGrid.width
    //height: mainGrid.height
    GridLayout{
        id:mainGrid
        rowSpacing: 5
        anchors.fill: parent
        //height: 2*subRec1.height+8* subRec2.height
        rows:6//10
        Rectangle{
            id:subRec1
            Layout.row: 1
            Layout.rowSpan: 1
            Layout.minimumHeight: 50
            Layout.maximumHeight: 50
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignTop
            RiskFactorHeaderDelegate{
                id: headerDelegate1
                anchors.fill: parent
                switchMetricsVisible:false
                addSupplementVisible:false
                riskFactorLabel: StringConstants.lbl_otherRiskFactors
                onSwitchMetricsCheckedChanged: {
                    if(switchMetricsChecked)
                    {
                        subRec4.height = parent.height/5
                        update()
                    }
                    else
                    {
                        subRec4.height = parent.height/8
                        update()
                    }
                }
            }
        }

        Rectangle{
            id:subRec2
            Layout.row: 2
            Layout.rowSpan: 1
            Layout.fillWidth: true
            Layout.minimumHeight: 15
            Layout.maximumHeight: 15
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            Label  {
                id:label
                // Layout.row: 1
                // Layout.rowSpan: 1
                //anchors.top: headerDelegate1.bottom
                //anchors.topMargin: 60
                //width: parent.width
                //height: 15
                anchors.fill: parent
                text: StringConstants.lbl_dietAndLifeStyle//qsTr("Diet and LifeStyle")
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                //anchors.horizontalCenter: parent.horizontalCenter

            }

        }
//        Rectangle{
//            id:subRec3
//            Layout.row: 3
//            Layout.rowSpan: 1
//            //Layout.fillHeight: true
//            Layout.fillWidth: true
//            //Layout.fillHeight: true
//            Layout.minimumHeight: 95//100//93
//            Layout.maximumHeight: 95//100//93
//            NewPatientRiskFactorSwitchSliderHorizontal{
//                id:weightOperator
//                anchors.fill: parent
//                //height: 150
//                labelText: "Weight"
//                dataTumblersecVisibility: false
//                dataTumblerthirdVisibility: false
//                dataTumblerfirstVisibility: true
//                topSliderMinValue: 0
//                topSliderMaxValue: headerDelegate1.switchMetricsChecked ? 150: 1000
//                dataTumblerNoOrColorDelegate:false
//                dataTumblerFirstModel: headerDelegate1.switchMetricsChecked ? 150: 1000
//                topSliderModel: headerDelegate1.switchMetricsChecked ? 150: 1000
//                topSliderLabelText: headerDelegate1.switchMetricsChecked? "kg": "lbs"
//                btmSliderVisible:false
//                eyeColorDialVisibilty: false
//            }

//        }
//        Rectangle{
//            id:subRec4
//            Layout.row: 4
//            Layout.rowSpan: 1
//            Layout.fillWidth: true
//            Layout.fillHeight: true
//            Layout.minimumHeight: headerDelegate1.switchMetricsChecked ?120:95//12093
//            Layout.maximumHeight: headerDelegate1.switchMetricsChecked ?120:95//12093
//            NewPatientRiskFactorSwitchSliderHorizontal{
//                id:heightOperator
//                anchors.fill: parent
//                labelText: "Height"
//                dataTumblersecVisibility: headerDelegate1.switchMetricsChecked ?true:false
//                dataTumblerfirstVisibility: true
//                dataTumblerthirdVisibility: false
//                topSliderMinValue: 0
//                topSliderMaxValue: headerDelegate1.switchMetricsChecked ? 150: 13
//                btmSliderMinValue: 0
//                btmSliderMaxValue: headerDelegate1.switchMetricsChecked ? 13: 13
//                dataTumblerNoOrColorDelegate:false
//                dataTumblerFirstModel: headerDelegate1.switchMetricsChecked ? 150: 13
//                dataTumblerSecModel: headerDelegate1.switchMetricsChecked ? 13: 13
//                topSliderModel: headerDelegate1.switchMetricsChecked ? 150: 13
//                btmSliderModel: headerDelegate1.switchMetricsChecked ? 13: 13
//                topSliderLabelText: headerDelegate1.switchMetricsChecked? "m": "feet"
//                btmSliderLabelText: headerDelegate1.switchMetricsChecked? "m": "inch"
//                btmSliderVisible:headerDelegate1.switchMetricsChecked ?true:false
//                eyeColorDialVisibilty: false
//            }

//        }
//        Rectangle{
//            id:subRec5
//            Layout.row: 5
//            Layout.rowSpan: 1
//            //Layout.fillHeight: true
//            Layout.fillWidth: true
//            Layout.minimumHeight: 95//100//93
//            Layout.maximumHeight: 95//100//93
//            NewPatientRiskFactorSwitchSliderHorizontal{
//                id:cigOperator
//                labelText: "Smoker"
//                dataTumblersecVisibility: false
//                dataTumblerfirstVisibility: true
//                dataTumblerthirdVisibility: false
//                topSliderMinValue: 0
//                topSliderMaxValue:100
//                dataTumblerNoOrColorDelegate:false
//                dataTumblerFirstModel: 100
//                topSliderModel:100
//                topSliderLabelText: "Cigarettes per day"
//                btmSliderVisible:false
//                eyeColorDialVisibilty: false
//            }
//        }
//        Rectangle{
//            id:subRec6
//            Layout.row: 6
//            Layout.rowSpan: 1
//            // Layout.fillHeight: true
//            Layout.fillWidth: true
//            Layout.minimumHeight: 95//100//93
//            Layout.maximumHeight: 95//100//93
//            NewPatientRiskFactorSwitchSliderHorizontal{
//                id:alcoholOperator
//                labelText: "Alcohol"
//                dataTumblersecVisibility: false
//                dataTumblerfirstVisibility: true
//                dataTumblerthirdVisibility: false
//                topSliderMinValue: 0
//                topSliderMaxValue:100
//                dataTumblerNoOrColorDelegate:false
//                dataTumblerFirstModel: 100
//                topSliderModel:100
//                topSliderLabelText: "units per week"
//                btmSliderVisible:false
//                eyeColorDialVisibilty: false
//            }
//        }
        Rectangle{
            id:subRec7
            Layout.row: 3
            Layout.rowSpan: 1
            //Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.minimumHeight: 95//100//93
            Layout.maximumHeight: 95//100//93
            NewPatientRiskFactorSwitchSliderHorizontal{
                id:medicineOperator
                labelText: "Lutein/Zeaxanthin Intake"
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

        Rectangle{
            id:subRec8
            Layout.row: 4
            Layout.rowSpan: 1
            anchors.top: subRec7.bottom
            anchors.topMargin: 5//10
            //Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.minimumHeight: 15//20
            Layout.maximumHeight: 15//20
            Label  {
                id:label1
                // Layout.row: 1
                // Layout.rowSpan: 1
                //height: 15
                //anchors.top: rec5.bottom
                //anchors.topMargin: 0
                anchors.left: parent.left
                anchors.right: parent.right
                text: qsTr("Medical Factors")
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            }
        }
        Rectangle{
            id:subRec9
            Layout.row: 5
            Layout.rowSpan: 1
            anchors.top: subRec8.bottom
            //Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.minimumHeight:35//94//35// 93
            Layout.maximumHeight: 35//94//35//93
            NewPatientRiskFactorSwitchSliderHorizontal{
                id:amdOperator
                anchors.fill: parent
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
            id:subRec10
            Layout.row:6
            Layout.rowSpan: 1
            Layout.fillWidth: true
            anchors.top: subRec9.bottom
            //Layout.fillHeight: true
            Layout.minimumHeight: 65//70
            Layout.maximumHeight: 65//70
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
    }

}
//   ScrollIndicator.vertical: ScrollIndicator { }
//}






















/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1;anchors_x:144;anchors_y:56}
}
 ##^##*/
