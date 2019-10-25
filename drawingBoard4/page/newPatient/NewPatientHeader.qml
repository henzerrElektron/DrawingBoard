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
    width: 1000
    signal invokeSource(var source)
    onInvokeSource: {
        console.log("Source invoked"+source)
    }

    signal invokeIndex(int index)
    onInvokeIndex: {
        console.log("Index invoked"+index)
    }
    GridLayout{
        id: mainRow
        width: 700
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
                actionGridGroup:StringConstants.modelNewPatientItems//"newPatientItems"
                actionFilterName: StringConstants.modelNewPatientItems
                labelText: StringConstants.label_newPtPgHeader
                logoVisible: false
                Component.onCompleted: {
                    pgTitle.invokeSource.connect(rectangle.invokeSource)
                    pgTitle.invokeIndex.connect(rectangle.invokeIndex)
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
            Layout.leftMargin: 10
            Layout.rightMargin: 10
            Layout.bottomMargin: 10
            GridLayout{
                id: mainCol
                anchors.fill: parent
                columns: 4
                rows: 2
                Rectangle{
                    id:rectangleSub1
                    color: StringConstants.testPage_backgroundColor//StringConstants.actionBtnBackgroundColor//StringConstants.testPage_backgroundColor
                    Layout.column: 1
                    Layout.row:1
                    anchors.top: parent.top
                    //Layout.fillHeight: true
                    Layout.fillWidth: true
                    //width: 100
                    height: 75//pageTitle.height<30?30:pageTitle.height
                   // border.width: 1
                  //  border.color: StringConstants.barBackgroundColor
                    anchors.left: rectangleSub3.left
                    anchors.leftMargin: 30
                    anchors.right: rectangeSub3.right
                    anchors.rightMargin: 30
                    NewPatientTitleGender{
                        id:pgTitleGender
                        anchors.fill: parent
                    }

                    //height: 150
                    //                    NewPatientDataTumbler{
                    //                        id:pageTitle
                    //                        anchors.fill: parent
                    //                        labelHorizontal: true
                    //                        //lblAlignCentre:true
                    //                        //labelVisible:false
                    //                        labelText: StringConstants.lbl_npPatientTitle
                    //                        firstTumblerVisibility: false
                    //                        secTumblerVisibility: false
                    //                        thirdTumblerVisibility: false
                    //                        firstTumblerModel:OtherConstants.modelTitle
                    //                        comboBoxModel: OtherConstants.modelTitle
                    //                    }
                }

                //                Rectangle{
                //                    id:rectangleSub2
                //                    color: StringConstants.actionBtnBackgroundColor//StringConstants.testPage_backgroundColor//"green"///
                //                    Layout.column: 2
                //                    Layout.row: 1
                //                    //Layout.fillHeight: true
                //                    Layout.alignment: Qt.AlignLeft
                //                    anchors.top: parent.top
                //                    //Layout.fillWidth: true
                //                    width: 100
                //                    height: pageGender.height<30?30:pageGender.height
                //                    border.width: 1
                //                    border.color: StringConstants.barBackgroundColor
                //                    //height: 150
                //                    NewPatientDataTumbler{
                //                        id:pageGender
                //                        //anchors.fill: parent
                //                        anchors.left: parent.left
                //                        labelHorizontal: true
                //                        //lblAlignCentre:true
                //                        //labelVisible:false
                //                        labelText: StringConstants.lbl_npPatientGender
                //                        firstTumblerVisibility: false
                //                        secTumblerVisibility: false
                //                        thirdTumblerVisibility: false
                //                        firstTumblerModel:OtherConstants.modelGender
                //                        comboBoxModel: OtherConstants.modelGender
                //                    }
                //                }
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
                    color:StringConstants.testPage_backgroundColor
                    Layout.column: 1//3
                    Layout.row: 2
                    Layout.rowSpan: 1
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    anchors.top:  rectangleSub1.bottom
                    anchors.bottom: parent.bottom
                    Layout.minimumWidth: parent.width/2
                    Layout.maximumWidth: parent.width/2
                    Layout.leftMargin:40
                    width: 200
                    height: 300
                    //Layout.minimumHeight: parent.height// - rectangle1.height
                    // Layout.maximumHeight: parent.height //- rectangle1.height
                    // Layout.preferredHeight: parent.height
                    NewPatientPersonalDetails{
                        id:pageLabels
                        //anchors.fill: parent
                        anchors.top: parent.top
                        anchors.topMargin: IntegerConstants.margin10
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 0
                        anchors.right: parent.right
                        anchors.rightMargin: 0
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        //gridRow:IntegerConstants.rowCount3
                        //                        lbl1Visible:false
                        //                        lbl2Visible: false
                        //                        lbl3Visible: false
                        //                        lbl4Visible: false
                        //                        lbl5Visible: false
                        //                        lbl6Vislbe: false
                        //                        lbl7Visible: false
                        pageSpOrNp:false
                        pageNpSpTp:1
                        Component.onCompleted: {
                            console.log("I am completed")
                        }
                    }
                }
                Rectangle {
                    id: rectangleSub4
                    color:StringConstants.actionBtnBackgroundColor//testPage_backgroundColor// "black"//
                    Layout.column: 4
                    border.color: StringConstants.barBackgroundColor
                    border.width: 1
                    // Layout.row: 1
                    // Layout.rowSpan: 3
                    //anchors.left: rectangleSub3.right
                    Layout.fillHeight: true
                    Layout.topMargin: 10
                    Layout.preferredWidth: pageSwitchButtons.width//pageSwitchButtons.width
                    Layout.maximumWidth: pageSwitchButtons.width//parent.width/4
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





















































































/*##^##
Designer {
    D{i:1;anchors_height:200;anchors_width:200;anchors_x:107;anchors_y:66}
}
##^##*/



/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1;anchors_height:200;anchors_width:200;anchors_x:107;anchors_y:66}
}
 ##^##*/
