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
import ApplicationContstants 1.0
Rectangle{
    id:mainRec
    //width: (elementKnown.width >= elementYesNo.width)?elementKnown.width:elementYesNo.width
    //height: elementKnown.height + elementYesNo.height +mainLayout.spacing
    property bool horOrVer: true
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

    GridLayout{
        id:mainLayout
        columns:horOrVer?1:2
        rows: horOrVer?2:1
        rowSpacing: horOrVer?20:10
        columnSpacing: horOrVer?10:20
        //anchors.fill: parent
        //spacing: 10
        Switch {
            id: elementKnown
            //Layout.fillWidth: true
            Layout.minimumWidth: horOrVer?125:125
            Layout.preferredWidth: horOrVer?125:125
            Layout.maximumWidth: horOrVer?125:125
            Layout.minimumHeight: horOrVer?30:30
            Layout.preferredHeight: horOrVer?30:30
            Layout.maximumHeight: horOrVer?30:30
            Layout.row: 1
            Layout.rowSpan: 1
            Layout.column: 1
            Layout.columnSpan: 1
            //Layout.fillWidth: true
            //Layout.fillHeight: true
            text: qsTr("UnKnown")
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
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
            //Layout.fillWidth: true
            Layout.minimumWidth: horOrVer?125:125
            Layout.preferredWidth: horOrVer?125:125
            Layout.maximumWidth: horOrVer?125:125
            Layout.minimumHeight: horOrVer?30:30
            Layout.preferredHeight: horOrVer?30:30
            Layout.maximumHeight: horOrVer?30:30
            Layout.row: horOrVer?2:1
            Layout.rowSpan: 1
            Layout.column:  horOrVer?1:2
            Layout.columnSpan: 1
            //Layout.fillWidth: true
            //Layout.fillHeight: true
            text: qsTr("No")
            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
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








