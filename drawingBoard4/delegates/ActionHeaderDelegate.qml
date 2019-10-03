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
import QtQuick.Controls 2.3
import Qt.labs.settings 1.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Shapes 1.11
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
import ApplicationConstants 1.0
import "."
//Component{
//    id: actionHeaderDelegate

    Rectangle {
        //anchors.left: parent.left
        //anchors.right: parent.right
        //height: root.rowHeight
        id: actionHeaderDelegateRec
        height: IntegerConstants.actionBtnHeight//75
        width: IntegerConstants.actionBtnWidth//75
        color: StringConstants.testPage_backgroundColor//"#5EBDC3"//Constants.headerBackgroundColor//"transparent"//"#5EBDC3"//
        //border.color: "black"//Constants.actionBtnBorderColor
        signal invokeSource(string source)
        signal invokeIndex(int index)
        signal test()
        onInvokeIndex: console.log("The invoke index is"+index)
        onTest: console.log("I am tested")
        onInvokeSource: console.log("I am the soure"+source)
        ToolButton {
            id:testControlBtn
            anchors.centerIn: parent
            icon.name: actionIconName
            icon.source:actionIconSource
            icon.color:actionIconColor
            //icon.name: "timeline_tab_selected"
            icon.width: 50
            icon.height: 50
            //width: 2*icon.width
            //height: 2*icon.height
            background: Rectangle{ color: StringConstants.actionBtnBackgroundColor}
            display: AbstractButton.IconOnly
            //radius: 10
            onClicked: {
                console.log("clicked on"+actionIconName)
                console.log(source)
                invokeSource(source)
                invokeIndex(index)
               // test()
                //clickedButton(index)
            }
        }
        //        Text {
        //            text: role_display
        //            anchors.centerIn: parent
        //        }
    }
//}
