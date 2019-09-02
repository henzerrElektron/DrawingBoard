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
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
//PageActionsButtons{
//    id:image2
//    group1: "homeMainItems"
//    actionOrHome: false
//    Component.onCompleted: {
//       actionOrHome = false
//    }
//}
Rectangle {
    id: rectangle3
    color: "pink"//"transparent"
    //anchors.fill: parent
    width: theListView.width
    height: theListView.height
    anchors.centerIn: parent
    property alias group: allPageModel1.filterOnGroup
    property bool actionOrHome: true
    signal componentTriggered(string name)
    signal tested
    onTested: {"I am tested in TestActionsButtons"}
    onComponentTriggered: {
            console.log(" component was triggered"+name)
        }
    //signal clicked
    //color: "black"
//    HomePageBodyDelegate{
//        id: homePageBodyDelegate
//    }
    ActionDelegateModel{
        id:actionDelegateModel
    }
    AllPageModel {
        id: allPageModel1
        delegate: HomePageBodyDelegate{
            Component.onCompleted: {
            invokeSource.connect(rectangle3.componentTriggered)
            test.connect(rectangle3.tested)
            }
        }//actionHeaderDelegate
        filterOnGroup: "homeMainItems"
        model: actionDelegateModel//actionDelegateModel//homePageBodyDelegate

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
//    Component {
//        id:  highlightComponent
//        Rectangle {  color: "lightsteelblue"; radius: 5;width:  IntegerConstants.actionBtnWidth;height: IntegerConstants.actionBtnHeight }
//    }
    GridView {
        id: theListView
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.verticalCenter: parent.verticalCenter
        //anchors.fill: parent
        Layout.alignment: Qt.AlignHCenter| Qt.AlignVCenter
        //Layout.fillHeight: true
        //Layout.fillWidth: true
        //anchors.fill: parent
        //anchors.centerIn: parent
        //anchors.top: parent.top
        //anchors.bottom: parent.bottom
        //anchors.right: parent.right
        //anchors.rightMargin: 10
        //anchors.left: parent.left
        //anchors.leftMargin: 10
        //anchors.leftMargin: parent.width - theListView.count * cellWidth - 10
        //highlight: highlightComponent
        width: theListView.count* cellWidth+10
       // height: theListView.count * cellHeight + 10
        focus: true
        cellHeight:2*IntegerConstants.actionBtnHeight//actionOrHome ?IntegerConstants.actionBtnHeight:2*IntegerConstants.actionBtnHeight//75
        cellWidth:2*IntegerConstants.actionBtnWidth///actionOrHome ?IntegerConstants.actionBtnWidth:2*IntegerConstants.actionBtnWidth//75
        model:actionOrHome ? allPageModel:allPageModel1//actionOrHome ? allPageModel:// allPageModel//nameModel

    }

}
