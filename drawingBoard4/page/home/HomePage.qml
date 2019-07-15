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
import "./../../imports/"
import "./../../models/"
import "./../../delegates/"
import "./../test/"
import ApplicationContstants 1.0


Rectangle {
    id: rectangle
    color: "white"//Constants.testPage_backgroundColor
    Grid{
        id: mainRow
        anchors.fill: parent
        rows:2
        Rectangle{
            id:rec1
            color:Constants.testPage_backgroundColor//"transparent"//"black"
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right
            //Layout.fillHeight: true
            //Layout.fillWidth: true
            Layout.row: 1
            Layout.rowSpan: 1
            Layout.maximumHeight: parent.height/4
            height: parent.height/4
            HomePageLabel{
                id:homePageLabel
                anchors.fill: parent
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
        }
        Rectangle{
            id:rec2
            color:"white"//"green"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            //anchors.top: rec1.bottom
            //anchors.topMargin: 250
            //anchors.left: parent.left
            //anchors.right: parent.right
            //anchors.bottom: parent.bottom
            //Layout.fillHeight: true
            //Layout.fillWidth: true
            //Layout.row: 2
            //Layout.rowSpan: 1
            //                        PageActionsButtons{
            //                            id:image2
            //                            Layout.alignment: Qt.AlignHCenter|Qt.AlignVCenter
            //                            group1: "homeMainItems"
            //                            group: ""
            //                            actionOrHome: true
            //                            Component.onCompleted: {
            //                               actionOrHome = true
            //                            }
            //                        }
            HomePageActionButtons{
                id:homeButtons
                //anchors.fill: parent
//                anchors.top: rec1.bottom
//                anchors.left: parent.left
//                anchors.right: parent.right
//                anchors.bottom: parent.bottom
//                Layout.fillHeight: true
//                Layout.fillWidth: true
//                Layout.row: 2
//                Layout.rowSpan: 1
                group: "homeMainItems"
            }

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
