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
import "./../../imports/"
import ApplicationContstants 1.0


Item {
    width: 950
    height: 275
    Rectangle {
        id: rectangle
        color: Constants.testPage_backgroundColor
        anchors.fill: parent
        Row{
            id: mainRow
            width: 700
            anchors.fill: parent
            //            Rectangle {
            //                id: rectangle1
            //                color: "red"
            //                anchors.fill: parent
            //            }
            Column{
                id: col1
                Rectangle {
                    id: rectangle2
                    color: "red"
                    anchors.fill: parent
                }
                //anchors.fill: parent
                Row {
                    id: row1
                    anchors.top: parent.top
                    anchors.topMargin: 10
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    //                Rectangle {
                    //                    id: rectangle2
                    //                    color: "#fcccff"
                    //                    anchors.fill: parent
                    //                }
                    Image {
                        id: image
                        width: 50
                        height: 50
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        source: "qrc:/qtquickplugin/images/template_image.png"
                        fillMode: Image.PreserveAspectFit
                    }
                    TestPageLabel {
                        id: label_testPageHeading
                        width: 2*Constants.testPage_lblWidth
                        height: 2*Constants.testPage_lblHeight
                        anchors.right: image.right
                        anchors.rightMargin: 2*Constants.testPage_rightMargin
                        text: Constants.label_testPgHeader
                        horizontalAlignment: Text.AlignHCenter
                        verticalAlignment: Text.AlignVCenter
                    }

                }
                Row {
                    id: row2
                    anchors.bottom: row1.top
                    anchors.bottomMargin: 1.5 *Constants.testPage_bottomMargin
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    //                Rectangle {
                    //                    id: rectangle2
                    //                    color: "#fcccff"
                    //                    anchors.fill: parent
                    //                }


                    TestPageLabel {
                        id: label_lblPatientName
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        lblOrText: false
                        text: Constants.label_testPgPatient
                    }

                    TestPageLabel {
                        id: label_PatientName
                        text: qsTr("Label")
                        lblOrText: true
                        anchors.right: label_lblPatientName.right
                        anchors.rightMargin: Constants.testPage_rightMargin
                    }
                }
                Row {
                    id: row3
                    anchors.bottom: row2.top
                    anchors.bottomMargin: Constants.testPage_bottomMargin
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    //                Rectangle {
                    //                    id: rectangle2
                    //                    color: "#fcccff"
                    //                    anchors.fill: parent
                    //                }

                    TestPageLabel {
                        id: label_lblmedicalRef
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        lblOrText: false
                        text: Constants.label_testPgMedRef
                    }
                    TestPageLabel {
                        id: label_medicalRef
                        text: qsTr("Label")
                        lblOrText: true
                        anchors.right: label_lblmedicalRef.right
                        anchors.rightMargin: Constants.testPage_rightMargin
                    }
                }
                Row {
                    id: row4
                    anchors.bottom: row3.top
                    anchors.bottomMargin: Constants.testPage_bottomMargin
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    //                Rectangle {
                    //                    id: rectangle2
                    //                    color: "#fcccff"
                    //                    anchors.fill: parent
                    //                }

                    TestPageLabel {
                        id: label_lblDOB
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        lblOrText: false
                        text: Constants.label_testPgDOB
                    }
                    TestPageLabel {
                        id: label_DOB
                        text: qsTr("Label")
                        lblOrText: true
                        anchors.right: label_lblDOB.right
                        anchors.rightMargin: Constants.testPage_rightMargin
                    }
                }
                Row {
                    id: row5
                    anchors.bottom: row4.top
                    anchors.bottomMargin:  Constants.testPage_bottomMargin
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    //                Rectangle {
                    //                    id: rectangle2
                    //                    color: "#fcccff"
                    //                    anchors.fill: parent
                    //                }

                    TestPageLabel {
                        id: label_lblIOLFitted
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        lblOrText: false
                        text: Constants.label_testPgIOLFitted
                    }
                    TestPageLabel {
                        id: label_IOLFitted
                        text: qsTr("Label")
                        lblOrText: true
                        anchors.right: label_lblIOLFitted.right
                        anchors.rightMargin: Constants.testPage_rightMargin
                    }
                }
                Row {
                    id: row6
                    anchors.bottom: row5.top
                    anchors.bottomMargin: Constants.testPage_bottomMargin
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    //                Rectangle {
                    //                    id: rectangle2
                    //                    color: "#fcccff"
                    //                    anchors.fill: parent
                    //                }

                    TestPageLabel {
                        id: label_lblIOLAge
                        anchors.left: parent.left
                        anchors.leftMargin: 0
                        lblOrText: false
                        text: Constants.label_testPgIOLAge
                    }
                    TestPageLabel {
                        id: label_IOLAge
                        text: qsTr("Label")
                        lblOrText: true
                        anchors.right: label_lblIOLAge.right
                        anchors.rightMargin: Constants.testPage_rightMargin
                    }
                }
            }
            Column{
                id:col2
                anchors.right: parent.right
                anchors.rightMargin: 2* buttonRight.width + 2* 10
//                Rectangle {
//                    id: rectangle3
//                    color: "red"
//                    anchors.fill: parent
//                }


                Row {
                    id: row1Col2
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: -100
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    //                Rectangle {
                    //                    id: rectangle2
                    //                    color: "#fcccff"
                    //                    anchors.fill: parent
                    //                }

//                    Label {
//                        id: label_lblSwitchEye
//                        width: Constants.testPage_lblWidth
//                        height: Constants.testPage_lblHeight
//                        anchors.left: parent.left
//                        anchors.leftMargin: 0
//                        text: Constants.label_testPgIOLAge
//                        verticalAlignment: Text.AlignVCenter
//                        horizontalAlignment: Text.AlignHCenter
//                    }

//                    Label {
//                        id: label_lblTestMode
//                        width: Constants.testPage_lblWidth
//                        height: Constants.testPage_lblHeight
//                        text: qsTr("Label")
//                        verticalAlignment: Text.AlignVCenter
//                        horizontalAlignment: Text.AlignHCenter
//                        anchors.right: label_lblSwitchEye.left
//                        anchors.rightMargin: Constants.testPage_rightMargin
//                    }

                    //                    Switch {
                    //                        id: element
                    //                        text: qsTr("Switch")
                    //                    }
                    //                    ToggleButton {
                    //                        id: toggleButton
                    //                        text: qsTr("Button")
                    //                    }
                    TestPageButton {
                        id: buttonRight
                        down:true
                        //width: 130
                        //height: 50
                    }
                    TestPageButton {
                        id: buttonLeft
                        //width: 130
                        //height: 50
                        anchors.left: buttonRight.right
                        anchors.leftMargin: 2
                    }

                }
                Row {
                    id: row2Col2
                    anchors.bottom: row1Col2.top
                    anchors.bottomMargin: -75
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    TestPageButton {
                        id: buttonStandard
                        //width: 160
                        //height: 50
                    }
                    TestPageButton {
                        id: buttonDetailed
                        down:true
                        //width: 160
                        //height: 50
                        anchors.left: buttonStandard.right
                        anchors.leftMargin: 2
                    }
                }

            }
        }


    }

}







































































/*##^## Designer {
    D{i:26;anchors_x:52;anchors_y:14}D{i:27;anchors_x:30;anchors_y:29}D{i:25;anchors_x:52;anchors_y:14}
D{i:28;anchors_x:30;anchors_y:29}D{i:1;anchors_height:200;anchors_width:200;anchors_x:107;anchors_y:66}
}
 ##^##*/
