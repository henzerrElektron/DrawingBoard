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
import "./../../common/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0

//Flickable{
//    contentHeight: mainRec.height
//    contentWidth: mainRec.width
//    anchors.fill: parent

Rectangle{
    id:mainRec
    anchors.fill: parent
    border.width: 1
    border.color: StringConstants.borderColorBlack
    //width: mainGrid.width
    //height: mainGrid.height
    GridLayout{
        id:mainGrid
        rowSpacing: 5
        anchors.fill: parent
        anchors.leftMargin: 2
        anchors.rightMargin: 2
        anchors.bottomMargin: 2
        //height: 2*subRec1.height+8* subRec2.height
        rows:10
        Rectangle{
            id:subRec1
            Layout.row: 1
            Layout.rowSpan: 1
            Layout.alignment: Qt.AlignTop
            Layout.minimumHeight: mainRec.height/mainGrid.rows//50
            Layout.maximumHeight: mainRec.height/mainGrid.rows//50
            //Layout.fillHeight: true
            Layout.fillWidth: true
            RiskFactorHeaderDelegate{
                id: headerDelegate1
                switchMetricsVisible:true
                addSupplementVisible:false
                riskFactorLabel:StringConstants.lbl_riskFactors
                anchors.fill: parent
                //                anchors.top: parent.top
                //                anchors.left: parent.left
                //                anchors.right: parent.right
                //                height: 50
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
            anchors.top: subRec1.bottom
            anchors.topMargin:10
            Layout.alignment: Qt.AlignHCenter //| Qt.AlignTop
            //color: "black"
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
        Rectangle{
            id:rec1
            Layout.row: 3
            Layout.rowSpan: 6
            Layout.fillWidth: true
            Layout.fillHeight: true
            //color: "black"
            anchors.top: label.bottom
            //            anchors.topMargin: 10
            //            anchors.left: parent.left
            //            anchors.leftMargin: 10
            //            anchors.right: parent.right
            //            anchors.rightMargin: 10
            anchors.bottom: subRec8.bottom
            //            anchors.bottomMargin: 10
            // height: parent.height
            //color: "yellow"
            GridLayout{
                id:grid
                anchors.fill: parent
                NewPatientMedicalDetailsRiskFactorGroup{
                    id:modelgroup
                    filterName: StringConstants.model_dietAndLifeStyle//StringConstants.model_medicalDetails
                    anchors.fill: parent
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    verticalLayoutDirection: Grid.TopToBottom
                    layoutDirection:Qt.LeftToRight
                    flow: Grid.LeftToRight
                    flickableDirection: Flickable.HorizontalAndVerticalFlick
                }
            }
        }


        //        Rectangle{
        //            id:subRec3
        //            Layout.row: 3
        //            Layout.rowSpan: 1
        //            //Layout.fillHeight: true
        //            Layout.fillWidth: true
        //            //Layout.fillHeight: true
        //            Layout.minimumHeight: mainRec.height/mainGrid.rows//50//95//100//93
        //            Layout.maximumHeight: mainRec.height/mainGrid.rows//50//95//100//93
        //            NewPatientRiskFactorSwitchSliderHorizontal{
        //                id:weightOperator
        //                anchors.fill: parent
        //                //height: 150
        //                labelText: StringConstants.lbl_weight//"Weight"
        //                dataTumblersecVisibility: false
        //                dataTumblerthirdVisibility: false
        //                dataTumblerfirstVisibility: true
        //                tumblerVisibility:false
        //                firstSwitchVisible:false
        //                secondSwitchVisible:false
        //                topSliderMinValue: 0
        //                topSliderMaxValue: headerDelegate1.switchMetricsChecked ? 150: 1000
        //                dataTumblerNoOrColorDelegate:false
        //                dataTumblerFirstModel: headerDelegate1.switchMetricsChecked ? 150: 1000
        //                topSliderModel: headerDelegate1.switchMetricsChecked ? 150: 1000
        //                topSliderLabelText: headerDelegate1.switchMetricsChecked? StringConstants.lbl_kg: StringConstants.lbl_lbs
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
        //            Layout.minimumHeight: headerDelegate1.switchMetricsChecked ?75:mainRec.height/mainGrid.rows//50//120:95//12093
        //            Layout.maximumHeight: headerDelegate1.switchMetricsChecked ?75:mainRec.height/mainGrid.rows//50//120:95//12093
        //            NewPatientRiskFactorSwitchSliderHorizontal{
        //                id:heightOperator
        //                anchors.fill: parent
        //                labelText: StringConstants.lbl_Height//"Height"
        //                tumblerVisibility:false
        //                firstSwitchVisible:false
        //                secondSwitchVisible:false
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
        //                topSliderLabelText: headerDelegate1.switchMetricsChecked? StringConstants.lbl_meter: StringConstants.lbl_feet
        //                btmSliderLabelText: headerDelegate1.switchMetricsChecked? StringConstants.lbl_meter: StringConstants.lbl_inch
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
        //            Layout.minimumHeight: mainRec.height/mainGrid.rows//50//95//100//93
        //            Layout.maximumHeight: mainRec.height/mainGrid.rows//50//95//100//93
        //            NewPatientRiskFactorSwitchSliderHorizontal{
        //                id:cigOperator
        //                labelText: StringConstants.lbl_smoker//"Smoker"
        //                dataTumblersecVisibility: false
        //                dataTumblerfirstVisibility: true
        //                dataTumblerthirdVisibility: false
        //                tumblerVisibility:false
        //                firstSwitchVisible:false
        //                topSliderMinValue: 0
        //                topSliderMaxValue:100
        //                dataTumblerNoOrColorDelegate:false
        //                dataTumblerFirstModel: 100
        //                topSliderModel:100
        //                topSliderLabelText: StringConstants.lbl_cigPerDay//"Cigarettes per day"
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
        //            Layout.minimumHeight: mainRec.height/mainGrid.rows//50//95//100//93
        //            Layout.maximumHeight: mainRec.height/mainGrid.rows//50//95//100//93
        //            NewPatientRiskFactorSwitchSliderHorizontal{
        //                id:alcoholOperator
        //                labelText: StringConstants.lbl_Alcohol//"Alcohol"
        //                dataTumblersecVisibility: false
        //                dataTumblerfirstVisibility: true
        //                dataTumblerthirdVisibility: false
        //                tumblerVisibility:false
        //                firstSwitchVisible:false
        //                topSliderMinValue: 0
        //                topSliderMaxValue:100
        //                dataTumblerNoOrColorDelegate:false
        //                dataTumblerFirstModel: 100
        //                topSliderModel:100
        //                topSliderLabelText: StringConstants.lbl_unitsPerWeek//"units per week"
        //                btmSliderVisible:false
        //                eyeColorDialVisibilty: false
        //            }
        //        }
        //        Rectangle{
        //            id:subRec7
        //            Layout.row: 7
        //            Layout.rowSpan: 1
        //            //Layout.fillHeight: true
        //            Layout.fillWidth: true
        //            Layout.minimumHeight: mainRec.height/mainGrid.rows//50//95//100//93
        //            Layout.maximumHeight: mainRec.height/mainGrid.rows//50//95//100//93
        //            NewPatientRiskFactorSwitchSliderHorizontal{
        //                id:medicineOperator
        //                labelText:StringConstants.lbl_supplementName
        //                dataTumblersecVisibility: false
        //                dataTumblerfirstVisibility: false//true
        //                dataTumblerthirdVisibility: false
        //                tumblerVisibility:false
        //                firstSwitchVisible:false
        //                topSliderMinValue: 0
        //                topSliderMaxValue:100
        //                dataTumblerNoOrColorDelegate:false
        //                dataTumblerFirstModel: 100
        //                topSliderModel:100
        //                topSliderLabelText: "portions per day"
        //                btmSliderVisible:false
        //                eyeColorDialVisibilty: false
        //            }
        //        }

//        Rectangle{
//            id:subRec8
//            Layout.row: 8
//            Layout.rowSpan: 1
//            // anchors.top: rec1.bottom//subRec7.bottom
//            anchors.topMargin: 5//10
//            //Layout.fillHeight: true
//            Layout.fillWidth: true
//            Layout.minimumHeight: 15//mainRec.height/mainGrid.rows//50//15//20
//            Layout.maximumHeight: 15//mainRec.height/mainGrid.rows//50//15//20
//            color: StringConstants.color_gbTransparent
//            //color: "green"
//            Label  {
//                id:label1
//                // Layout.row: 1
//                // Layout.rowSpan: 1
//                //height: 15
//                //anchors.top: rec5.bottom
//                //anchors.topMargin: 0
//                anchors.left: parent.left
//                anchors.right: parent.right
//                text: StringConstants.lbl_medicalFactors//qsTr("Medical Factors")
//                horizontalAlignment: Text.AlignHCenter
//                verticalAlignment: Text.AlignVCenter
//                Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
//                background: Rectangle{
//                    color: StringConstants.color_gbTransparent
//                }
//            }
//        }
//        Rectangle{
//            id:subRec9
//            Layout.row: 9
//            Layout.rowSpan: 1
//            anchors.top: subRec8.bottom
//            //Layout.fillHeight: true
//            Layout.fillWidth: true
//            Layout.minimumHeight:mainRec.height/mainGrid.rows//94//35// 93
//            Layout.maximumHeight: mainRec.height/mainGrid.rows//94//35//93
//            //color: "blue"
//            NewPatientRiskFactorSwitchSliderHorizontal{
//                id:amdOperator
//                anchors.fill: parent
//                labelText: StringConstants.lbl_amdHistory//"AMD family History"
//                dataSwitchesVisible:true
//                dataTumblersecVisibility: false
//                dataTumblerfirstVisibility: false
//                dataTumblerthirdVisibility: false
//                dataTumblerVisibility:false
//                tumblerVisibility:false
//                firstSwitchVisible:false
//                //topSliderMinValue: 0
//                //topSliderMaxValue:100
//                dataTumblerNoOrColorDelegate:false
//                topSliderVisible: false
//                btmSliderVisible: false
//                //topSliderModel:100
//                //topSliderLabelText: "eyeColor"
//                //btmSliderVisible:false
//                eyeColorDialVisibilty: false

//            }
//        }
//        Rectangle{
//            id:subRec10
//            Layout.row:10
//            Layout.rowSpan: 1
//            Layout.fillWidth: true
//            anchors.top: subRec9.bottom
//            //color: "orange"
//            //Layout.fillHeight: true
//            Layout.minimumHeight: mainRec.height/mainGrid.rows+35//50//65//70
//            Layout.maximumHeight: mainRec.height/mainGrid.rows+35//50//65//70
//            NewPatientRiskFactorSwitchSliderHorizontal{
//                id:eyeColorOperator
//                labelText: StringConstants.lbl_eyeColor//"Eye Color"
//                dataSwitchesVisible:false
//                dataTumblersecVisibility: false
//                dataTumblerfirstVisibility: true
//                dataTumblerthirdVisibility: false
//                topSliderMinValue: 0
//                topSliderMaxValue:100
//                dataTumblerNoOrColorDelegate:true
//                tumblerVisibility:true
//                dataTumblerFirstModel: ColorModel{}
//                topSliderVisible: false
//                btmSliderVisible: false
//                //topSliderModel:100
//                //topSliderLabelText: "eyeColor"
//                //btmSliderVisible:false
//                eyeColorDialVisibilty: true
//            }
//        }
    }

}
//   ScrollIndicator.vertical: ScrollIndicator { }
//}






















/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1;anchors_x:144;anchors_y:56}
}
 ##^##*/
