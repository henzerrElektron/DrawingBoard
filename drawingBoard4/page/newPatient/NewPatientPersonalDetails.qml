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
//import "./../../imports/"
import "./../../models/"
import "./../../delegates/"
import "./../test/"
import ApplicationConstants 1.0
import QtQml.Models 2.12
import Qt.labs.calendar 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0


Rectangle{
    id:mainRec
    anchors.fill: parent
    color: StringConstants.testPage_backgroundColor
    Rectangle{
        id:testRec
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        color: "transparent"
        GridLayout{
            id:grid
            anchors.fill: parent
            rows: 3
            NewPatientLabelWithText{
                id:oneLabel
                labelText:StringConstants.lbl_npSurName
                tfReadOnly:false
                tfPlaceHolderText:StringConstants.lbl_npRequestSurName
                Layout.row: 1
                Layout.rowSpan: 1
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
            NewPatientLabelWithText{
                id:twoLabel
                labelText:StringConstants.lbl_npFirstName
                tfPlaceHolderText:StringConstants.lbl_npRequestFirstName
                tfReadOnly:false
                Layout.row: 2
                Layout.rowSpan: 1
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
            NewPatientLabelWithText{
                id:threeLabel
                labelText:StringConstants.lbl_npMedicalReference
                tfPlaceHolderText:StringConstants.lbl_npRequestMedicalReference
                tfReadOnly:false
                Layout.row: 3
                Layout.rowSpan: 1
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

        }
    }
}
