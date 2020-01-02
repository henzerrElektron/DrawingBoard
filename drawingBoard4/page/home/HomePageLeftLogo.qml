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
   \qmltype HomePageLeftLogo
   \brief This contains the left logo

  This is used in HomePageLogo .
   \image tobeprovided.png

   \section1 Sample usage

   The usage of HomePageLeftLogo is demonstrated below
   \qml
            HomePageLeftLogo{
                id:logoRec
                anchors.fill: parent
            }
   \endqml

*/
Rectangle{
    id: logoRec
    color: "transparent"//"black"//
    width: 300
    height: 100
    //width:label_mps.width
    anchors.fill: parent
    Grid{
        id: grid
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.bottom: parent.bottom
        anchors.left: parent.left
        anchors.top: parent.top
        rows: 2
        rowSpacing: 5
        //height: label_mps.height+label_mpsFull.height
        //width:label_mps.width
//        Label {
//            id: label_mpsFull
//            background: Rectangle{
//                id:temp
//                color: "green"
//            }
//            color: "#ffffff"//"black"//
//            height: 23//(parent.height/5) - 10
//            //(parent.height/5) - 10//14//*Constants.m_intChkFontSize
//            font.bold:true
//            font.family: OtherConstants.fontFamily
//            renderType: Text.QtRendering
//            fontSizeMode: Text.HorizontalFit
//            horizontalAlignment: Text.AlignHCenter
//            verticalAlignment: Text.AlignVCenter
//            text:StringConstants.lbl_AppTitle1
//            //z: 1
//            rightPadding: 0
//            anchors.leftMargin: 0
//            font.pixelSize: 24
//            topPadding: 3
//            leftPadding: 2
//            //rightPadding: 22// qsTr(" Macular Pigment Screener")
//            anchors.top: parent.top
//            anchors.topMargin: -4
//            anchors.left: parent.left
//            anchors.right: label_mps.right
//            //anchors.bottom: label_mps.top
//            //anchors.bottomMargin: 100//0
//            //anchors.rightMargin: 5
//        }
        Label {
            id: label_mps
            background: Rectangle{
                id:temp1
                color: "transparent"//"transparent"//"blue"//
                Label {
                    id: label_mpsFull

                    color: "#ffffff"//"black"//
                    height: 23//(parent.height/5) - 10
                    //(parent.height/5) - 10//14//*Constants.m_intChkFontSize
                    font.bold:true
                    font.family: OtherConstants.segoeuiSemiBoldFont
                    renderType: Text.QtRendering
                    fontSizeMode: Text.HorizontalFit
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    anchors.horizontalCenter: parent.horizontalCenter
                    text:StringConstants.lbl_AppTitle1
                    font.wordSpacing: 0
                    font.letterSpacing: -0.69
                    //z: 1
                    rightPadding: 0
                    anchors.leftMargin: 0
                    font.pixelSize: 24
                    topPadding: 0
                    leftPadding: -5
                    //rightPadding: 22// qsTr(" Macular Pigment Screener")
                    anchors.top: parent.top
                    anchors.topMargin: -2
                    anchors.left: parent.left
                    anchors.right: label_mps.right
                    //anchors.bottom: label_mps.top
                    //anchors.bottomMargin: 100//0
                    //anchors.rightMargin: 5
                }
            }
            z:-1
            height: 28
            color:  "#ffffff"//"black"//
            //110//parent.height - (label_mpsFull.height+240)//(parent.height/10)-80//60
            //parent.height - (label_mpsFull.height+240)//(parent.height/10)-80//60//48//5*Constants.m_intChkFontSize
            font.bold:true
            font.family: OtherConstants.segoeuiSemiBoldFont
            renderType: Text.QtRendering
            fontSizeMode: Text.HorizontalFit
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            text: StringConstants.lbl_AppTitle2
            font.letterSpacing: -0.4
            bottomPadding: 4
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            font.pixelSize: 98//35
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.top: parent.top//label_mpsFull.bottom
           // anchors.topMargin: -6
            topPadding: 24
            leftPadding: 0//qsTr("MPS II")
            //anchors.top: label_mpsFull.bottom
            //anchors.bottomMargin:  30//10
            //anchors.rightMargin: 12
            //anchors.bottom: parent.bottom
        }
    }
}



















































































































































































































/*##^## Designer {
    D{i:3;anchors_height:80}
}
 ##^##*/
