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
import "./../../common/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
/*!
   \qmltype NewPatientNotes
   \brief The tab is used to enter notes for new patient in the New Patient Page

  This is used in NewPatientTabs.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of NewPatientNotes is demonstrated below
   \qml
            NewPatientNotes{
                id:medicaltTabPage
                anchors.fill: parent
            }
   \endqml

*/
Page{
    id:notestTabPage
    title: StringConstants.lbl_npNotes//"Enter notes relevant to this test session"
    anchors.fill: parent
    Rectangle{
        id:rectangle
        anchors.left: parent.left
        anchors.right: parent.right
        color: "transparent"
        height: 50
        //NewPatientGroupLabel{
         GroupLabel{
            id:leftLabel
            text: StringConstants.lbl_npNotes
            isTabHeader:true
            anchors.fill: parent
            //anchors.centerIn: parent
        }
    }
    Rectangle{
        id:mainRec
        //anchors.fill: parent
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: rectangle.bottom
        anchors.bottom: parent.bottom
        //color: StringConstants.actionBtnBackgroundColor
        border.color: StringConstants.borderColorBlack
        border.width: 1

        TextEdit {
            id: textEdit
            anchors.top:  parent.top//rectangle.bottom
            anchors.topMargin: 10
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            text: qsTr("Please enter the text here....")
            textFormat: Text.AutoText
            //canRedo: true
            //canUndo: true
            //canPaste: true
            font.pixelSize: 12
            //color: "white"
        }
    }
}
