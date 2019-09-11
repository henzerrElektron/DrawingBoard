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
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0

Rectangle {
    id: searchTable
    color: "white"//"transparent"
    //color: "red"
    //anchors.fill: parent
    //color: "transparent"
    //Layout.rowSpan: 2
    //height: label.height+label_PatientName.height
     signal selectedText(string curText,string role)
    onSelectedText: {
        console.log("The selected Text is"+curText+role)
    }

    GridLayout{
        id: mainGridRow
        //width: 700
        anchors.fill: parent
        anchors.leftMargin: 10
        anchors.rightMargin: 10
        columns: 3
        rows:2
        //columnSpacing: 10
        //rowSpacing: 5
        Label{
            id:label
            text: StringConstants.label_searchQuestion
            color: StringConstants.actionBtnBackgroundColor
            Layout.alignment: Qt.AlignTop |Qt.AlignLeft
            font: OtherConstants.fontFamily
            //font.weight: Font.ExtraBold
            //font.pixelSize:25
            //Layout.fillHeight: true
            //Layout.fillWidth: true
            Layout.column: 1
            Layout.columnSpan: 3
            Layout.rowSpan: 1
            Layout.row: 1
            //height: 100
        }

        SwitchSearchBox {
            id: label_lblPatientName
            anchors.top: label.bottom
            comboModel: theExistingPatientsModel
            commboTextRole: "First name"
            //anchors.left: parent.left
            //anchors.leftMargin: 0
            //lblOrText: false
            //anchors.top: label.bottom//parent.top//label.bottom
            //anchors.topMargin: 10
            //Layout.alignment: Qt.AlignTop |Qt.AlignLeft
            labelText: StringConstants.label_switchPatientFirstName//label_switchPatientSurname
            //Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.column: 1
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.row: 2
            comboInputHints:Qt.ImhUppercaseOnly|Qt.ImhLowercaseOnly
            comboValidator:RegExpValidator{regExp:/^[A-Za-z]+$/ }
            Component.onCompleted: {
               label_lblPatientName.selectedText.connect(filterModel.setFilterString)
               label_lblPatientName.selectedText.connect(searchTable.selectedText)
            }



            //width: parent.width/3
            //height: parent.height/3

//            onCurrentIndexChanged: {
//                filterModel.setFilterString(currentText)
//            }
//            onCurrentTextChanged: {
//                filterModel.setFilterString(currentText)
//            }

        }

        SwitchSearchBox {
            id: label_PatientName
            anchors.top: label.bottom
            labelText: StringConstants.label_switchPatientSurname
            comboModel: theExistingPatientsModel
            commboTextRole: "Surname"
            comboInputHints:Qt.ImhUppercaseOnly|Qt.ImhLowercaseOnly
            comboValidator:RegExpValidator{regExp:/^[A-Za-z]+$/ }
           // anchors.top: label.bottom
           // anchors.topMargin: 10
            //text: qsTr("Label")
            //lblOrText: true
            //Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.column: 2
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.row: 2
            Component.onCompleted: {
                label_PatientName.selectedText.connect(filterModel.setFilterString)
                label_PatientName.selectedText.connect(searchTable.selectedText)
              // label_lblPatientName.selectedText.connect(filterModel.setFilterString)
            }
            //width: parent.width/3
            //height: parent.height/3
            //anchors.right: label_lblPatientName.right
            //anchors.rightMargin: IntegerConstants.testPage_rightMargin
        }
        SwitchSearchBox {
            id: label_lblmedicalRef
            anchors.top: label.bottom
            comboModel: theExistingPatientsModel
            commboTextRole: "Medical Reference"
            comboInputHints:Qt.ImhUppercaseOnly|Qt.ImhLowercaseOnly
            comboValidator:RegExpValidator{regExp:/^\w+$/ }
           // anchors.top: label.bottom
           // anchors.topMargin: 10
            labelText: StringConstants.label_testPgMedRef
            //anchors.left: parent.left
            //anchors.leftMargin: 0
            //lblOrText: false
            //text: StringConstants.label_testPgMedRef
            //Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.column: 3
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.row: 2
            Component.onCompleted: {
               label_lblmedicalRef.selectedText.connect(filterModel.setFilterString)
               label_lblmedicalRef.selectedText.connect(searchTable.selectedText)
            }
            //width: parent.width/3
            //height: parent.height/3

        }

    }
}
