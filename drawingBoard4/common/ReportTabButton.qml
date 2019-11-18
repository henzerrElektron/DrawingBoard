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
import "./../images/"
//import "./../../imports/"
import "./../models/"
import "./../delegates/"
import "./../page/test/"
import "./../page/home/"
import "./../page/newPatient/"
import ApplicationConstants 1.0
TabButton {
    id: control
    text: qsTr("Button")
    property alias backColor: bg.color
    property alias txtColor: txt.color
    contentItem: Text {
        id:txt
        text: control.text
        //font: control.font
        leftPadding: 10
        opacity: enabled ? 1.0 : 0.3
        color:control.down ?StringConstants.barBackgroundColor: StringConstants.actionBtnBackgroundColor//control.down ?  StringConstants.barBackgroundColor:StringConstants.barBorderColor //"#17a81a":"#21be2b"
         font { family: OtherConstants.fontFamily; pixelSize: 20; weight: Font.Bold; capitalization: Font.MixedCase }
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }

    background: Rectangle {
        id:bg
        implicitWidth: 200
        implicitHeight: 50//75
        color:control.down ?StringConstants.label_NewPatientLabelBgColor:StringConstants.testPage_unCheckBtnBgColor
        //opacity: enabled ? 1 : 0.3
        //color: StringConstants.testPage_backgroundColor//control.down ? StringConstants.label_NewPatientLabelBgColor:StringConstants.testPage_backgroundColor//StringConstants.actionBtnBackgroundColor//:"#eeeeee"//
        //border.color: control.down ?  StringConstants.headerBackgroundColor:StringConstants.barBorderColor//"#17a81a" : "#21be2b"
        //border.width: 1
        radius: 2
        CommonBorder
                {
                    customBorder:  false
                    lBorderWidth: 2
                    rBorderWidth: 2
                    tBorderWidth: 2
                    bBorderWidth: 0
                    borderColor: StringConstants.actionBtnBackgroundColor
                }
    }
   onClicked: {
       backColor = StringConstants.label_NewPatientLabelBgColor
       txtColor =  StringConstants.barBackgroundColor
   }
}
