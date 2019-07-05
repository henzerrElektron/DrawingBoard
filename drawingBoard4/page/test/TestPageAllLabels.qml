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
import ApplicationContstants 1.0


Rectangle {
    id: rectangle2
    color: "transparent"
    //color: "red"
    //anchors.fill: parent
    //color: "transparent"
    //Layout.rowSpan: 2
    GridLayout{
        id: mainGridRow
        //width: 700
        anchors.fill: parent
        columns: 2
        rows:7
        //rowSpacing: 5
        TestPageLabel {
            id: label_lblPatientName
            //anchors.left: parent.left
            //anchors.leftMargin: 0
            lblOrText: false
            text: Constants.label_testPgPatient
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.row: 3
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
            Layout.row: 3
            Layout.column: 2
            //anchors.right: label_lblPatientName.right
            //anchors.rightMargin: Constants.testPage_rightMargin
        }
        TestPageLabel {
            id: label_lblmedicalRef
            //anchors.left: parent.left
            //anchors.leftMargin: 0
            lblOrText: false
            text: Constants.label_testPgMedRef
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.row: 4
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
            Layout.row: 4
            Layout.column: 2
            //anchors.right: label_lblmedicalRef.right
            //anchors.rightMargin: Constants.testPage_rightMargin
        }
        TestPageLabel {
            id: label_lblDOB
            //anchors.left: parent.left
            //anchors.leftMargin: 0
            lblOrText: false
            text: Constants.label_testPgDOB
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.row: 5
            Layout.column: 1
        }
        TestPageLabel {
            id: label_DOB
            text: qsTr("Label")
            lblOrText: true
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.row: 5
            Layout.column: 2
            //anchors.right: label_lblDOB.right
            //anchors.rightMargin: Constants.testPage_rightMargin
        }
        TestPageLabel {
            id: label_lblIOLFitted
            //anchors.left: parent.left
            //anchors.leftMargin: 0
            lblOrText: false
            text: Constants.label_testPgIOLFitted
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.row: 6
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
            Layout.row: 6
            Layout.column: 2
            //anchors.right: label_lblIOLFitted.right
            //anchors.rightMargin: Constants.testPage_rightMargin
        }
        TestPageLabel {
            id: label_lblIOLAge
            //anchors.left: parent.left
            //anchors.leftMargin: 0
            lblOrText: false
            text: Constants.label_testPgIOLAge
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.row: 7
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
            Layout.row: 7
            Layout.column: 2
            //anchors.right: label_lblIOLFitted.right
            //anchors.rightMargin: Constants.testPage_rightMargin
        }
    }
}
