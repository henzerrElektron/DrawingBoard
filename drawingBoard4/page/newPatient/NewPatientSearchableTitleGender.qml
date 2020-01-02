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
import "."
import "./../../images/"
//import "./../../imports/"
import "./../../models/"
import "./../../delegates/"
import "./../test/"
import "./../changePatient/"
import "./../newPatient/"
import ApplicationConstants 1.0
//import SwitchPatientTableModel 0.1
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0

Rectangle {
    id: searchTable
    color: StringConstants.testPage_backgroundColor//"white"//"transparent"
    anchors.fill: parent
    signal selectedText(string curText,string role)
    height: mainGridRow.height
//    NewPatientGroupLabel{
//        id:searchLabel
//        text: StringConstants.label_searchQuestion
//        //color: StringConstants.actionBtnBackgroundColor
//        Layout.alignment: Qt.AlignTop |Qt.AlignLeft
//        font: OtherConstants.fontFamily
//        anchors.left: parent.left
//        anchors.right: parent.right
//        //Layout.fillWidth: true
//        //Layout.column: 1
//        //Layout.columnSpan: 3
//        //Layout.rowSpan: 1
//        //Layout.row: 1
//         height: 30
//    }
    onSelectedText: {
        console.log("The selected Text is"+curText+role)
    }
    GridLayout{
        id: mainGridRow
        anchors.top: searchLabel.bottom
        anchors.left: parent.left
        anchors.right: parent.right
        //anchors.leftMargin: 10
        //anchors.rightMargin: 10
        columns: 3
        rows:2
        //Label{
        //SwitchPatientTableModel{id:theGreatModel}
        Rectangle{
            id:rectangleSub1
            color: StringConstants.testPage_backgroundColor//testPage_backgroundColor
            Layout.fillHeight: true
            Layout.fillWidth: true
            anchors.top: searchLabel.bottom
            Layout.column: 1
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.row: 1
            Layout.minimumHeight: 75
            Layout.maximumWidth: 375
            SwitchSearchBox {
                id: label_lblPatientTitle
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                comboBoxMargin:150
                hideBorder:true
                comboBoxRoleOrModelFlag:false
                comboBoxModel:OtherConstants.modelTitle//["First", "Second", "Third"]//theExistingPatientsModel
                comboBoxtypes:OtherConstants.modelTitle
                onComboBoxModelChanged: {
                    console.log("the mode is"+comboBoxModel)
                }
                comboBoxLabel:StringConstants.lbl_npPatientTitle
                comboBoxTextRole: "key"//StringConstants.lbl_npPatientTitle
                comboBoxInputHints:Qt.ImhUppercaseOnly|Qt.ImhLowercaseOnly
                comboBoxValidator:RegExpValidator{regExp:/^[A-Za-z]+$/ }
//                Component.onCompleted: {
//                    label_lblPatientName.selectedText.connect(filterModel.setFilterString)
//                    label_lblPatientName.selectedText.connect(searchTable.selectedText)
//                }
            }
        }
        Rectangle{
            id:rectangleSub2
            color:StringConstants.testPage_backgroundColor//testPage_backgroundColor
            anchors.top: searchLabel.bottom
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.column: 2
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.row: 1
            anchors.left: rectangleSub1.right
            anchors.leftMargin: 100
            Layout.minimumHeight: 75
            Layout.maximumWidth: 300
            SwitchSearchBox {
                id: label_PatientGender
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                hideBorder:true
                comboBoxRoleOrModelFlag:false
                comboBoxLabel:StringConstants.lbl_npPatientGender
                comboBoxModel: OtherConstants.modelGender//["First", "Second", "Third"]//theExistingPatientsModel
                comboBoxTextRole: "key"//StringConstants.lbl_npPatientGender
                comboBoxtypes:OtherConstants.modelGender
                comboBoxInputHints:Qt.ImhUppercaseOnly|Qt.ImhLowercaseOnly
                comboBoxValidator:RegExpValidator{regExp:/^[A-Za-z]+$/ }
                Component.onCompleted: {
                    //label_PatientName.selectedText.connect(filterModel.setFilterString)
                    //label_PatientName.selectedText.connect(searchTable.selectedText)
                }

            }
        }

//        Rectangle{
//            id:rectangleSub3
//            color: StringConstants.actionBtnBackgroundColor//testPage_backgroundColor
//            anchors.top: searchLabel.bottom
//            Layout.fillWidth: true
//            Layout.minimumHeight: 75
//            Layout.column: 3
//            Layout.columnSpan: 1
//            Layout.rowSpan: 1
//            Layout.row: 1

//            SwitchSearchBox {
//                id: label_lblmedicalRef
//                anchors.top: parent.top
//                anchors.bottom: parent.bottom
//                anchors.left: parent.left
//                anchors.right: parent.right
//                anchors.leftMargin: 10
//                anchors.rightMargin: 10
//                comboBoxModel: theExistingPatientsModel//["First", "Second", "Third"]//theExistingPatientsModel
//                comboBoxTextRole: "MedicalReference"
//                comboBoxtypes:theExistingPatientsModel.MedRefRole
//                comboBoxInputHints:Qt.ImhUppercaseOnly|Qt.ImhLowercaseOnly
//                comboBoxValidator:RegExpValidator{regExp:/^\w+$/ }
//                Component.onCompleted: {
//                    label_lblmedicalRef.selectedText.connect(filterModel.setFilterString)
//                    label_lblmedicalRef.selectedText.connect(searchTable.selectedText)
//                }
//            }
//        }



    }
}











/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
