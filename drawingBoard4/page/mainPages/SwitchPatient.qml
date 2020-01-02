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
import "./../changePatient/"
import "./../../tables/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
/*!
   \qmltype SwitchPatient
   \brief This contains the SwithPatient page of the application where pre-existing patient details are viewable
   The Operator can choose a patient to perform additional operitions like testing and editing

  This is used in MainSwipe and mainStack(the stack version of the loader) .
   \image tobeprovided.png

   \section1 Sample usage

   The usage of TestPage is demonstrated below
   \qml
        SwitchPatient{
            id:switchPatientPage
            anchors.fill: parent
            }
   \endqml

*/
Rectangle {
    id:swPatient
    anchors.fill: parent
    //color: StringConstants.testPage_backgroundColor
    color: "transparent"
    signal invokeSource(var source)
    onInvokeSource: {
        console.log("Source invoked"+source)
    }

    signal invokeIndex(int index)
    onInvokeIndex: {
        console.log("Index invoked"+index)
    }
    //width: 960
    //height: 640
    GridLayout {
        id: gridLayout
        anchors.fill: parent
        rows:3
        columns: 1
        //RowLayout{
        //    id: row
        //    anchors.fill: parent
        //    Layout.fillWidth: true
        //    Layout.alignment: Qt.AlignLeft | Qt.AlignTop
        Rectangle{
            id:labelRec
            color: StringConstants.testPage_backgroundColor
            // color: "transparent"
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.row: 1
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
            Layout.preferredHeight: parent.height/4
            Layout.minimumHeight: parent.height/4
            Layout.maximumHeight: parent.height/4
            SwitchPatientLabel{
                id:ptLabel
                anchors.fill: parent
                onSelectedText: curTestTabs1.logString(curText,role)
                //titleVisibility: false
                //labelVisiblity: false
                //searchVisiblity: true
                Component.onCompleted: {
                    invokeSource.connect(swPatient.invokeSource)
                    invokeIndex.connect(swPatient.invokeIndex)
                    //selectedText.connect(curTestTabs1.setFilterString)
                    //selectedText.connect(curTestTabs1.logString)

                }
            }
        }
        Rectangle{
            id:rectangle2
            color: "transparent"
            anchors.top: labelRec.bottom
            anchors.left: gridLayout.left
            anchors.right: parent.right
            anchors.bottom: parent.bottom//rectangle6.top
            Layout.column: 1
            Layout.columnSpan: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.row: 2
            Layout.preferredHeight: parent.height - labelRec.height// - 50
            Layout.minimumHeight: parent.height - labelRec.height// - 50
            Layout.maximumHeight:  parent.height - labelRec.height//  -50
            Layout.minimumWidth: parent.width/2 + parent.width/4
            Rectangle
            {
                id:tableRec
                anchors.fill: parent
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                anchors.bottomMargin: 10
                anchors.topMargin: 10
                border.width: 3
                border.color: StringConstants.actionBtnBackgroundColor

                CommonTableGrid{
                    id:curTestTabs1
                    anchors.fill: parent
                    anchors.leftMargin: 10
                    anchors.rightMargin: 10
                    anchors.bottomMargin: 10
                    anchors.topMargin: 10
                    //Layout.fillHeight: true
                    //Layout.fillWidth: true
                    commonTableModel: theExistingPatientsModel
                    repeaterModel: 6//theExistingPatientsModel
                    //tableModel: theExistingPatientsModel
                    proxySoure: theExistingPatientsModel

                }
            }


        }

    }

}






