import QtQuick 2.12
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
import "./../../imports/"
import "./../../models/"
import "./../../delegates/"
import ApplicationContstants 1.0


Rectangle {
    id: rectangle3
    color: "transparent"
    //color: "black"
    ActionDelegateModel {
        id: actionDelegateModel
    }

    AllPageModel {
        id: allPageModel
        delegate: actionHeaderDelegate
        filterOnGroup: "testPageItems"
        model: actionDelegateModel

    }
    ActionHeaderDelegate {
        id: actionHeaderDelegate
    }
    Component {
        id:  highlightComponent
        Rectangle {  color: "lightsteelblue"; radius: 5;width:  Constants.actionBtnWidth;height: Constants.actionBtnHeight }
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
        cellHeight:Constants.actionBtnHeight//75
        cellWidth:Constants.actionBtnWidth//75
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
