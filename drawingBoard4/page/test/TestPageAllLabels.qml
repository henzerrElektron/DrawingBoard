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
import "./../../imports/"
import "./../../models/"
import "./../../delegates/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0

Rectangle {
    id: rectangle2
    color: StringConstants.testPage_backgroundColor//color: "transparent"
    anchors.fill: parent
    property alias lblPatientNameVisible: label_lblPatientName.visible
    property alias txtPatientNameVisible: label_PatientName.visible
    property alias lblmedicalRefVisible: label_lblmedicalRef.visible
    property alias txtmedicalRefVisible: label_medicalRef.visible
    property alias lblDOBVisible: label_lblDOB.visible
    property alias txtDOBVisible: label_DOB.visible
    property alias lblIOLFittedVisible: label_lblIOLFitted.visible
    property alias txtIOLFittedVisible: label_IOLFitted.visible
    property alias lblIOLAgeVisible: label_lblIOLAge.visible
    property alias txtIOLAgeVisible: label_IOLAge.visible

    //color: "red"
    //anchors.fill: parent
    //color: "transparent"
    //Layout.rowSpan: 2
    GridLayout{
        id: mainGridRow
        columnSpacing: 10
        rowSpacing: 10
        //width: 700
        anchors.fill: parent
        columns: 2
        rows:5
        Layout.minimumHeight: rows* label_PatientName+ rows*rowSpacing
        //rowSpacing: 5
        TestPageLabel {
            id: label_lblPatientName
            //anchors.left: parent.left
            //anchors.leftMargin: 0
            lblOrText: false
            text: StringConstants.label_testPgPatient
            Layout.fillHeight: true
            //Layout.fillWidth: true
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.row: 1
            Layout.column: 1
        }

        TestPageLabel {
            id: label_PatientName
            text: qsTr("Label")
            lblOrText: true
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.row: 1
            Layout.column: 2
            //anchors.right: label_lblPatientName.right
            //anchors.rightMargin: Constants.testPage_rightMargin
        }
        TestPageLabel {
            id: label_lblmedicalRef
            //anchors.left: parent.left
            //anchors.leftMargin: 0
            lblOrText: false
            text: StringConstants.label_testPgMedRef
            Layout.fillHeight: true
            //Layout.fillWidth: true
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.row: 2
            Layout.column: 1
        }
        TestPageLabel {
            id: label_medicalRef
            text: qsTr("Label")
            lblOrText: true
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.row: 2
            Layout.column: 2
            //anchors.right: label_lblmedicalRef.right
            //anchors.rightMargin: Constants.testPage_rightMargin
        }
        TestPageLabel {
            id: label_lblDOB
            //anchors.left: parent.left
            //anchors.leftMargin: 0
            lblOrText: false
            text: StringConstants.label_testPgDOB
            Layout.fillHeight: true
            //Layout.fillWidth: true
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.row: 3
            Layout.column: 1
        }
        TestPageLabel {
            id: label_DOB
            text: qsTr("Label")
            Layout.fillWidth: true
            lblOrText: true
            Layout.fillHeight: true
            //Layout.fillWidth: true
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.row: 3
            Layout.column: 2
            //anchors.right: label_lblDOB.right
            //anchors.rightMargin: Constants.testPage_rightMargin
        }
        TestPageLabel {
            id: label_lblIOLFitted
            //anchors.left: parent.left
            //anchors.leftMargin: 0
            lblOrText: false
            text: StringConstants.label_testPgIOLFitted
            Layout.fillHeight: true
            //Layout.fillWidth: true
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.row: 4
            Layout.column: 1
        }
        TestPageLabel {
            id: label_IOLFitted
            text: qsTr("Label")
            lblOrText: true
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.row: 4
            Layout.column: 2
            //anchors.right: label_lblIOLFitted.right
            //anchors.rightMargin: Constants.testPage_rightMargin
        }
        TestPageLabel {
            id: label_lblIOLAge
            //anchors.left: parent.left
            //anchors.leftMargin: 0
            lblOrText: false
            text: StringConstants.label_testPgIOLAge
            Layout.fillHeight: true
            //Layout.fillWidth: true
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.row: 5
            Layout.column: 1
        }
        TestPageLabel {
            id: label_IOLAge
            text: qsTr("Label")
            lblOrText: true
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.row: 5
            Layout.column: 2
            //anchors.right: label_lblIOLFitted.right
            //anchors.rightMargin: Constants.testPage_rightMargin
        }
    }
}





/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
