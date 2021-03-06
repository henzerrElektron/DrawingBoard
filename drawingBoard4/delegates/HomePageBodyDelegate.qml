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
import ApplicationContstants 1.0
import "."
//Component{
//    id: actionHeaderDelegate

Rectangle {
    //anchors.left: parent.left
    //anchors.right: parent.right
    //height: root.rowHeight
    id: homePageBodyDelegate
    height: Constants.homePageBodyBtnHeight//4*testControlBtn.height////75
    width: Constants.homePageBodyBtnwidth//4*testControlBtn.width////75
    color: Constants.homePageBodyColor//"#5EBDC3"//Constants.headerBackgroundColor//"transparent"//"#5EBDC3"//
    border.color: Constants.homePageBodyBorder//Constants.actionBtnBorderColor
    border.width: 5
    signal invokeSource(string source)
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
        background: Rectangle{ color: Constants.homePageBodyColor}//Constants.actionBtnBackgroundColor}
        display: AbstractButton.TextUnderIcon
        text: actionText
        //radius: 10
        onClicked: {
            console.log("clicked on"+actionIconName)
            console.log(source)
            invokeSource(source)
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
