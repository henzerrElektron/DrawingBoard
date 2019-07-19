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
    width: (elementKnown.width >= elementYesNo.width)?elementKnown.width:elementYesNo.width
    //anchors.fill: parent
    //color: "black"//"transparent"//
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

    ColumnLayout{
        id:mainLayout
        anchors.fill: parent
        spacing: 10
        Switch {
            id: elementKnown
            //Layout.fillWidth: true
            //Layout.minimumWidth: 25
            //Layout.preferredWidth: 50
            //Layout.maximumWidth: 75
            //Layout.minimumHeight: 75
            text: qsTr("UnKnown")
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
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
            //Layout.minimumWidth: 25
            //Layout.preferredWidth: 50
            //Layout.maximumWidth: 75
            // Layout.minimumHeight: 75
            text: qsTr("No")
            Layout.alignment: Qt.AlignLeft | Qt.AlignVCenter
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







/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
