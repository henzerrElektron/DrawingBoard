import QtQuick 2.12
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
import "./../images/"
//import "./../imports/"
import "./../models/"
import "./../delegates/"
import ApplicationConstants 1.0


//Rectangle {
//    id: rectangle3
//color: "black"//"transparent"
//    anchors.fill: parent

//signal clicked
//color: "black"



//    HomePageBodyDelegate{
//        id: homePageBodyDelegate
//    }
// ActionDelegateModel{
//      id:actionDelegateModel
//  }

//   ActionHeaderDelegate {
//        id: actionHeaderDelegate
//        Component.onCompleted:{
//testControlBtn.clicked.connect(invokeSoure)
//testControlBtn.clicked.connect(test)
//            invokeSoure.connect(componentTriggered)
//            test.connect(tested)
//            testControlBtn.invokeSoure.connect(componentTriggered)
//            testControlBtn.test.connect(tested)
//            onInvokeSource:
//            console.log("Testing it here")
//        }

//    }
//    Component {
//        id:  highlightComponent
//        Rectangle {  color: "black"; radius: 5;width:  IntegerConstants.actionBtnWidth;height: IntegerConstants.actionBtnHeight }
//    }
GridView {
    id: theListView
    //anchors.fill: parent
    property alias group:allPageModel.filterOnGroup//actionOrHome ? allPageModel.filterOnGroup:allPageModel1.filterOnGroup
    property alias group1: allPageModel1.filterOnGroup
    property alias theModel: theListView.model
    property int curWidth: theListView.width
    property bool actionOrHome: true
    //width: theListView.width
    //height: theListView.height
    // flow: GridView.FlowLeftToRight
    signal componentTriggered(string name)
    signal invokeSource(string source)
    signal invokeIndex(int index)
    signal tested()
    onTested: {"I am tested in TestActionsButtons"}
    onComponentTriggered: {
        console.log(" component was triggered"+name)
    }
    onInvokeSource: {
        console.log("The string is"+source)
    }
    onInvokeIndex: {
        console.log("The invokeIndex is"+index)
    }

    cellWidth: actionOrHome ?75:175
    cellHeight: actionOrHome ?75:175
    //width: parent.width
    //height: parent.height
    //anchors.fill: parent
    //anchors.top: parent.top
    //anchors.bottom: parent.bottom
    //anchors.right: parent.right
    //anchors.rightMargin: 10
    //anchors.left: parent.left
    //anchors.leftMargin: 10
    ////////anchors.leftMargin: actionOrHome ?parent.width - theListView.count * cellWidth - 10:parent.width/2 - theListView.count/2 * cellWidth - 10
    //highlight: highlightComponent
    //focus: true
    width:count*cellWidth//actionOrHome ?count*cellWidth:700// actionOrHome ?width:theListView.count* cellWidth+10
    height: actionOrHome ?cellHeight:175//cellHeight+20//
    ///////////////////cellHeight:actionOrHome ?IntegerConstants.actionBtnHeight:2*IntegerConstants.actionBtnHeight//actionOrHome ?IntegerConstants.actionBtnHeight:2*IntegerConstants.actionBtnHeight//75
    //////////////////cellWidth:actionOrHome ?IntegerConstants.actionBtnWidth:2*IntegerConstants.actionBtnWidth//actionOrHome ?IntegerConstants.actionBtnWidth:2*IntegerConstants.actionBtnWidth//75
    model:actionOrHome ? allPageModel:allPageModel1// allPageModel//nameModel
    AllPageModel {
        id: allPageModel1
        delegate: HomePageBodyDelegate{
            Component.onCompleted: {
                invokeSource.connect(theListView.invokeSource)//theListView//actionGridView
                invokeIndex.connect(theListView.invokeIndex)
                test.connect(theListView.tested)
            }
        }//actionHeaderDelegate
        filterOnGroup: "homeMainItems"
        model: actionDelegateModel//ActionDelegateModel{}//actionDelegateModel//homePageBodyDelegate

    }
    AllPageModel {
        id: allPageModel
        delegate: ActionHeaderDelegate{
            Component.onCompleted: {
                invokeSource.connect(theListView.invokeSource)
                invokeIndex.connect(theListView.invokeIndex)
                test.connect(theListView.tested)
            }
        }//actionHeaderDelegate
        filterOnGroup: ""//"homeItems"
        onFilterGroupChanged: {
            console.log("I am changed")
            update()
        }

        model: actionDelegateModel//ActionDelegateModel{}//actionDelegateModel

    }
    ActionDelegateModel {
        id: actionDelegateModel
    }
}
//    ListModel {
//        id:nameModel
//        ListElement {
//            name: "Jim Williams"
//            portrait: "qrc:/images/icon_to_next.png"
//        }
//        ListElement {
//            name: "John Brown"
//            portrait: "qrc:/images/icon_to_next.png"
//        }
//        ListElement {
//            name: "Bill Smyth"
//            portrait: "qrc:/images/icon_to_next.png"
//        }
//        ListElement {
//            name: "Sam Wise"
//            portrait: "qrc:/images/icon_to_next.png"
//        }
//    }
//}







/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
