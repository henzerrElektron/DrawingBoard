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
import "./../test/"
import ApplicationContstants 1.0


Rectangle {
    id: rectangle2
    color: "white"//"transparent"
    //color: "red"
    //anchors.fill: parent
    //color: "transparent"
    //Layout.rowSpan: 2
    GridLayout{
        id: mainGridRow
        //width: 700
        anchors.fill: parent
        columns: 3
        rows:2
        //columnSpacing: 10
        //rowSpacing: 5
        Label{
            id:label
            text: Constants.label_searchQuestion
            color: Constants.actionBtnBackgroundColor
            Layout.alignment: Qt.AlignTop |Qt.AlignLeft
            //Layout.fillHeight: true
            //Layout.fillWidth: true
            Layout.column: 1
            Layout.columnSpan: 3
            Layout.rowSpan: 1
            Layout.row: 1
            height: 100
        }

        SwitchSearchBox {
            id: label_lblPatientName
            comboModel: theExistingPatientsModel
            commboTextRole: "First name"
            //anchors.left: parent.left
            //anchors.leftMargin: 0
            //lblOrText: false
            //anchors.top: label.bottom//parent.top//label.bottom
            //anchors.topMargin: 10
            //Layout.alignment: Qt.AlignTop |Qt.AlignLeft
            labelText: Constants.label_switchPatientSurname
            //Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.column: 1
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.row: 2
            //width: parent.width/3
            //height: parent.height/3

        }

        SwitchSearchBox {
            id: label_PatientName
            labelText: Constants.label_switchPatientFirstName
            comboModel: theExistingPatientsModel
            commboTextRole: "Surname"
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
            //width: parent.width/3
            //height: parent.height/3
            //anchors.right: label_lblPatientName.right
            //anchors.rightMargin: Constants.testPage_rightMargin
        }
        SwitchSearchBox {
            id: label_lblmedicalRef
            comboModel: theExistingPatientsModel
            commboTextRole: "Medical Reference"
           // anchors.top: label.bottom
           // anchors.topMargin: 10
            labelText: Constants.label_testPgMedRef
            //anchors.left: parent.left
            //anchors.leftMargin: 0
            //lblOrText: false
            //text: Constants.label_testPgMedRef
            //Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.column: 3
            Layout.columnSpan: 1
            Layout.rowSpan: 1
            Layout.row: 2
            //width: parent.width/3
            //height: parent.height/3

        }

    }
}
