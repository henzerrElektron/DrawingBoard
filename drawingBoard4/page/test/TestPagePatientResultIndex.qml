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
//import "./../../imports/"
import "./../../icons/all/"
import "./../../delegates/"
import "./../../common/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
//Item {
//width: 800
//height: 125
/*!
   \qmltype TestPagePatientResultIndex
   \brief A footer section of the Patient Test graph that holds previous test result .

  This Component contains various navigation buttons to navigate between various patient results
   \image tobeprovided.png

   \section1 Sample usage

   To display patients previous results
   \qml
            TestPagePatientResultIndex{
                id: supplementTab
                anchors.fill: parent
            }
   \endqml

*/
Rectangle {
    id: rectangle
    objectName: StringConstants.objectName_testPagePatientResultIndex
    //color: "#ffffff"
    height: 75
    anchors.fill: parent
    border.color: "black"
    border.width: 1
    Row{
        id:mainRow
        //height: 125
        anchors.fill: parent
        Rectangle {
            id: rectangle1
            height: 30//50
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
                anchors.verticalCenter: parent.verticalCenter
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
            anchors.topMargin: 5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 5
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.right: parent.right
            height: 30
            Column
            {
                id:col1
                anchors.fill: parent
                height: 30
                Rectangle {
                    id: rectangle2
                    height: 35//40
                    //anchors.left: parent.left
                    //anchors.right: parent.right
                    width: 100
                    color: StringConstants.testPage_ResultIndexTitleBgColor
                    radius: 30
                    Label {
                        id: label1
                        text: qsTr("9 of 9")
                        anchors.verticalCenter: parent.verticalCenter
                        anchors.top: parent.top
                        anchors.right: parent.right
                        anchors.left: parent.left
                        font.bold: true
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                        font.pointSize: 10
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
                Item {
                    id:spaceItem
                    width: parent.width
                    height: parent.height
                }
                Rectangle{
                    id:rectangle7
                    color: "transparent"
                    anchors.top: parent.top
                    anchors.topMargin: -7
                    //anchors.verticalCenter: parent.verticalCenter
                    //anchors.left: rectangle3.right
                    //anchors.leftMargin:10
                    anchors.right: parent.right
                    anchors.rightMargin: -50//navItems.width/2
                    height: 30
                    width: 250//navItems.width+10
                    //anchors.fill: parent
                    //                         PageActionsButtons {
                    //                                id: actionGridView
                    //                                anchors.right: parent.right
                    //                                group1:""
                    //                                group:"navigationItems"//StringConstants.modelNavigationItems//"testPageNavigationItems"//StringConstants.modelTestPageNavigationItems//StringConstants.modelTestPageNavItems//"testPageNavActionItems"
                    //                                layoutDirection: Qt.LeftToRight
                    //                                flow: Grid.LeftToRight
                    //                                actionOrHome: true
                    //                                Component.onCompleted: {
                    //                                   // invokeSource.connect(pgTitle.invokeSource)
                    //                                   // invokeIndex.connect(pgTitle.invokeIndex)
                    //                                }
                    //                                onComponentTriggered: {
                    //                                    console.log("I am reaching here")
                    //                                }
                    //                         }

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
    Component.onDestruction: { cleanup()    }
    function init() { console.log("INIT "+Component.objectName)    }
    function cleanup() {  console.log("CLEANUP "+Component.objectName) }
}

//}







































































/*##^## Designer {
    D{i:3;anchors_y:19}D{i:2;anchors_width:200;anchors_x:151;anchors_y:24}D{i:1;anchors_height:200;anchors_width:200;anchors_x:109;anchors_y:72}
}
 ##^##*/
