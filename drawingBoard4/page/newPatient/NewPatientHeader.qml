import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Shapes 1.11
import QtQuick.Templates 2.5
import QtQuick.Layouts 1.12
import QtQuick.Extras 1.4
import QtQuick.Dialogs.qml 1.0
import QtQuick.Controls.Universal 2.0
import Qt.labs.calendar 1.0
import QtQuick.Controls.Material 2.0
import QtQuick.Controls 2.3
import Qt.labs.settings 1.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Shapes 1.11
import QtQml.Models 2.12
import ApplicationConstants 1.0
import "."
import "./../../images/"
//import "./../../imports/"
import "./../../models/"
import "./../../delegates/"
import "./../test/"
import "./../../common/"
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
//Item {
//  width: 950
//  height: 275

Rectangle {
    id: rectangle
    color: StringConstants.testPage_backgroundColor//StringConstants.testPage_backgroundColor
    anchors.fill: parent
    //height: 400
    // width: 800
    GridLayout{
        id: mainRow
        // width: 700
        anchors.fill: parent
        //columns: 3
        rows:2//3

        Rectangle {
            id: rectangle1
            color: StringConstants.testPage_backgroundColor
            height:75// pgTitle.height
            Layout.fillWidth: true
            Layout.row: 1
            PageTitle{
                id:pgTitle
                anchors.fill: parent
                actionGridGroup:"newPatientItems"
                labelText: StringConstants.label_newPtPgHeader
                Component.onCompleted: {

                }
            }//TestPageTitle
        }//TestPageTitle
        Rectangle {
            id: rectangle2
            color: StringConstants.testPage_backgroundColor
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.row: 2
            Layout.rowSpan: 2
            GridLayout{
                id: mainCol
                anchors.fill: parent
                columns: 4
                //rows: 3
                Rectangle{
                    id:rectangleSub1
                    color: StringConstants.testPage_backgroundColor
                    Layout.column: 1
                    //Layout.row: 2
                    Layout.fillHeight: true
                    //Layout.fillWidth: true
                    width: 100
                    //height: 150
                    NewPatientDataTumbler{
                        id:pageTitle
                        anchors.fill: parent
                        labelText: StringConstants.lbl_npPatientTitle
                        firstTumblerVisibility: true
                        secTumblerVisibility: false
                        thirdTumblerVisibility: false
                        firstTumblerModel:OtherConstants.modelTitle
                        comboBoxModel: OtherConstants.modelTitle
                    }
                }

                Rectangle{
                    id:rectangleSub2
                    color: StringConstants.testPage_backgroundColor//"green"///
                    Layout.column: 2
                    // Layout.row: 3
                    Layout.fillHeight: true
                    Layout.alignment: Qt.AlignLeft
                    //Layout.fillWidth: true
                    width: 100
                    //height: 150
                    NewPatientDataTumbler{
                        id:pageGender
                        //anchors.fill: parent
                        anchors.left: parent.left
                        labelText: StringConstants.lbl_npPatientGender
                        firstTumblerVisibility: true
                        secTumblerVisibility: false
                        thirdTumblerVisibility: false
                        firstTumblerModel:OtherConstants.modelGender
                        comboBoxModel: OtherConstants.modelGender
                    }
                }
                //                Rectangle {
                //                    id: rectangleSub5
                //                    color: Constants.testPage_backgroundColor
                //                    Layout.column: 1
                //                    Layout.row: 1
                //                    Layout.rowSpan: 1
                //                    Layout.alignment: Qt.AlignLeft
                //                    //Layout.fillHeight: true
                //                    Layout.fillWidth: true
                //                    height:75
                //                    NewPatientRiskFactorSwitchSliderHorizontal{
                //                        id:titleOperator
                //                        anchors.fill: parent
                //                        //height: 150
                //                        labelText: "Title"
                //                        dataTumblersecVisibility: false
                //                        dataTumblerthirdVisibility: false
                //                        dataTumblerfirstVisibility: true
                //                        topSliderMinValue: 0
                //                        labelCol1or2:false
                //                        dataTumblerNoOrColorDelegate:false
                //                        dataTumblerFirstModel: ["Mr","Dr","Mrs","Miss","Other"]
                //                        dataSwitchesVisible: false
                //                        topSliderVisible: false
                //                        btmSliderVisible:false
                //                        eyeColorDialVisibilty: false
                //                    }
                //                }
                //                Rectangle {
                //                    id: rectangleSub6
                //                    color: Constants.testPage_backgroundColor
                //                    Layout.column: 1
                //                    Layout.row: 2
                //                    Layout.rowSpan: 1
                //                    Layout.alignment: Qt.AlignLeft
                //                    //Layout.fillHeight: true
                //                    Layout.fillWidth: true
                //                    height:75
                //                    NewPatientRiskFactorSwitchSliderHorizontal{
                //                        id:genderOperator
                //                        anchors.fill: parent
                //                        //height: 150
                //                        labelText: "Gender"
                //                        dataTumblersecVisibility: false
                //                        dataTumblerthirdVisibility: false
                //                        dataTumblerfirstVisibility: true
                //                        labelCol1or2:false
                //                        topSliderMinValue: 0
                //                        dataTumblerNoOrColorDelegate:false
                //                        dataTumblerFirstModel: ["Male","Female","Other"]
                //                        dataSwitchesVisible: false
                //                        topSliderVisible: false
                //                        btmSliderVisible:false
                //                        eyeColorDialVisibilty: false
                //                    }
                //                }


                Rectangle {
                    id: rectangleSub3
                    color: StringConstants.testPage_backgroundColor
                    Layout.column: 3
                    //Layout.row: 3
                    Layout.rowSpan: 1
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.maximumWidth: parent.width/2
                    NewPatientPersonalDetails{
                        id:pageLabels
                        anchors.top: parent.top
                        anchors.topMargin: IntegerConstants.margin10
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 0
                        anchors.right: parent.right
                        anchors.rightMargin: 0
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        pageSpOrNp:false
                        pageNpSpTp:1
                    }
                }
                Rectangle {
                    id: rectangleSub4
                    color:StringConstants.testPage_backgroundColor// "black"//
                    Layout.column: 4
                    // Layout.row: 1
                    // Layout.rowSpan: 3
                    Layout.fillHeight: true
                    Layout.maximumWidth: 300//parent.width/4
                    Layout.fillWidth: true
                    Layout.alignment: Qt.AlignRight
                    NewPatientDobTumbler{
                        id:pageSwitchButtons
                        recTextVisible: false
                        //anchors.fill: parent
                        // width: parent.width/2
                        // height: parent.height/2
                        anchors.right: parent.right
                        //anchors.horizontalCenter: parent.horizontalCenter
                        /// anchors.verticalCenter: parent.verticalCenter
                    }//TestPageSwitchButtons
                }

            }
        }
    }


}

//}





















































































/*##^## Designer {
    D{i:1;anchors_height:200;anchors_width:200;anchors_x:107;anchors_y:66}
}
 ##^##*/
