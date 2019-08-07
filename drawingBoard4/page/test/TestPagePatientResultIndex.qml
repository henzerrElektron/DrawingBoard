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
import QtQuick.Controls 2.5
import Qt.labs.settings 1.0
import QtQuick.Controls.Styles 1.4
//import QtQuick.Controls 1.4
import QtQuick.Shapes 1.11
import "."
import "./../../images/"
import "./../../imports/"
import "./../../icons/all/"
import "./../../delegates/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
Item {
    //width: 800
    //height: 125
    Rectangle {
        id: rectangle
        //color: "#ffffff"
        anchors.fill: parent
        border.color: "black"
        border.width: 1
        Row{
            id:mainRow
            //height: 125
            anchors.fill: parent
            Rectangle {
                id: rectangle1
                height: 50
                color: StringConstants.testPage_ResultIndexTitleBgColor
                anchors.top: parent.top
                anchors.topMargin: 0
                anchors.right: parent.right
                anchors.rightMargin: 0
                anchors.left: parent.left
                anchors.leftMargin: 0

                Label {
                    id: label
                    text: qsTr("Patient History - 9 Results(3 Right,6 Left)")
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    font.bold: true
                    anchors.top: parent.top
                    anchors.topMargin: 10
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 12
                    color: "white"
                }
            }
            Row{
                id:row1
                anchors.top: rectangle1.bottom
                anchors.topMargin: 10
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 10
                anchors.left: parent.left
                anchors.leftMargin: 20
                anchors.right: parent.right
                Column{
                    id:col1
                    anchors.fill: parent
                    Rectangle {
                        id: rectangle2
                        height: 40
                        //anchors.left: parent.left
                        //anchors.right: parent.right
                        width: 100
                        color: StringConstants.testPage_ResultIndexTitleBgColor
                        radius: 30
                        Label {
                            id: label1
                            anchors.fill: parent
                            text: qsTr("9 of 9")
                            font.bold: true
                            anchors.top: parent.top
                            anchors.topMargin: 10
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignTop
                            font.pointSize: 12
                            color: "white"
                        }
                    }
                    Label {
                        id: label2
                        anchors.left: rectangle2.right
                        anchors.leftMargin: 25
                        anchors.verticalCenter: rectangle2.verticalCenter
                        text: qsTr("14:30,Wed 6th Feb 2019(Today) ")
                        font.pointSize: 12
                        font.bold: true
                    }
                    Rectangle {
                        id: rectangle3
                        height: 40
                        width: 100
                        anchors.left: label2.right
                        anchors.leftMargin: 10
                        color: StringConstants.testPage_ResultIndexEyeBgColor
                        radius: 30
                        anchors.verticalCenter: label2.verticalCenter
                        Label {
                            id: label3
                            //anchors.centerIn: rectangle3.Center
                            text: qsTr("Both")
                            anchors.horizontalCenter: parent.horizontalCenter
                            anchors.left: parent.left
                            anchors.bottom: parent.bottom
                            anchors.top: parent.top
                            font.bold: true
                            horizontalAlignment: Text.AlignHCenter
                            verticalAlignment: Text.AlignVCenter
                            font.pointSize: 12
                            color: "white"
                        }
                    }

                    //                    ToolButton {
                    //                        id: toolButton_first
                    //                        background: Rectangle{
                    //                            color: "white"
                    //                        }
                    //                        anchors.left: toolButton_prev.left
                    //                        anchors.leftMargin: -50
                    //                        autoExclusive: true
                    //                        text: qsTr("Tool Button")
                    //                        icon.width: 50
                    //                        icon.height: 50
                    //                        width:50
                    //                        height: 50
                    //                        icon.name: "icon_to_first"
                    //                        icon.source: "qrc:/images/icon_to_first.png"
                    //                        icon.color: "transparent"
                    //                        display: AbstractButton.IconOnly
                    //                    }
                    //                    ToolButton {
                    //                        id: toolButton_prev
                    //                        background: Rectangle{
                    //                            color: "white"
                    //                        }
                    //                        anchors.left: toolButton_next.left
                    //                        anchors.leftMargin: -50
                    //                        autoExclusive: true
                    //                        autoRepeat: true
                    //                        icon.width: 50
                    //                        icon.height: 50
                    //                        width:50
                    //                        height: 50
                    //                        text: qsTr("Tool Button")
                    //                        icon.name:"icon_to_previous"
                    //                        icon.source:"qrc:/images/icon_to_previous.png"
                    //                        icon.color: "transparent"
                    //                        display: AbstractButton.IconOnly
                    //                    }
                    //                    ToolButton {
                    //                        id: toolButton_next
                    //                        background: Rectangle{
                    //                            color: "white"
                    //                        }
                    //                        anchors.left: toolButton_last.left
                    //                        anchors.leftMargin: -50
                    //                        autoExclusive: true
                    //                        autoRepeat: true
                    //                        icon.width: 50
                    //                        icon.height: 50
                    //                        width:50
                    //                        height: 50
                    //                        text: qsTr("Tool Button")
                    //                        icon.name:"icon_to_next"
                    //                        icon.source:"qrc:/images/icon_to_next.png"
                    //                        icon.color: "transparent"
                    //                        display: AbstractButton.IconOnly
                    //                    }
                    //                    TestNavDelegate {
                    //                        id: toolButton_last
                    //                        anchors.left: parent.right
                    //                        anchors.leftMargin: -50
                    //                    }
                    Item {
                        id:spaceItem
                        width: parent.width
                        height: parent.height
                    }
                    Rectangle{
                        id:rectangle7
                        color: "transparent"
                        //anchors.left: rectangle3.right
                        //anchors.leftMargin:10
                        anchors.right: parent.right
                        anchors.rightMargin: -50//navItems.width/2
                        width: 250//navItems.width+10
                        //anchors.fill: parent
                        TestNavItems{
                            id:navItems
                            //anchors.left: rectangle3.right
                            //anchors.leftMargin:10
                            //anchors.right: parent.right
                            //anchors.rightMargin: (10)
                            //height: parent.height
                            //anchors.right: parent.left
                            anchors.fill: parent
                            flickableDirection: Flickable.AutoFlickDirection
                        }
                    }

                    // }

                }


            }
        }



    }

}























































/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:3;anchors_y:19}D{i:2;anchors_width:200;anchors_x:151;anchors_y:24}
D{i:1;anchors_height:200;anchors_width:200;anchors_x:109;anchors_y:72}
}
 ##^##*/
