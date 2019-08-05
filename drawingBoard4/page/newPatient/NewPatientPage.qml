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
Item {
    width: 960
    height: 640
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
            color:"green"// "transparent"
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
            Layout.maximumHeight: parent.height/4
            NewPatientHeader{
                id:newPatientLbl
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
        Rectangle{
            id:rectangle2
            color: "black"//"transparent"
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.row: 2
            Layout.rowSpan: 1
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.top: rectangle1.bottom
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
