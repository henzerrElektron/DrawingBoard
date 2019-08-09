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
Rectangle {
    id: rectangle
    color: StringConstants.testPage_backgroundColor
    height:logoRec.height// + eetLogoRec.height
    Grid{
        id: mainRow
        anchors.fill: parent
        columns: 2
        rows:1
        HomePageLeftLogo {
            id: logoRec
            anchors.left: parent.left
            anchors.leftMargin: 0
        }
        HomePageRightLogo {
            id: eetLogoRec
            anchors.right: parent.right
            anchors.rightMargin: 0
        }
    }
}

//}





















































































































/*##^## Designer {
    D{i:1;anchors_height:200;anchors_width:200;anchors_x:107;anchors_y:66}
}
 ##^##*/
