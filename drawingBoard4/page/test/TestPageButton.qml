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
import QtQuick.Controls 2.5
import Qt.labs.settings 1.0
import QtQuick.Shapes 1.11
import "."
import "./../../images/"
//import "./../../imports/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0

//import appContstants 1.0


//Rectangle {
//    id: buttonRightOrLeft
//    width: 134
//    height: 55
    //color: "#ffffff"
//    border.width: 10
//    border.color: "white"
//    color: control.down ? Constants.testPage_checkBtnBgColor : Constants.testPage_unCheckBtnBgColor
    CheckDelegate {
        id: control
        text: qsTr("Check Delegate")
        down: false
        checkState: Qt.Checked
        contentItem: Text {
                  rightPadding: control.indicator.width + control.spacing
                  text: control.text
                  font.bold: true
                  font.pointSize:12//control.down ? 12:10
                  //font.pointSize: Constants.m_intLblFontSize
                  font.family: OtherConstants.fontFamily
                  //opacity: enabled ? 1.0 : 0.3
                  color: control.down ?  "white":StringConstants.testPage_checkBtnBgColor
                  elide: Text.ElideRight
                  verticalAlignment: Text.AlignVCenter
              }

              indicator: Rectangle {
                  implicitWidth: 26
                  implicitHeight: 26
                  x: control.width - width - control.rightPadding
                  y: control.topPadding + control.availableHeight / 2 - height / 2
                  radius: 30
                  color: "white"
                  border.color: control.down ? "#17a81a" : "#21be2b"


                  Rectangle {
                      width: 14
                      height: 14
                      x: 6
                      y: 6
                      radius: 20
                      color: control.down ? StringConstants.testPage_checkBtnBgColor:"white"///"#17a81a" : "#21be2b"
                      visible: control.down//control.checked
                  }
              }

              background: Rectangle {
                  implicitWidth: 60
                  implicitHeight: 40
                  border.width: 2
                  border.color: control.down ?"white" : StringConstants.testPage_checkBtnBorderBgColor
                  //visible: control.down || control.highlighted
                  color: control.down ?  Constants.testPage_checkBtnBgColor:StringConstants.testPage_unCheckBtnBgColor
              }
    }



    //                        ToolButton {
    //                            id: toolButton
    //                            text: qsTr("Tool Button")
    //                        }
//    Image {
//        id: image1
//        width: 74
//        height: 40
//        anchors.top: parent.top
//        anchors.topMargin: 15
//        anchors.left: label.right
//        anchors.leftMargin: -10
//        source: "qrc:/qtquickplugin/images/template_image.png"
//        fillMode: Image.PreserveAspectFit
//    }

//    Label {
//        id: label
//        width: 65
//        height: 30
//        text: qsTr("Label")
//        anchors.left: parent.left
//        anchors.leftMargin: 10
//        anchors.top: parent.top
//        anchors.topMargin: 15
//        verticalAlignment: Text.AlignVCenter
//        horizontalAlignment: Text.AlignHCenter
//    }
//    MouseArea {
//        id: mouseArea
//        anchors.fill: parent


//    }
//}
