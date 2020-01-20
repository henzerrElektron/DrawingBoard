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
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
/*!
   \qmltype TestPageSwitchButtons
   \brief A Component that contains custom buttons to allow user to switch between Left/Right and Central/Detailed test

  This Component contains is present in the header section of the Patient Label

   \image tobeprovided.png

   \section1 Sample usage

   To display buttons which contains checkbox to indicate which mode the test is currently on and what eye is being currently tested
   \qml
            TestPageSwitchButtons{
                id:pageSwitchButtons
                anchors.fill: parent
            }
   \endqml

*/
Rectangle {
    id: rectangle4
    objectName: StringConstants.objectName_testPageSwitchButtons
    //color: "black"
    color: StringConstants.testPage_backgroundColor//color: "transparent"
    //anchors.left: rectangle2.right
    //Layout.alignment: Qt.AlignLeft| Qt.AlignBottom
    Layout.alignment: Qt.AlignVCenter| Qt.AlignHCenter
    //Layout.fillHeight: true
    //Layout.fillWidth: true
    ButtonGroup{
        id:buttonEyeGroup
        exclusive: true
    }
    ButtonGroup{
        id:buttonMode
        exclusive: true
    }

    //GridLayout{
    Grid{
        id:subGrid
        anchors.left: parent.left
        //anchors.leftMargin: 0
        //anchors.left: parent.horizontalCenter
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        //anchors.topMargin: 10
        //anchors.bottomMargin: 10
        anchors.leftMargin: 10
        anchors.rightMargin: 10
        anchors.top: parent.top
        anchors.fill: parent
        rows: 2
        columns:2
        spacing: 5
        columnSpacing: 10
        Rectangle{
            id:rec1
            width: parent.width/2 //- 40
            height: parent.height/2 //- 40
//            anchors.left: parent.left
//            anchors.top: parent.top
//            anchors.leftMargin: 10
//            anchors.rightMargin: 10
//            anchors.topMargin: 10
//            anchors.bottomMargin: 10
          //  Layout.row: 1
          //  Layout.column: 1
         //   Layout.fillHeight: true
         //   Layout.fillWidth: true
            TestPageButton {
                id: buttonRight
                anchors.fill: parent
                bgGroup:buttonEyeGroup
                labelText: StringConstants.buttonName_leftEye
                //ButtonGroup.group: buttonEyeGroup
                //Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                ////////////////////////////////////////////down:true
                onClicked: !down
                //width: 130
                //height: 50
            }
        }
        Rectangle{
            id:rec2
            width: parent.width/2 //- 40
            height: parent.height/2// - 40
//            anchors.leftMargin: 10
//            anchors.rightMargin: 10
//            anchors.topMargin: 10
//            anchors.bottomMargin: 10
//            anchors.left: rec1.right
//            anchors.right: parent.right
//            anchors.top: parent.top
            //Layout.row: 1
          //  Layout.column: 2
          //  Layout.fillHeight: true
         //   Layout.fillWidth: true
            TestPageButton {
                id: buttonLeft
                anchors.fill: parent
                labelText: StringConstants.buttonName_rightEye
                bgGroup:buttonEyeGroup
                //Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                //width: 130
                //height: 50
                //anchors.left: buttonRight.right
                //anchors.leftMargin: 2
            }
        }
        Rectangle{
            id:rec3
            width: parent.width/2 //- 40
            height: parent.height/2 //-40
//            anchors.leftMargin: 10
//            anchors.rightMargin: 10
//            anchors.topMargin: 10
//            anchors.bottomMargin: 10
//            anchors.top: rec1.bottom
//            //anchors.bottom: parent.bottom
//            anchors.left: parent.left
         //   Layout.row: 2
         //   Layout.column: 1
         //   Layout.fillHeight: true
        //    Layout.fillWidth: true
            TestPageButton {
                id: buttonStandard
                anchors.fill: parent
                labelText: StringConstants.buttonName_standard
                subLabelText: StringConstants.buttonName_central
                bgGroup:buttonMode
                //Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                //width: 160
                //height: 50
            }
        }

        Rectangle{
            id:rec4
           // Layout.row: 2
          //  Layout.column: 2
         //   Layout.fillHeight: true
         //   Layout.fillWidth: true
            width: parent.width/2 //- 40
            height: parent.height/2 //- 40
//            anchors.leftMargin: 10
//            anchors.rightMargin: 10
//            anchors.topMargin: 10
//            anchors.bottomMargin: 10
//            anchors.top: rec2.bottom
//            anchors.left: rec3.right
//            anchors.right: parent.right
           // anchors.bottom: parent.bottom
            TestPageButton {
                id: buttonDetailed
                anchors.fill: parent
                labelText: StringConstants.buttonName_detailed
                subLabelText: StringConstants.buttonName_centralPeripheral
                bgGroup:buttonMode
                //Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                ////////////////////////////////////////////////////////down:true
                //width: 160
                //height: 50
                //anchors.left: buttonStandard.right
                //anchors.leftMargin: 2
            }
        }



    }
    Component.onDestruction: { cleanup()    }
    function init() { console.log("INIT "+Component.objectName)    }
    function cleanup() {  console.log("CLEANUP "+Component.objectName) }
}



/*##^##
Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:4;anchors_height:200;anchors_width:280}
}
##^##*/
