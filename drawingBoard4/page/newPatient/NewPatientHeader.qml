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


//Item {
//  width: 950
//  height: 275

Rectangle {
    id: rectangle
    color: Constants.testPage_backgroundColor
    anchors.fill: parent
    height: 400
    width: 800
    GridLayout{
        id: mainRow
        // width: 700
        anchors.fill: parent
        //columns: 3
        rows:3

        Rectangle {
            id: rectangle1
            color: Constants.testPage_backgroundColor
            height:75// pgTitle.height
            Layout.fillWidth: true
            Layout.row: 1
            TestPageTitle{
                id:pgTitle
                anchors.fill: parent
                actionGridGroup:"newPatientItems"
            }//TestPageTitle
        }//TestPageTitle
        Rectangle {
            id: rectangle2
            color: Constants.testPage_backgroundColor
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.row: 2
            Layout.rowSpan: 2
            GridLayout{
                id: mainCol
                anchors.fill: parent
                columns: 2
                Rectangle {
                    id: rectangleSub1
                    color: Constants.testPage_backgroundColor
                    Layout.column: 1

                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    TestPageAllLabels{
                        id:pageLabels
                        anchors.fill: parent
                    }
                }
                Rectangle {
                    id: rectangleSub2
                    color: Constants.testPage_backgroundColor
                    Layout.column: 2
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    TestPageSwitchButtons{
                        id:pageSwitchButtons
                        width: parent.width/2
                        height: parent.height/2
                         anchors.right: parent.right
                         anchors.verticalCenter: parent.verticalCenter
                    }//TestPageSwitchButtons
                }

            }
        }
    }


}

//}





















































































/*##^## Designer {
    D{i:1;anchors_height:200;anchors_width:200;anchors_x:107;anchors_y:66}
}
 ##^##*/
