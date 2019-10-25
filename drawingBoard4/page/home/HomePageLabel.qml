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
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
Rectangle {
    id: hmPageLabel
    color: StringConstants.testPage_backgroundColor
    signal invokeSource(string source)
    signal invokeIndex(int index)
    onInvokeSource: {
        console.log("I am reaching here")
    }
    onInvokeIndex: {
        console.log("The current Index is"+index)
    }

    GridLayout{
        id: mainRow
        anchors.fill: parent
        rows:2
        //Home
        Rectangle {
            id: rectangle1
            color: "transparent"
            anchors.top: parent.top
            Layout.fillWidth: true
            Layout.preferredHeight: 75
            Layout.row: 1
            // color: StringConstants.testPage_backgroundColor
            //height:75// pgTitle.height
            //Layout.fillHeight: true
            //anchors.top: parent.top
            //anchors.left: parent.left
            //anchors.right: parent.right
            //color: "green"
            //Layout.column: 1
            //Layout.columnSpan: 3
            PageTitle{
                id:homePageTitleRec
                anchors.fill: parent
                logoVisible: false
                actionGridGroup:StringConstants.modelHomeItems//"newPatientItems"
                actionFilterName: StringConstants.modelHomeItems
                labelText: ""//StringConstants.label_newPtPgHeader
                //anchors.top: parent.top
                //anchors.left: parent.left
                //anchors.right: parent.right
                //Layout.fillHeight: true
                // Layout.fillWidth: true
                // Layout.row: 1
                // Layout.rowSpan: 1
                Component.onCompleted: {
                homePageTitleRec.invokeSource.connect(hmPageLabel.invokeSource)
                homePageTitleRec.invokeIndex.connect(hmPageLabel.invokeIndex)
                }

            }
        }
        //        Rectangle{
        //            id:spaceRec
        //            Layout.fillWidth: true
        //            Layout.row: 2
        //            color: "transparent"
        //        }

        Rectangle {
            id: rectangle2
            color: "transparent"
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.row: 2
            //color: StringConstants.testPage_backgroundColor
            //height:75// pgTitle.height
            //anchors.top: rectangle1.bottom
            //anchors.topMargin: 100
            //anchors.left: parent.left
            //anchors.right: parent.right
            //anchors.bottom: parent.bottom
            // color: "black"
            //Layout.column: 1
            //Layout.columnSpan: 3
            //Layout.maximumHeight: parent.height/5
            HomePageLogo{
                id:homePageLogo
                anchors.fill: parent
                ///////////////anchors.verticalCenter: parent.verticalCenter
                ///////anchors.left: parent.left
                ////////anchors.right: parent.right
                //anchors.top: homePageTitleRec.bottom
                //anchors.left: parent.left
                //anchors.right: parent.right

            }
        }
    }
}

//}





































































































































/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
