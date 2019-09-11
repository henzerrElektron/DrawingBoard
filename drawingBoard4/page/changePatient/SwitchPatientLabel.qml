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
    GridLayout{
        id: mainRow
        width: 700
        anchors.fill: parent
        columns: 3
        rows:10
        Rectangle {
            id: rectangle1
            color: StringConstants.testPage_backgroundColor
            height:75// pgTitle.height
            Layout.fillWidth: true
            Layout.row: 1
            Layout.column: 1
            Layout.columnSpan: 3
            PageTitle{
                id:pgTitle
                anchors.fill: parent
                actionGridGroup:"existingPatientItems"
                labelText: StringConstants.label_searchPatientTitle
                Component.onCompleted: {
                    pgTitle.invokeSource.connect(spLabel.invokeSource)
                    pgTitle.invokeIndex.connect(spLabel.invokeIndex)
                }
            }//TestPageTitle
        }//TestPageTitle
        //            PageTitle {
        //                id: rectangle1
        //                labelText:StringConstants.label_searchPatientTitle
        //                actionGridGroup:"existingPatientItems"
        //                anchors.top: parent.top
        //                anchors.left: parent.left
        //                Layout.column: 1
        //                Layout.columnSpan: 3
        //                Layout.fillHeight: true
        //                Layout.fillWidth: true
        //                Layout.row: 1
        //                //Layout.rowSpan: 10
        //                Layout.maximumHeight: parent.height/5
        //            }
        Rectangle{
            id: rectangle2
            color: StringConstants.testPage_backgroundColor
            Layout.column: 1
            Layout.columnSpan: 3
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.row: 2
            NewPatientPersonalDetails{
                id:pageLabels
                anchors.top: parent.top
                anchors.topMargin: IntegerConstants.margin10
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 0
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0
                //gridRow: IntegerConstants.rowCount5
//                lbl1Visible:true
//                lbl2Visible: true
//                lbl3Visible: true
//                lbl4Visible: true
//                lbl5Visible: true
//                lbl6Vislbe: false
//                lbl7Visible: false
                pageSpOrNp:true
                pageNpSpTp:2
            }
            //Layout.rowSpan: 5
            //anchors.bottom: rectangleSwitchPatientLabel.top
            //anchors.top: rectangle1.bottom
            //            TestPageAllLabels {
            //                anchors.fill: parent
            //            }
        }



        //            TestPageActionButtons {
        //                id: rectangle3
        //                Layout.column: 3
        //                Layout.columnSpan: 1
        //                Layout.fillHeight: true
        //                Layout.fillWidth: true
        //                Layout.row: 1
        //                Layout.rowSpan: 7
        //            }
        Rectangle{
            id: rectangle3
            Layout.column: 1
            Layout.columnSpan: 3
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.row: 3
            SwitchSearchItems{
                id:rectangleSwitchPatientLabel
                anchors.fill: parent
                Component.onCompleted: {
                    rectangleSwitchPatientLabel.selectedText.connect(spLabel.selectedText)
                }
            }
        }

        //            TestPageSwitchButtons {
        //                id: rectangle4
        //                Layout.column: 2
        //                Layout.columnSpan: 1
        //                Layout.fillHeight: true
        //                Layout.fillWidth: true
        //                Layout.row: 3
        //                Layout.rowSpan: 4
        //                //anchors.centerIn: rectangle1
        //                anchors.left: rectangle1.right
        //                //anchors.leftMargin: 0
        //                Layout.leftMargin: 0
        //                //anchors.top: rectangle3.bottom
        //            }


    }


}

//}





















































































/*##^## Designer {
    D{i:1;anchors_height:200;anchors_width:200;anchors_x:107;anchors_y:66}
}
 ##^##*/
