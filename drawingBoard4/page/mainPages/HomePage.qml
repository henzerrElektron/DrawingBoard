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
import "./../../common/"
import "./../../images/"
//import "./../../imports/"
import "./../../models/"
import "./../../delegates/"
import "./../test/"
import "./../home/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0

Rectangle {
    id: homePage
    color: "white"//StringConstants.testPage_backgroundColor
    signal invokeSource(string source)
    onInvokeSource: {
        console.log("Source invoked"+source)
    }

    signal invokeIndex(int index)
    onInvokeIndex: {
        console.log("Index invoked"+index)
    }

    GridLayout{
        id: mainRow
        anchors.fill: parent
        rows:3
        columns:2
        Rectangle{
            id:rec1
            color:"black"//StringConstants.testPage_backgroundColor//"transparent"//"black"
            //anchors.top: parent.top
            //anchors.left: parent.left
            //anchors.right: parent.right
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.row: 1
            Layout.rowSpan: 1
            Layout.column: 1
            Layout.columnSpan: 2
            Layout.maximumHeight: parent.height/4
            height: parent.height/4
            HomePageLabel{
                id:homePageLabel
                anchors.fill: parent
                // Layout.fillHeight: true
                // Layout.fillWidth: true
                Component.onCompleted: {
                    homePageLabel.invokeSource.connect(homePage.invokeSource)
                    homePageLabel.invokeIndex.connect(homePage.invokeIndex)
                    // homePageLabel.invokeSource.connect(homePage.invokeSource)
                }
            }
        }
        Rectangle{
            id:rec2
            color:"transparent"//"green"
            //anchors.horizontalCenter: parent.horizontalCenter
            //anchors.verticalCenter: parent.verticalCenter
            //anchors.top: rec1.bottom
            //anchors.topMargin: 250
            //anchors.left: parent.left
            //anchors.right: parent.right
            //anchors.bottom: parent.bottom
            //Layout.fillHeight: true
            //Layout.fillWidth: true
            Layout.row: 2
            Layout.rowSpan: 2
            Layout.column: 1
            Layout.columnSpan: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignHCenter|Qt.AlignVCenter

            PageActionsButtons{
                id:image2
                //width: parent.width
                //height: parent.height
                //anchors.centerIn: parent
                //anchors.left: parent.left
                //anchors.leftMargin: marginWidth
                //anchors.rightMargin: marginWidth
                //anchors.right: parent.right
                //anchors.top: parent.top
                //anchors.bottom: parent.bottom
                //anchors.left: parent.left
                //anchors.right: parent.right
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: parent.verticalCenter
                //anchors.fill: parent
                //horizontalCenter: parent.horizontalCenter
                //verticalCenter: parent.verticalCenter
                //Layout.fillHeight: true
                //Layout.fillWidth: true
                group1: "homeMainItems"
                group: ""
                verticalLayoutDirection: Grid.TopToBottom
                layoutDirection: Qt.LeftToRight
                flow: Grid.LeftToRight
                flickableDirection: Flickable.HorizontalAndVerticalFlick
                actionOrHome: false
                //cellSpacing:(parent.width - (175*parent.width/4))/4
                onComponentTriggered: {
                    console.log("I am reaching here")
                }
                onInvokeSource: {
                    console.log("I am reaching here"+source)
                }

                onInvokeIndex: {
                    console.log("Invoke index value is"+index)
                }

                Component.onCompleted: {
                    image2.invokeSource.connect(homePage.invokeSource)
                    //image2.invokeSoure.connect(homePage.invokeSource)
                    image2.invokeIndex.connect(homePage.invokeIndex)
                }

                //anchors.leftMargin: parent.width/2 - 200
                //anchors.topMargin: parent.height/2 - 200
                //anchors.centerIn: parent
                //anchors.fill: parent

            }
            //                      HomePageActionButtons{
            //                            id:homeButtons
            //                            //anchors.fill: parent
            //            //                anchors.top: rec1.bottom
            //            //                anchors.left: parent.left
            //            //                anchors.right: parent.right
            //            //                anchors.bottom: parent.bottom
            //            //                Layout.fillHeight: true
            //            //                Layout.fillWidth: true
            //            //                Layout.row: 2
            //            //                Layout.rowSpan: 1
            //                            group: "homeMainItems"
            //                            actionOrHome: false
            //                        }

            //            HomePageBody{
            //                id:homePageBody
            //                anchors.fill: parent
            //                //Layout.alignment: Qt.AlignHCenter|Qt.AlignVCenter
            //                //Layout.horizontalCenter: parent.horizontalCenter
            //                //Layout.verticalCenter: parent.verticalCenter
            //                Layout.fillHeight: true
            //                Layout.fillWidth: true
            //                //Layout.maximumHeight: parent.height/5
            //            }
        }
    }
}
