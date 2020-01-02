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

/*!
   \qmltype HomePageRightLogo
   \brief This contains the right logo

  This is used in HomePageLogo .
   \image tobeprovided.png

   \section1 Sample usage

   The usage of HomePageRightLogo is demonstrated below
   \qml
            HomePageRightLogo{
                id:logoRec
                anchors.fill: parent
            }
   \endqml

*/
Rectangle{
    id:eetLogoRec
    //anchors.fill: parent
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    width: 300
    //anchors.top: parent.top
    //anchors.bottom: parent.bottom
    //anchors.fill: parent
    color: "transparent"//color: "black"
    //width: 200//labelGridLogo.width//200
    //height: 200//labelGridLogo.height//100
    //    color: "transparent"
   // height:2*(labellogo.height+labellogo1.height)
   // width:(labellogo.width+labellogo1.width)
    Grid
    {
        id:labelGridLogo
        anchors.fill: parent
        rows: 2
        rowSpacing: IntegerConstants.logoFontSpacing
        ToolButton {
            id: image
            anchors.fill: parent
            //anchors.left: parent.left
            //anchors.leftMargin: 0
            background: Rectangle{
                color: "transparent"
            }
            icon.name: "icon_eet.png"
            icon.source: "qrc:/images/eet_logo@3x.png"
            icon.color: "transparent"
            icon.width: parent.width
            icon.height: parent.height
            display:ToolButton.IconOnly
        }
//        Label {
//            id: labellogo
//            color: "white"//Constants.logoFontBgcolor
//            font.pointSize: 20//Constants.m_intlogoFontSize//5*Constants.m_intChkFontSize
//            font.bold:true
//            height: IntegerConstants.m_intlogoFontSize
//            wrapMode: Text.WordWrap//Label.WordWrap
//            font.family: OtherConstants.fontFamily
//            renderType: Text.QtRendering
//            fontSizeMode: Text.HorizontalFit
//            horizontalAlignment: Text.AlignHCenter
//            verticalAlignment: Text.AlignTop
//            text: qsTr("elektron")
//            anchors.top: parent.top
//            anchors.topMargin: 5
//            anchors.left: image.right
//            anchors.leftMargin: 5
//        }
//        Label {
//            id: labellogo1
//            color: "white"//Constants.logoFontBgcolor
//            font.pointSize: 20//Constants.m_intlogoFontSize
//            font.bold:true
//            height: IntegerConstants.m_intlogoFontSize
//            wrapMode: Text.WordWrap//Label.WordWrap
//            font.family: OtherConstants.fontFamily
//            renderType: Text.QtRendering
//            fontSizeMode: Text.HorizontalFit
//            horizontalAlignment: Text.AlignHCenter
//            verticalAlignment: Text.AlignVCenter
//            text: qsTr("eye technology")
//            anchors.bottom: labellogo.bottom
//            anchors.bottomMargin: -30
//            anchors.left: image.right
//            anchors.leftMargin: IntegerConstants.m_constantLeftMargin
//        }
    }
}





/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
