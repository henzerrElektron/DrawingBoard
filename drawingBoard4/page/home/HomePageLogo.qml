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
   \brief This contains the left logo and also the right logo

  This is used in HomePageLabel .
   \image tobeprovided.png

   \section1 Sample usage

   The usage of HomePageLogo is demonstrated below
   \qml
            HomePageLogo{
                id:logoRec
                anchors.fill: parent
            }
   \endqml

*/
Rectangle {
    id: rectangle
    color: StringConstants.testPage_backgroundColor
    height:rec2.height>rec1.height?rec2.height:rec1.height//logoRec.height// + eetLogoRec.height
    Grid{
        id: mainRow
        anchors.fill: parent
        columns: 2
        rows:1
        Rectangle{
            id:rec1
            color: "transparent"//"black"
            //anchors.topMargin: 42//"transparent"
            //anchors.left: parent.left
            //anchors.right: parent.right
            //anchors.top: parent.top
            //anchors.topMargin: 10
           // anchors.bottom: parent.bottom
            width: logoRec.width
            height: logoRec.height
            anchors.verticalCenter: rec2.verticalCenter
            HomePageLeftLogo {
                id: logoRec
                anchors.fill: parent
                //                anchors.left: parent.left
                //                anchors.leftMargin: 0
                //                anchors.top: parent.top
                //                //anchors.topMargin: 30
                //                anchors.bottom: parent.bottom
                //anchors.verticalCenter: parent.verticalCenter
            }
        }
        Rectangle{
            id:rec2
            color: "transparent"
            //anchors.left: parent.left
            //anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.right: parent.right
            width: eetLogoRec.width
            HomePageRightLogo {
                id: eetLogoRec
                anchors.fill: parent
                //                anchors.right: parent.right
                //                anchors.rightMargin: 0
                //                anchors.top: parent.top
                //                anchors.bottom: parent.bottom
                //anchors.verticalCenter: logoRec.verticalCenter
            }
        }
    }
}

//}























































































































/*##^## Designer {
    D{i:1;anchors_height:200;anchors_width:200;anchors_x:107;anchors_y:66}
}
 ##^##*/
