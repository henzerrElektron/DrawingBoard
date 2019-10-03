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
    contentItem: Text {
        text: control.text
        font: control.font
        opacity: enabled ? 1.0 : 0.3
        color: control.down ? StringConstants.barAlternateColor : StringConstants.barBackgroundColor//"#17a81a":"#21be2b"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }

    background: Rectangle {
        id:bg
        implicitWidth: 120
        implicitHeight: 50//75
        //opacity: enabled ? 1 : 0.3
        color: control.down ? StringConstants.actionBtnBackgroundColor:StringConstants.label_NewPatientLabelBgColor//StringConstants.actionBtnBackgroundColor//:"#eeeeee"//
        border.color: control.down ?  StringConstants.barBorderColor:StringConstants.headerBackgroundColor//"#17a81a" : "#21be2b"
        border.width: 1
        radius: 2
        CommonBorder
                {
                    customBorder:  false
                    lBorderWidth: 2
                    rBorderWidth: 2
                    tBorderWidth: 0
                    bBorderWidth: 0
                    borderColor: StringConstants.barBorderColor
                }
    }
   onClicked: {
       backColor = StringConstants.actionBtnBackgroundColor
   }
}
