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

Rectangle{
    id:mainRec
    anchors.fill: parent
    NewPatientGroupLabel{
        id:contactDetailLabel
        text: "ContactDetails"

    }


    Rectangle{
        id:testRec
        color: "transparent"
        anchors.top: contactDetailLabel.bottom
        anchors.topMargin: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        GridLayout{
            id:grid
            anchors.fill: parent
            rows: 8
            NewPatientLabelWithText{
                id:oneLabel
                labelText:StringConstants.lbl_npContactMobile
                tfReadOnly:false
                tfPlaceHolderText:StringConstants.lbl_npContactMobilePh
                textValidator:RegExpValidator{regExp:/^\+?\d+$/}
                Layout.row: 1
                Layout.rowSpan: 1
                Layout.fillHeight: true
                Layout.fillWidth: true
                lblValueVisible: false
                txtVisible:true
                itemVisible: true
                commonColor: StringConstants.label_NewPatientLabelBgColor
            }
            NewPatientLabelWithText{
                id:twoLabel
                labelText:StringConstants.lbl_npContactAddr1
                tfPlaceHolderText:StringConstants.lbl_npContactAddr1Ph
                textValidator:RegExpValidator{regExp:/^\w+$/ }
                tfReadOnly:false
                Layout.row: 2
                Layout.rowSpan: 1
                Layout.fillHeight: true
                Layout.fillWidth: true
                lblValueVisible: false
                txtVisible:true
                itemVisible: true
                commonColor: StringConstants.label_NewPatientLabelBgColor
            }
            NewPatientLabelWithText{
                id:threeLabel
                labelText:StringConstants.lbl_npContactAddr2
                tfPlaceHolderText:StringConstants.lbl_npContactAddr1Ph
                textValidator:RegExpValidator{regExp:/^\w+$/ }
                tfReadOnly:false
                Layout.row: 3
                Layout.rowSpan: 1
                Layout.fillHeight: true
                Layout.fillWidth: true
                lblValueVisible: false
                txtVisible:true
                itemVisible: true
                commonColor: StringConstants.label_NewPatientLabelBgColor

            }
            NewPatientLabelWithText{
                id:fourLabel
                labelText:StringConstants.lbl_npContactCity
                tfPlaceHolderText:StringConstants.lbl_npContactCityPh
                textValidator:RegExpValidator{regExp:/^[A-Za-z]+$/ }
                tfReadOnly:false
                Layout.row: 4
                Layout.rowSpan: 1
                Layout.fillHeight: true
                Layout.fillWidth: true
                lblValueVisible: false
                txtVisible:true
                itemVisible: true
                commonColor: StringConstants.label_NewPatientLabelBgColor

            }
            NewPatientLabelWithText{
                id:fiveLabel
                labelText:StringConstants.lbl_npContactCountry
                tfPlaceHolderText:StringConstants.lbl_npContactCountryPh
                textValidator:RegExpValidator{regExp:/^[A-Za-z]+$/ }
                tfReadOnly:false
                Layout.row: 5
                Layout.rowSpan: 1
                Layout.fillHeight: true
                Layout.fillWidth: true
                lblValueVisible: false
                txtVisible:true
                itemVisible: true
                commonColor:StringConstants.label_NewPatientLabelBgColor

            }
            NewPatientLabelWithText{
                id:sixLabel
                labelText:StringConstants.lbl_npContactEmail
                tfPlaceHolderText:StringConstants.lbl_npContactEmailPh
                textValidator:RegExpValidator{regExp:/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/}
                tfReadOnly:false
                Layout.row: 6
                Layout.rowSpan: 1
                Layout.fillHeight: true
                Layout.fillWidth: true
                lblValueVisible: false
                txtVisible:true
                itemVisible: true
                commonColor: StringConstants.label_NewPatientLabelBgColor
            }
            NewPatientLabelWithText{
                id:sevenLabel
                labelText:StringConstants.lbl_npContactPostalCodePh
                tfPlaceHolderText:StringConstants.lbl_npContactPostalCode
                textValidator:RegExpValidator{regExp:/^\w+$/ }
                tfReadOnly:false
                Layout.row: 7
                Layout.rowSpan: 1
                Layout.fillHeight: true
                Layout.fillWidth: true
                lblValueVisible: false
                txtVisible:true
                itemVisible: true
                commonColor: StringConstants.label_NewPatientLabelBgColor
            }
            NewPatientLabelWithText{
                id:eightLabel
                labelText:StringConstants.lbl_npContactCounty
                tfPlaceHolderText:StringConstants.lbl_npContactCountyPh
                textValidator:RegExpValidator{regExp:/^[A-Za-z]+$/ }
                tfReadOnly:false
                Layout.row: 8
                Layout.rowSpan: 1
                Layout.fillHeight: true
                Layout.fillWidth: true
                lblValueVisible: false
                txtVisible:true
                itemVisible: true
                commonColor: StringConstants.label_NewPatientLabelBgColor
            }
        }
    }
}















/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1;anchors_x:144;anchors_y:56}
}
 ##^##*/
