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
Component{
    id: actionHeaderDelegate

    Rectangle {
        //anchors.left: parent.left
        //anchors.right: parent.right
        //height: root.rowHeight
        height: Constants.actionBtnHeight//75
        width: Constants.actionBtnWidth//75
        color: Constants.headerBackgroundColor//"transparent"//"#5EBDC3"//
        //border.color: "black"//Constants.actionBtnBorderColor
        ToolButton {
            id:testControlBtn
            anchors.centerIn: parent
            icon.source:actionImgSource
            width: 2*icon.width
            height: 2*icon.height
            background: Rectangle{ color: Constants.actionBtnBackgroundColor}
            display: AbstractButton.IconOnly
            //radius: 10
            onClicked: {
                //console.log("clicked on"+btnName)
                //clickedButton(index)
            }
        }
        //        Text {
        //            text: role_display
        //            anchors.centerIn: parent
        //        }
    }
}
