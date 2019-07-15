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
import "./../test/"
import ApplicationContstants 1.0



Rectangle{
    id:eetLogoRec
    color: "transparent"//color: "black"
    //    color: "transparent"
    height:2*(labellogo.height+labellogo1.height)
    width:(labellogo.width+labellogo1.width)
    Grid
    {
        id:labelGridLogo
        anchors.fill: parent
        rows: 2
        rowSpacing: Constants.logoFontSpacing
        ToolButton {
            id: image
            anchors.left: parent.left
            anchors.leftMargin: 0
            background: Rectangle{
                color: "transparent"
            }
            icon.name: "icon_eet.png"
            icon.source: "qrc:/images/icon_eet.png"
            icon.color: "transparent"
            icon.width: 50
            icon.height: 50
            display:ToolButton.IconOnly
        }
        Label {
            id: labellogo
            color: "white"//Constants.logoFontBgcolor
            font.pointSize: 20//Constants.m_intlogoFontSize//5*Constants.m_intChkFontSize
            font.bold:true
            height: Constants.m_intlogoFontSize
            wrapMode: Label.WordWrap
            font.family: Constants.fontFamily
            renderType: Text.QtRendering
            fontSizeMode: Text.HorizontalFit
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignTop
            text: qsTr("elektron")
            anchors.top: parent.top
            anchors.topMargin: 5
            anchors.left: image.right
            anchors.leftMargin: 5
        }
        Label {
            id: labellogo1
            color: "white"//Constants.logoFontBgcolor
            font.pointSize: 20//Constants.m_intlogoFontSize
            font.bold:true
            height: Constants.m_intlogoFontSize
            wrapMode: Label.WordWrap
            font.family: Constants.fontFamily
            renderType: Text.QtRendering
            fontSizeMode: Text.HorizontalFit
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            text: qsTr("eye technology")
            anchors.bottom: labellogo.bottom
            anchors.bottomMargin: -30
            anchors.left: image.right
            anchors.leftMargin: Constants.m_constantLeftMargin
        }
    }
}





/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
