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
import ApplicationContstants 1.0
Rectangle
{
    id:mainRec
    //color: "black"
    color: "transparent"
    height: image2.height+ 2* rectangle1.height
    //implicitHeight: rectangle1.height
    //implicitWidth: rectangle1.width
    //width: rectangle1.width
    //height: rectangle1.height
    Grid
    {
        id:homeGrid
        anchors.fill: parent
        height: image2.height
        columns: 2
        Rectangle
        {
            id:rectangle1
            color: "transparent"//color: "black"
            Layout.row: 1
            Layout.column: 1
            height: 50//image.height
            width: 50//image.width
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.top: parent.top
            anchors.topMargin: 10
            Image {
                id: image
                width: 50
                height: 50
                source: "qrc:/images/icon_eet.png"
            }
        }

        Rectangle {
            id: rectangle
            width:  image2.width
            height: image2.height
            color: "transparent"//"#ffffff"
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.right: parent.right
            anchors.rightMargin: 10
            //            Image {
            //                id: image1
            //                //anchors.left: parent.right
            //                //anchors.leftMargin: -image2.width
            //                source: "qrc:/images/icon_eet.png"
            //                //anchors.right: parent.right
            //                //anchors.rightMargin: 10
            //                //anchors.top: parent.top
            //                //anchors.topMargin: 10
            //            }
            PageActionsButtons{
                id:image2
                group: "homeItems"
                actionOrHome: true
            }
        }
    }
}
















/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
