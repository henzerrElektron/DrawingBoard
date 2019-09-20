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
import "./../images/"
//import "./../../imports/"
import "./../models/"
import "./../delegates/"
import "./../page/test/"
import "./../page/home/"
import "./../page/newPatient/"
import ApplicationConstants 1.0

Rectangle{
    id:mainRec
    anchors.fill: parent
    color: StringConstants.actionBtnBackgroundColor
    signal okClicked()
    signal cancelClicked()
    Rectangle {
        id:subRec
        //anchors.fill: parent
        anchors.centerIn: parent
        color: StringConstants.actionBtnBackgroundColor
        height: parent.height///2
        width: parent.width/2
        GridLayout{
            id: mainRow
            anchors.fill: parent
            flow:GridLayout.LeftToRight
            //rows: 1
            columns: 2
            ReportPageBtn{
                id:okButton
                text: StringConstants.btn_reportPageOk
                Layout.leftMargin: 10
                //backRecHeight: 50
                //height: parent.height/4
                // Layout.fillHeight: true
                // Layout.fillWidth: true
                //Layout.column: 1
                //Layout.columnSpan: 1
                onClicked: {
                    okClicked()
                    console.log("Ok Clicked")
                }
            }
            ReportPageBtn{
                id:cancelButton
                text:StringConstants.btn_reportPageCancel
                Layout.rightMargin: 10
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                //backRecHeight: 50
                //height: parent.height/4
                // Layout.fillHeight: true
                // Layout.fillWidth: true
                // Layout.column: 2
                // Layout.columnSpan: 1
                onClicked: {
                    cancelClicked()
                    console.log("Cancel Clicked")
                }
            }
        }
    }
}









/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
