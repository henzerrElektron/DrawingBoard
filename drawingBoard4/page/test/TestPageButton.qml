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
import "./../../common/"
//import "./../../imports/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0

//import appContstants 1.0
/*!
   \qmltype TestPageButton
   \brief A special button that contains a checkbox to display tick marks

  This Component is used in TestPageSwitchButtons to display Standard/Detailed and Left/Right eye buttons
   \image tobeprovided.png

   \section1 Sample usage

   To display tick marks to indicate the current status of the feature
   \qml
            TestPageButton {
                bgGroup:buttonEyeGroup
                labelText: StringConstants.buttonName_leftEye
            }
   \endqml

*/
Rectangle{
    id:mainRec
    objectName: StringConstants.objectName_testPageButton
    implicitWidth:  150
    implicitHeight:  55
    border.color: control.checked?StringConstants.barBackgroundColor:StringConstants.barBorderColor
    color: control.checked?StringConstants.actionBtnBackgroundColor:StringConstants.testPage_unCheckBtnBgColor
    property var bgGroup: ""//.bgGroup
    property alias labelText: mainLabel.text
    property alias subLabelText: subLabel.text
    //property alias iconValue: iconlOnlyButtons.icon.name
    signal clicked()
    onClicked: checkBtn()
    function checkBtn(){
        if(control.checkState === Qt.Checked)
        {
            control.checked = false
        }
        if(control.checkState === Qt.Unchecked)
        {
            control.checked = true
        }

        console.log("This function is in testing")
    }

    Label{
        id:mainLabel
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.right: control.left
        anchors.top: parent.top
        anchors.bottom: parent.bottom
        font { family: OtherConstants.fontFamily; pixelSize: 15; weight: Font.Bold; capitalization: Font.MixedCase }
        color: control.checked?StringConstants.barBackgroundColor:StringConstants.actionBtnBackgroundColor
        text: ""
        bottomPadding: 9
        //font.pointSize: 11
        //font.weight: Font.ExtraBold
        ///font.bold: true
        height: parent.height - parent.height/5
        //anchors.fill: parent
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        background: Rectangle{
            id:subRec
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked: mainRec.clicked()
            }
            Label{
                id:subLabel
                anchors.fill: parent
                // anchors.left: mainLabel.left
                // anchors.right: mainLabel.right
                //  anchors.top: mainLabel.bottom
                //  anchors.bottom: parent.bottom
                color: mainLabel.color
                font: mainLabel.font
                //height: parent.height/5
                text: ""
                //bottomPadding: 3
                //font.pointSize: 8
                verticalAlignment: Text.AlignBottom
                horizontalAlignment: Text.AlignHCenter
                background: Rectangle{
                    id:subRec1
                    color: "transparent"
                }
            }
        }
    }


    CheckBox{
        id:control
        //property alias bgGroup:
        ButtonGroup.group:bgGroup
        anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.verticalCenter: parent.verticalCenter
        implicitWidth: 25
        implicitHeight: 25
        background: Rectangle{
            id:rec
            color: "white"//StringConstants.actionBtnBackgroundColor
            radius: 13
        }
        indicator: Rectangle {
            //implicitWidth: 26
            //implicitHeight: 26
            //x: control.leftPadding
            //y: parent.height / 2 - height / 2
            radius: 3
            border.color: control.down ? StringConstants.barBackgroundColor: StringConstants.barBorderColor//StringConstants.actionBtnBorderColor//"#17a81a" : "#21be2b"

            Text {
                width: 14
                height: 14
                x: 1
                y: -2
                text: "✔"
                font.pointSize: 18
                color: control.down ? StringConstants.barBackgroundColor: StringConstants.actionBtnBackgroundColor//StringConstants.actionBtnBorderColor//"#17a81a" : "#21be2b"
                visible: control.checked
            }
        }
        //         Component.onCompleted: {

        //             indicator.children[0].color = "green"
        //             indicator.children[0].radius = 10//"green"
        //         }
        //        indicator.childrenRect: Rectangle{
        //              x: control.leftPadding
        //              y: parent.height / 2 - height / 2
        //              radius: 13
        //        }

        //        indicator: Rectangle {
        //            x: control.leftPadding
        //            y: parent.height / 2 - height / 2
        //            radius: 3
        //            //border.color: control.down ? "#17a81a" : "#21be2b"

        //            Rectangle {
        //                width: 14
        //                height: 14
        //                radius: 2
        //                anchors.centerIn: parent
        //                color: control.down ? "#17a81a" : "#21be2b"
        //                visible: control.checked
        //            }
        //        }
    }

    //    ToolButton {
    //        id: iconlOnlyButtons
    //        anchors.right: parent.right
    //        implicitWidth:  50
    //        implicitHeight:  50
    //        background: Rectangle{
    //            color: "transparent"
    //        }
    //        //autoExclusive: true
    //        icon.width: 50
    //        icon.height: 50
    //        width:50
    //        height: 50
    //        icon.name: "selection_tick"
    //        icon.source: "qrc:/images/selection_tick.png"
    //        icon.color: "transparent"
    //        display: AbstractButton.IconOnly
    //        onClicked: mainRec.clicked()
    //    }
    Component.onDestruction: { cleanup()    }
    function init() { console.log("INIT "+Component.objectName)    }
    function cleanup() {  console.log("CLEANUP "+Component.objectName) }
}

