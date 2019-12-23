import QtQuick 2.12
import QtQuick 2.5
import QtQuick.Controls 2.5
//import QtQuick.Window 2.12
//import QtQuick.Shapes 1.11
//import QtQuick.Templates 2.5
//import QtQuick.Layouts 1.12
//import QtQuick.Extras 1.4
//import QtQuick.Dialogs.qml 1.0
//import QtQuick.Controls.Universal 2.0
//import Qt.labs.calendar 1.0
//import QtQuick.Controls.Material 2.0
//import QtQuick.Controls 2.3
//import Qt.labs.settings 1.0
//import QtQuick.Controls.Styles 1.4
//import QtQuick.Shapes 1.11
//import QtQml.Models 2.12
import "."
import "./../../images/"
//import "./../../imports/"
import "./../../models/"
import "./../../delegates/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0

Rectangle {
    id: rectangle3
    color: "transparent"
    property alias group: allPageModel.filterOnGroup
    signal componentTriggered(string name)
    signal tested
    onTested: {"I am tested in TestActionsButtons"}
    onComponentTriggered: {
            console.log(" component was triggered"+name)
        }
    //signal clicked
    //color: "black"
    ActionDelegateModel {
        id: actionDelegateModel
    }

    AllPageModel {
        id: allPageModel
        delegate: ActionHeaderDelegate{
            Component.onCompleted: {
            invokeSource.connect(rectangle3.componentTriggered)
            test.connect(rectangle3.tested)
            }
        }//actionHeaderDelegate
        filterOnGroup: "testPageItems"
        model: actionDelegateModel

    }
//    ActionHeaderDelegate {
//        id: actionHeaderDelegate
//        Component.onCompleted:{
//            //testControlBtn.clicked.connect(invokeSoure)
//            //testControlBtn.clicked.connect(test)
////            invokeSoure.connect(componentTriggered)
////            test.connect(tested)
////            testControlBtn.invokeSoure.connect(componentTriggered)
////            testControlBtn.test.connect(tested)
////            onInvokeSource:
////            console.log("Testing it here")
//        }

//    }
    Component {
        id:  highlightComponent
        Rectangle {  color: "lightsteelblue"; radius: 5;width:  IntegerConstants.actionBtnWidth;height: IntegerConstants.actionBtnHeight }
    }
    GridView {
        id: theListView
        //anchors.fill: parent
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.left: parent.left
        //anchors.leftMargin: 10
        anchors.leftMargin: parent.width - theListView.count * cellWidth - 10
        highlight: highlightComponent
        focus: true
        cellHeight:IntegerConstants.actionBtnHeight//75
        cellWidth:IntegerConstants.actionBtnWidth//75
        model:allPageModel// allPageModel

    }
    ListModel {
        id: nameModel
        ListElement { name: "A" }
        ListElement { name: "B" }
        ListElement { name: "J" }
        ListElement { name: "H" }
        ListElement { name: "W" }
    }
}



/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
