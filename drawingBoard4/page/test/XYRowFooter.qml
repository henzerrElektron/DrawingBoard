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
import "."
import "./../../images/"
import "./../../delegates/"
import "./../../models/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
Component{
    id:footerItem
    GridLayout{
        id: footerGrid
        height:parent.height
        width: parent.width/2//30//row.width
        Rectangle {
            //anchors.fill: parent
            Layout.fillHeight: true
            Layout.fillWidth: true
            id:rowRec
            //color: "yellow"
            Label{
                id: headerLabel
                //width: row.width/3
                anchors.centerIn: parent
                color: "black"
                Layout.alignment: Qt.AlignLeft
                text:testOrReport? StringConstants.label_testTempFrequency:StringConstants.label_testMPvalue
                rotation: 90
            }
        }
    }

}
