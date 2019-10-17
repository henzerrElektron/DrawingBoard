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
import QtQuick.Controls 2.5
import Qt.labs.settings 1.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Shapes 1.11
import QtQml.Models 2.12
import "."
import "./../../common/"
import "./../../images/"
//import "./../../imports/"
import "./../../models/"
import "./../../delegates/"
import "./../test/"
import "./../home/"
import "./../newPatient/"
import "./../../tables/"
import ApplicationConstants 1.0

Dialog {
    id: dialog
    modal: true
    title: StringConstants.lbl_manageOperator
    standardButtons: Dialog.Ok | Dialog.Cancel
    Rectangle
    {
        id:mainRec
        anchors.fill: parent
        Label {
            id: label
            text:StringConstants.lbl_manageHeading //qsTr("Label")
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 10
        }
        Label {
            id: labelNotes
            text:StringConstants.lbl_manageNotes //qsTr("Label")
            anchors.top: label.bottom
            anchors.topMargin: 5
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 10
            color: StringConstants.barBorderColor
        }
        GridLayout{
            anchors.top: labelNotes.bottom
            anchors.topMargin: 10
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom:parent.bottom
            rows: 4
            columns: 3
            NewPatientGroupLabel{
                id:operatorLabel
                text: StringConstants.lbl_existingOperators
                //color: StringConstants.actionBtnBackgroundColor
                Layout.alignment: Qt.AlignTop |Qt.AlignLeft
                font: OtherConstants.fontFamily
                //anchors.left: parent.left
                //anchors.right: parent.right
                Layout.fillWidth: true
                //Layout.column: 1
                //Layout.columnSpan: 3
                Layout.rowSpan: 1
                Layout.row: 1
                Layout.minimumHeight: 30
                //height: 50
            }
            Rectangle{
                id:rectangle2
                color: "transparent"
                anchors.top: labelRec.bottom
                anchors.left: gridLayout.left
                anchors.bottom: parent.bottom//rectangle6.top
                Layout.column: 1
                Layout.columnSpan: 3
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.row: 2
                Layout.preferredHeight: parent.height - operatorLabel.height - 50
                Layout.minimumHeight: parent.height - operatorLabel.height - 50
                Layout.maximumHeight:  parent.height - operatorLabel.height  -50
                Layout.minimumWidth: parent.width//parent.width/2 + parent.width/4

                CommonTableGrid{
                    id:curTestTabs1
                    anchors.fill: parent
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    repeaterModel: theOperatorModel
                    //tableModel: theExistingPatientsModel
                    proxySoure: theOperatorModel

                }

            }

        }

    }
}









/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
