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
        rows:4
        rowSpacing: 10
        columns:2
        Rectangle{
            id:rec1
            color:StringConstants.color_gbTransparent//"black"//StringConstants.testPage_backgroundColor//"transparent"//"black"
            //anchors.top: parent.top
            //anchors.left: parent.left
            //anchors.right: parent.right
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.row: 1
            Layout.rowSpan: 1
            Layout.column: 1
            Layout.columnSpan: 2
            Layout.maximumHeight: parent.height/4 +10//(parent.height/20)
            Layout.alignment: Qt.AlignTop
            height: parent.height/4 +10//(parent.height/20)
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
            id:recSpacer
            Layout.fillWidth: true
            Layout.row: 2
            Layout.rowSpan: 1
            Layout.column: 1
            Layout.columnSpan: 2
            Layout.maximumHeight: 50
            Layout.minimumHeight: 50
            anchors.top: rec1.bottom
            color: StringConstants.color_gbTransparent
        }

        Rectangle{
            id:rec2
            color:StringConstants.color_gbTransparent//"transparent"//
            //anchors.horizontalCenter: parent.horizontalCenter
            //anchors.verticalCenter: parent.verticalCenter
            //anchors.top: rec1.bottom
            //anchors.topMargin: 250
            //anchors.left: parent.left
            //anchors.right: parent.right
            //anchors.bottom: parent.bottom
            //Layout.fillHeight: true
            //Layout.fillWidth: true
            anchors.top: recSpacer.bottom
            Layout.row: 3
            Layout.rowSpan: 1
            Layout.column: 1
            Layout.columnSpan: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.maximumHeight: parent.height/3
            Layout.alignment: Qt.AlignHCenter|Qt.AlignTop
            //Layout.topMargin: 100
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
                //anchors.topMargin: parent.height/10
                height: parent.height - parent.height/10
                //anchors.verticalCenter: parent.verticalCenter
                //anchors.fill: parent
                //horizontalCenter: parent.horizontalCenter
                //verticalCenter: parent.verticalCenter
                //Layout.fillHeight: true
                //Layout.fillWidth: true
                group1: "homeMainItems"
                group: ""
                filterName:"homeMainItems"
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
        Rectangle{
            id:rec3
            color:StringConstants.color_gbTransparent//"transparent"//
            anchors.top: rec2.bottom
            anchors.bottom:parent.bottom
            Layout.row: 4
            Layout.rowSpan: 1
            Layout.column: 2
            Layout.columnSpan: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.rightMargin: 10
            Layout.bottomMargin: 10
            Layout.maximumHeight: parent.height/5
            //Layout.alignment: Qt.AlignRight|Qt.AlignVCenter
            Rectangle{
                id:subRec
                //anchors.fill:parent
                anchors.right: parent.right
                anchors.bottom:  parent.bottom//verticalCenter
                width: parent.width/3//customerLogo.width>parent.width/2?parent.width/2:customerLogo.width
                height: parent.height/2//customerLogo.height>parent.height?parent.height:customerLogo.height
                color: StringConstants.color_gbTransparent
                Image {
                    id: customerLogo
                    source: "file:///" + applicationDirPath +"/resource/MPSII_logo.png"
                    width: parent.width
                    height: parent.height
                }
            }


        }
    }
}
