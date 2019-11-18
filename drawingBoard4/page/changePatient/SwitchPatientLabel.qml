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
//import "./../../imports/"
import "./../../models/"
import "./../../delegates/"
import "./../test/"
import "./../../common/"
import "./../newPatient/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0

//Item {
//    width: 950
//    height: 275

Rectangle {
    id: spLabel
    color: StringConstants.testPage_backgroundColor
    anchors.fill: parent
    signal selectedText(string curText,string role)
    onSelectedText: {
        console.log("The selected Text is"+curText+role)
    }
    signal invokeSource(var source)
    onInvokeSource: {
        console.log("Source invoked"+source)
    }

    signal invokeIndex(int index)
    onInvokeIndex: {
        console.log("Index invoked"+index)
    }
   // property alias titleVisibility: titleRec.visible
   // property alias labelVisiblity: labelRec.visible
   // property alias searchVisiblity: searchRec.visible
    GridLayout{
        id: mainRow
        width: 700
        anchors.fill: parent
        columns: 3
        rows:10
        Rectangle {
            id: titleRec
            color: StringConstants.testPage_backgroundColor
            height:75// pgTitle.height
            Layout.fillWidth: true
            Layout.row: 1
            Layout.column: 1
            Layout.columnSpan: 3

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
            }//TestPageTitle
        }//TestPageTitle

        Rectangle{
            id: labelRec
            color: StringConstants.testPage_backgroundColor
            Layout.column: 1
            Layout.columnSpan: 3
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.maximumWidth: parent.width/2
            Layout.leftMargin: 10
            Layout.bottomMargin: 20
            Layout.row: 2
            NewPatientPersonalDetailGroup{
                id:personalDetailsPage
                anchors.fill: parent
               // Layout.fillHeight: true
               // Layout.fillWidth: true
                verticalLayoutDirection: Grid.TopToBottom
                layoutDirection: Qt.LeftToRight
                flow: Grid.LeftToRight
                filterName:StringConstants.np_PersonalDetailExistingPage
                flickableDirection: Flickable.HorizontalAndVerticalFlick
            }

//            NewPatientPersonalDetails{
//                id:pageLabels
//                anchors.top: parent.top
//                anchors.topMargin: IntegerConstants.margin10
//                anchors.bottom: parent.bottom
//                anchors.bottomMargin: 0
//                anchors.right: parent.right
//                anchors.rightMargin: 0
//                anchors.left: parent.left
//                anchors.leftMargin: 0
//                pageSpOrNp:true
//                pageNpSpTp:2
//            }

        }
//        Rectangle{
//            id: searchRec
//            Layout.column: 1
//            Layout.columnSpan: 3
//            Layout.fillHeight: true
//            Layout.fillWidth: true
//            Layout.row: 3
//            SwitchSearchItems{
//                id:rectangleSwitchPatientLabel
//                anchors.fill: parent
//                Component.onCompleted: {
//                    rectangleSwitchPatientLabel.selectedText.connect(spLabel.selectedText)
//                }
//            }
//        }
    }


}

//}





















































































/*##^## Designer {
    D{i:1;anchors_height:200;anchors_width:200;anchors_x:107;anchors_y:66}
}
 ##^##*/
