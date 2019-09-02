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
import ApplicationConstants 1.0
import "."
//Component{
//    id: actionHeaderDelegate

Rectangle {
    //anchors.left: parent.left
    //anchors.right: parent.right
    //height: root.rowHeight
    id: homePageBodyDelegate
    height: IntegerConstants.homePageBodyBtnHeight//4*testControlBtn.height////75
    width: IntegerConstants.homePageBodyBtnwidth//4*testControlBtn.width////75
    color: IntegerConstants.homePageBodyColor//"#5EBDC3"//Constants.headerBackgroundColor//"transparent"//"#5EBDC3"//
    border.color: IntegerConstants.homePageBodyBorder//Constants.actionBtnBorderColor
    border.width: 5
    signal invokeSource(string source)
    signal invokeIndex(int index)
    signal test()
    onTest: console.log("I am tested")
    onInvokeSource: console.log("I am the soure"+source)
    ToolButton {
        id:testControlBtn
        anchors.centerIn: parent
        icon.name: actionIconName
        icon.source:actionIconSource
        icon.color:actionIconColor
        //icon.name: "timeline_tab_selected"
        icon.width: 100
        icon.height: 100
        width: 2*icon.width
        height: 2*icon.height
        background: Rectangle{ color: StringConstants.homePageBodyColor}//Constants.actionBtnBackgroundColor}
        display: AbstractButton.TextUnderIcon
        text: actionText
        //radius: 10
        onClicked: {
            console.log("clicked on"+actionIconName)
            console.log("The source is"+source)
            console.log("The index is"+index)
            invokeSource(source)
            invokeIndex(index)
            test()
            //clickedButton(index)
        }
    }
    //        Text {
    //            text: role_display
    //            anchors.centerIn: parent
    //        }
}
//}
