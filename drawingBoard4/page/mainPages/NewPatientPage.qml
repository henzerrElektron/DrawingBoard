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
import "./../test/"
import "./../newPatient/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0

Page {
    id:patientPage
    width: 960
    height: 640
    signal invokeSource(var source)
//    background: Rectangle{
//        id:mainRec
//        color: "black"//StringConstants.testPage_backgroundColor//"black"
//        anchors.fill: parent
//    }
    onInvokeSource: {
        console.log("Source invoked"+source)
    }

    signal invokeIndex(int index)
    onInvokeIndex: {
        console.log("Index invoked"+index)
    }
    GridLayout {
        id: gridLayout
        anchors.fill: parent
        rows:3

        //columns: 2
        //RowLayout{
        //    id: row
        //    anchors.fill: parent
        //    Layout.fillWidth: true
        //    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        Rectangle{
            id:rectangle1
            color: "transparent"
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.row: 1
            Layout.rowSpan: 1
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
            Layout.minimumHeight:  parent.height/3
            Layout.preferredHeight: parent.height/3
            Layout.maximumHeight: parent.height/3
            NewPatientHeader{
                id:newPatientLbl
                anchors.fill: parent
                Component.onCompleted: {
                    newPatientLbl.invokeSource.connect(patientPage.invokeSource)
                    newPatientLbl.invokeIndex.connect(patientPage.invokeIndex)
                }
            }

//            PatientLabel{
//                id:ptLabel
//                anchors.fill: parent

//                //Layout.column: 1
//                //Layout.columnSpan: 2
//                //Layout.fillHeight: true
//            }
        }
        Rectangle{
            id:rectangle2
            color: "black"//StringConstants.testPage_backgroundColor//"black"//"transparent"
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.row: 2
            Layout.rowSpan: 1
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.top: rectangle1.bottom
            anchors.bottom: parent.bottom
            anchors.topMargin: 0
            Layout.maximumHeight:parent.height - parent.height/4
            NewPatientTabs{
                id:newPatientTabs
                anchors.fill: parent
            }

//            PatientLabel{
//                id:ptLabel
//                anchors.fill: parent

//                //Layout.column: 1
//                //Layout.columnSpan: 2
//                //Layout.fillHeight: true
//            }
        }
    }
}
