import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Window 2.0
import QtQml.Models 2.1

import "."
import "./../../models/"
import "./../../delegates"
//import "models/"
//import "delegates/"
import ApplicationContstants 1.0
Column{
    id: theRow
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.top: parent.top
    anchors.margins: 10
    //height: childrenRect.height
    spacing: 20


    Text {
        anchors.horizontalCenter: parent.horizontalCenter
        width:800
        wrapMode: Text.WordWrap
        text: "Testing"
    }
    ActionDelegateModel {
        id: actionDelegateModel
    }

    AllPageModel {
        id: allPageModel
        delegate: actionHeaderDelegate
        filterOnGroup: "homeItems"
        model: actionDelegateModel
    }
    ActionHeaderDelegate {
        id: actionHeaderDelegate
    }
    Row {
        anchors.left: parent.left
        anchors.right: parent.right

//        ExclusiveGroup {
//            id: groupSelection
//        }
        RadioButton {
            id: homeGroup
            autoExclusive: true
            //exclusiveGroup: groupSelection
            text: "Home Group"
            checked:  true
            onCheckedChanged: {
                if ( checked ) {
                    allPageModel.delegate = actionHeaderDelegate
                    allPageModel.filterOnGroup =  "homeItems";
                }
            }
        }
        RadioButton {
            id: existingPatientGroup
            autoExclusive: true
            //exclusiveGroup: groupSelection
            text: "existingPatientItems Group"
            ///checkable: true
            onCheckedChanged: {
                if ( checked ) {
                    allPageModel.delegate = actionHeaderDelegate
                    allPageModel.filterOnGroup =  "existingPatientItems";
                }
            }
        }
        RadioButton {
            id: newPatientGroup
            autoExclusive: true
            //exclusiveGroup: groupSelection
            text: "newPatientItems Group"
            onCheckedChanged: {
                if ( checked ) {
                    allPageModel.delegate = actionHeaderDelegate
                    allPageModel.filterOnGroup =  "newPatientItems";
                }
            }
        }
        RadioButton {
            id: operatorPageGroup
            autoExclusive: true
            //exclusiveGroup: groupSelection
            text: "operatorPageItems Group"
            onCheckedChanged: {
                if ( checked ) {
                    allPageModel.delegate = actionHeaderDelegate
                    allPageModel.filterOnGroup =  "operatorPageItems";
                }
            }
        }
        RadioButton {
            id: reportPageGroup
            autoExclusive: true
            //exclusiveGroup: groupSelection
            text: "reportPageItems Group"
            onCheckedChanged: {
                if ( checked ) {
                    allPageModel.delegate = actionHeaderDelegate
                    allPageModel.filterOnGroup =  "reportPageItems";
                }
            }
        }
        RadioButton {
            id: testPageItemsGroup
            autoExclusive: true
            //exclusiveGroup: groupSelection
            text: "testPageItems Group"
            onCheckedChanged: {
                if ( checked ) {
                    allPageModel.delegate = actionHeaderDelegate
                    allPageModel.filterOnGroup =  "testPageItems";
                }
            }
        }
    }
    Component {
        id:  highlightComponent
        Rectangle {  color: "lightsteelblue"; radius: 5;width:  Constants.actionBtnWidth;height: Constants.actionBtnHeight }
    }
    GridView {
        id: theListView
        anchors.left: parent.left
        anchors.right: parent.right
        highlight: highlightComponent
        focus: true
        height: 600
        cellHeight: Constants.actionBtnHeight//75
        cellWidth: Constants.actionBtnWidth//75
        model: allPageModel
    }
}
