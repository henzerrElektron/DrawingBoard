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
import QtQuick.Extras 1.4
import QtQuick.Controls.Styles 1.4
import "."
import "./../../images/"
import "./../../delegates/"
import "./../../models/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0

Rectangle{
    id:mainRec
    //width: (elementKnown.width >= elementYesNo.width)?elementKnown.width:elementYesNo.width
    //height: elementKnown.height + elementYesNo.height +mainLayout.spacing
    property bool horOrVer: true//false
    property alias secondSwitchVisible: elementYesNo.visible
    property alias firstSwitchVisible: elementKnown.visible
    property alias firstSwitchText: elementKnown.text
    property alias switchChecked: elementKnown.checked
    property alias switchVisible:  elementKnown.visible
    color: StringConstants.color_gbTransparent
    //anchors.fill: parent
    width: mainLayout.width
    height: mainLayout.height
    //color: "red"//"transparent"//
    //height: mainLayout.height
    //width: mainLayout.width
    signal toggleCommandReceived()
    onToggleCommandReceived: {
        if(!elementKnown.checked)
        {
            elementKnown.toggle()
        }
        if(!elementYesNo.checked)
        {
            elementYesNo.toggle()
        }
    }

    //GridLayout{
    Grid{
        id:mainLayout
        //rowSpacing: 5
        columns:horOrVer?1:2
        rows: horOrVer?2:1
        columnSpacing: horOrVer?10:20
        rowSpacing:horOrVer?5:10
        width: elementKnown.width
        height: elementKnown.height+elementYesNo.height
        //anchors.fill: parent
        //spacing: 10


        Switch {
            id: elementKnown
            width: 125
            height: 30
            anchors.top: parent.top
            //Layout.fillWidth: true
            //            Layout.minimumWidth: horOrVer?125:125
            //            Layout.preferredWidth: horOrVer?125:125
            //            Layout.maximumWidth: horOrVer?125:125
            //            Layout.minimumHeight: horOrVer?30:30
            //            Layout.preferredHeight: horOrVer?30:30
            //            Layout.maximumHeight: horOrVer?30:30
            //            Layout.row: 1
            //            Layout.rowSpan: 1
            //            Layout.column: 1
            //            Layout.columnSpan: 1
            //Layout.fillWidth: true
            //Layout.fillHeight: true
            text: qsTr("UnKnown")
            //            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            onCheckedChanged: {
                if(text === "UnKnown")
                {
                    text = qsTr("Known")
                }
                else
                {
                    text = qsTr("UnKnown")
                }
            }
        }
        Switch {
            id: elementYesNo
            width: 125
            height: 30
            anchors.top: elementKnown.visible?elementKnown.bottom:parent.top
            anchors.topMargin: elementKnown.visible?0:17
            //Layout.fillWidth: true
            //            Layout.minimumWidth: horOrVer?125:125
            //            Layout.preferredWidth: horOrVer?125:125
            //            Layout.maximumWidth: horOrVer?125:125
            //            Layout.minimumHeight: horOrVer?30:30
            //            Layout.preferredHeight: horOrVer?30:30
            //            Layout.maximumHeight: horOrVer?30:30
            //            Layout.row: 2//horOrVer?2:1
            //            Layout.rowSpan: 1
            //            Layout.column: 1// horOrVer?1:2
            //            Layout.columnSpan: 1
            //Layout.fillWidth: true
            //Layout.fillHeight: true
            text: qsTr("No")
            //            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
            //            Layout.topMargin: firstSwitchVisible?0:elementYesNo.height/2
            onCheckedChanged: {
                if(text === "No")
                {
                    text = qsTr("Yes")
                }
                else
                {
                    text = qsTr("No")
                }
            }
        }
    }
}








