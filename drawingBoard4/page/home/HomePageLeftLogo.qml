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
//import "./../../imports/"
import "./../../models/"
import "./../../delegates/"
import "./../test/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0

Rectangle{
    id: logoRec
    color: "transparent"
    height: label_mps.height+label_mpsFull.height
    width:label_mps.width
    Grid{
        id: grid
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.top: parent.top
        rows: 2
        rowSpacing: 5
        height: label_mps.height+label_mpsFull.height
        width:label_mps.width
        Label {
            id: label_mpsFull
            color: "#ffffff"//"black"//
            font.pointSize: 11//*Constants.m_intChkFontSize
            font.bold:true
            font.family: OtherConstants.fontFamily
            renderType: Text.QtRendering
            fontSizeMode: Text.HorizontalFit
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            text: qsTr(" Macular Pigment Screener")
            anchors.top: parent.top
            anchors.topMargin: 0
        }
        Label {
            id: label_mps
            color:  "#ffffff"//"black"//
            height:50
            font.pointSize: 48//5*Constants.m_intChkFontSize
            font.bold:true
            font.family: OtherConstants.fontFamily
            renderType: Text.QtRendering
            fontSizeMode: Text.HorizontalFit
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignBottom
            text: qsTr("MPS II")
            anchors.top: label_mpsFull.bottom
            anchors.topMargin: 10
        }
    }
}









/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
