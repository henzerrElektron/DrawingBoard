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
import ApplicationContstants 1.0


Rectangle{
    id:rectangle1
    //color: "black"
    color: Constants.testPage_backgroundColor//"transparent"
    anchors.fill: parent
    property alias labelText: label_testPageHeading.text
    //Layout.rowSpan: 2
    //height: 100
    GridLayout{
        //anchors.fill: parent
        columns: 5
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.topMargin: 10
        anchors.leftMargin: 10
        columnSpacing: 5
        Rectangle{
            id:rec1
            Layout.row: 1
            Layout.column: 1
            color: "transparent"
            width: 50
            height: parent.height
            Image {
                id: image
                fillMode: Image.PreserveAspectFit
                source: "qrc:/images/icon_eet.png"
                anchors.centerIn: parent
                // sourceSize.width: 50
                // sourceSize.height: 50
                //  Layout.row: 1
                //  Layout.column: 1
                //Layout.maximumWidth: 100
                onStatusChanged: if (image.status == Image.Ready) console.log('Loaded')
            }
        }
        Rectangle{
            id:rec2
            Layout.row: 1
            Layout.column: 2
            color: "transparent"
            // width: 150
            Layout.fillWidth: true
            height: parent.height
            anchors.left: rec1.right
            TestPageLabel {
                id: label_testPageHeading
                //Layout.minimumWidth: 2*Constants.testPage_lblWidth
                //Layout.minimumHeight:  2*Constants.testPage_lblHeight
                //anchors.right: image.right
                //anchors.rightMargin: 2*Constants.testPage_rightMargin
                //font.pixelSize:35
                text: Constants.label_testPgHeader
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                Layout.row: 1
                Layout.column: 2
                anchors.verticalCenter: parent.verticalCenter
                anchors.left: parent.left
                //anchors.centerIn: parent
                //                background: Rectangle{
                //                    color: "black"
                //                }

                //Layout.fillWidth: true
            }
        }

        //        Image {
        //            id: image
        //            fillMode: Image.PreserveAspectFit
        //            source: "qrc:/images/icon_eet.png"
        //            Layout.row: 1
        //            Layout.column: 1
        //            //Layout.maximumWidth: 100
        //            onStatusChanged: if (image.status == Image.Ready) console.log('Loaded')
        //        }
        //        TestPageLabel {
        //            id: label_testPageHeading
        //            //Layout.minimumWidth: 2*Constants.testPage_lblWidth
        //            //Layout.minimumHeight:  2*Constants.testPage_lblHeight
        //            //anchors.right: image.right
        //            //anchors.rightMargin: 2*Constants.testPage_rightMargin
        //            //font.pixelSize:35
        //            text: Constants.label_testPgHeader
        //            horizontalAlignment: Text.AlignHCenter
        //            verticalAlignment: Text.AlignVCenter
        //            Layout.row: 1
        //            Layout.column: 2
        //            background: Rectangle{
        //                color: "black"
        //            }

        //            //Layout.fillWidth: true
        //        }
        TestPageActionButtons {
            id: rectangle3
            //color: "black"
            Layout.column: 3
            //Layout.columnSpan: 2
            Layout.columnSpan: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            // Layout.fillWidth: true
            Layout.row: 1
            Layout.alignment: Qt.AlignRight
            //Layout.minimumWidth: parent.width - label_testPageHeading.width
            //anchors.right: parent.right
            //Layout.rowSpan: 7
        }//TestPageActionButtons//Rectangle
    }

}



/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
