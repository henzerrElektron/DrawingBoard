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
import "./../common/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
/*!
   \qmltype PageLabel
   \brief This provides a title to the page along with all the action buttons.

  This is used in many classes.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of PageLabel is demonstrated below
   \qml
            PageTitle{
                id:pgTitle
                anchors.fill: parent
                logoVisible: false
                actionGridGroup:"existingPatientItems"
                actionFilterName:"existingPatientItems"
                labelText: StringConstants.label_searchPatientTitle
                Component.onCompleted: {
                    pgTitle.invokeSource.connect(spLabel.invokeSource)
                    pgTitle.invokeIndex.connect(spLabel.invokeIndex)
                }
            }
   \endqml

*/
Rectangle{
    id:pgTitle//rectangle1
    //color: "black"
    color: StringConstants.testPage_backgroundColor//"transparent"
    anchors.fill: parent
    property alias labelText: label_testPageHeading.text
    property alias actionGridGroup: actionGridView.group
    property alias actionFilterName: actionGridView.filterName
    property alias actionGridWidth: actionGridView.width
    property alias logoVisible: rec1.visible
    property alias labelVisible: label_testPageHeading.visible
    onLogoVisibleChanged: {
        image.visible = logoVisible
    }

    signal invokeSource(string source)
    signal invokeIndex(int index)
    onInvokeSource: {
        console.log("I am reaching here")
    }
    onInvokeIndex: {
        console.log("The current index is"+index)
    }

    GridLayout
    {
        columns: IntegerConstants.columnCount5
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.topMargin: IntegerConstants.margin10
        anchors.leftMargin: IntegerConstants.margin10
        columnSpacing: IntegerConstants.margin5
        Rectangle{
            id:rec1
            Layout.row: IntegerConstants.rowCount1
            Layout.column: IntegerConstants.columnCount1
            color: "transparent"
            width: 50
            height: parent.height
            Image {
                id: image
                fillMode: Image.PreserveAspectFit
                source: "qrc:/images/icon_eet.png"
                anchors.centerIn: parent
                onStatusChanged: if (image.status == Image.Ready) console.log('Loaded')
            }
        }
        Rectangle{
            id:rec2
            Layout.row: IntegerConstants.rowCount1
            Layout.column: logoVisible?IntegerConstants.columnCount2:IntegerConstants.columnCount1
            color: "transparent"
            Layout.fillWidth: true
            Layout.fillHeight: true
            //height: parent.height
            anchors.left: logoVisible?rec1.right:parent.left
            //anchors.leftMargin: 25
            PageLabel {
                id: label_testPageHeading
                pixelSize: logoVisible?IntegerConstants.page_fontSize:30
                text: StringConstants.label_testPgHeader
                // horizontalAlignment: Text.AlignHCenter
                //verticalAlignment: Text.AlignVCenter
                //anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left

            }
        }

        Rectangle{
            id:rec3
            color: "transparent"
            Layout.column: IntegerConstants.columnCount3
            Layout.columnSpan: IntegerConstants.columnCount2
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.row: IntegerConstants.rowCount1
            Layout.alignment: Qt.AlignRight
            height: parent.height
            // anchors.left: rec1.right
            PageActionsButtons {
                id: actionGridView
                //color: "black"
                anchors.right: parent.right
                group: ""//"testPageItems"
                filterName:""//"testPageItems"
                actionOrHome: true
                Component.onCompleted: {
                    invokeSource.connect(pgTitle.invokeSource)
                    invokeIndex.connect(pgTitle.invokeIndex)
                }
            }//TestPageActionButtons//Rectangle//PageActionsButtons
        }
    }
    Component.onCompleted: {

    }
}





/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
