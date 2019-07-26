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
import "./../../images/"
import "./../../imports/"
import "./../../models/"
import "./../../delegates/"
import ApplicationContstants 1.0


Rectangle{
    id:rectangle1
    //color: "black"
    color: "transparent"
    property alias labelText: label_testPageHeading.text
    //Layout.rowSpan: 2
    //height: 100
    GridLayout{
        //anchors.fill: parent
        columns: 2
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.topMargin: 10
        anchors.leftMargin: 10
        Image {
            id: image
            source: "qrc:/images/icon_eet.png"
            Layout.row: 1
            Layout.column: 1

        }
        TestPageLabel {
            id: label_testPageHeading
            width: 2*Constants.testPage_lblWidth
            height: 2*Constants.testPage_lblHeight
            //anchors.right: image.right
            //anchors.rightMargin: 2*Constants.testPage_rightMargin
            //font.pixelSize:35
            text: Constants.label_testPgHeader
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            Layout.row: 1
            Layout.column: 2
        }
    }
    
}
