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
    id:footerItem1
    GridLayout{
        id: footerGrid
        height:parent.height/3//column.height/2
        width: parent.width//column.width///30//row.width
        rotation: 0
        Layout.alignment: Qt.AlignHCenter
        //anchors.centerIn: parent
        Rectangle {
            //anchors.fill: parent
            Layout.fillHeight: true
            Layout.fillWidth: true
            id:colRec
            //color: "yellow"
            CheckBox {
                id: checkBox
                //Layout.alignment: Qt.AlignLeft| Qt.AlignBottom
                //Layout.leftMargin: footerGrid.width/5
                anchors.left: parent.left
                anchors.leftMargin: colRec.width/3
                text: qsTr("Centeral")
            }
            Label{
                //Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                //anchors.centerIn: parent
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: checkBox.verticalCenter
                //anchors.top:  parent.top//checkBox.bottom
                //anchors.topMargin:10// checkBox.height
                //anchors.topMargin:checkBox.height/3
                ///anchors.bottom: parent.bottom
                //anchors.bottomMargin:-300
                // Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                color: "black"
                //width: footerGrid.width/4
                //height: 30
                id: headerLabel
                text: "Green/Blue Ratio[db]"

            }
            CheckBox {
                id: checkBox1
                //Layout.alignment: Qt.AlignRight| Qt.AlignBottom
                //Layout.rightMargin: footerGrid.width/5
                anchors.right: parent.right
                anchors.rightMargin: colRec.width/3
                text: qsTr("Peripheral")
            }
        }
    }
}