//ToolButton {
//    id: iconlOnlyButtons
//    implicitWidth:  150
//    implicitHeight:  50
//    //property alias iconOnlyName: icon.name
//    //property alias iconOnlySource: icon.source
//    //property alias iconOnlyColor: icon.color
//    //width: 60
//    //height: 60
//    //text: qsTr("Tool Button")
//    background: Rectangle{
//        color: "transparent"
//    }
//    //autoExclusive: true
//    icon.width: 50
//    icon.height: 50
//    width:150
//    height: 50
//    text: "Testing"
//    icon.name: "icon_to_last"
//    icon.source: "qrc:/images/selection_tick.png"
//    icon.color: "transparent"
//    display: AbstractButton.TextBesideIcon
//}


//Rectangle {
//    id: buttonRightOrLeft
//    width: 134
//    height: 55
//color: "#ffffff"
//    border.width: 10
//    border.color: "white"
//    color: control.down ? Constants.testPage_checkBtnBgColor : Constants.testPage_unCheckBtnBgColor
//    CheckDelegate {
//        id: control
//        text: qsTr("Check Delegate")
//        down: false
//        checkState: Qt.Checked
//        contentItem: Text {
//                  rightPadding: control.indicator.width + control.spacing
//                  text: control.text
//                  font.bold: true
//                  font.pointSize:12//control.down ? 12:10
//                  //font.pointSize: Constants.m_intLblFontSize
//                  font.family: OtherConstants.fontFamily
//                  //opacity: enabled ? 1.0 : 0.3
//                  color: control.down ?  "white":StringConstants.testPage_checkBtnBgColor
//                  elide: Text.ElideRight
//                  verticalAlignment: Text.AlignVCenter
//              }

//              indicator: Rectangle {
//                  implicitWidth: 26
//                  implicitHeight: 26
//                  x: control.width - width - control.rightPadding
//                  y: control.topPadding + control.availableHeight / 2 - height / 2
//                  radius: 30
//                  color: "white"
//                  border.color: control.down ? "#17a81a" : "#21be2b"


//                  Rectangle {
//                      width: 14
//                      height: 14
//                      x: 6
//                      y: 6
//                      radius: 20
//                      color: control.down ? StringConstants.testPage_checkBtnBgColor:"white"///"#17a81a" : "#21be2b"
//                      visible: control.down//control.checked
//                  }
//              }

//              background: Rectangle {
//                  implicitWidth: 60
//                  implicitHeight: 40
//                  border.width: 2
//                  border.color: control.down ?"white" : StringConstants.testPage_checkBtnBorderBgColor
//                  //visible: control.down || control.highlighted
//                  color: control.down ?  Constants.testPage_checkBtnBgColor:StringConstants.testPage_unCheckBtnBgColor
//              }
//    }



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
