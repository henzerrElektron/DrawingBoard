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
import ApplicationContstants 1.0
Rectangle{
    id:mainRec
    anchors.fill: parent
    NewPatientGroupLabel{
        id:contactDetailLabel
        text: "ContactDetails"

    }


    Rectangle{
        id:testRec
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
                labelText:Constants.lbl_npContactMobile
                tfReadOnly:false
                tfPlaceHolderText:Constants.lbl_npContactMobilePh
                Layout.row: 1
                Layout.rowSpan: 1
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
            NewPatientLabelWithText{
                id:twoLabel
                labelText:Constants.lbl_npContactAddr1
                tfPlaceHolderText:Constants.lbl_npContactAddr1Ph
                tfReadOnly:false
                Layout.row: 2
                Layout.rowSpan: 1
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
            NewPatientLabelWithText{
                id:threeLabel
                labelText:Constants.lbl_npContactAddr2
                tfPlaceHolderText:Constants.lbl_npContactAddr1Ph
                tfReadOnly:false
                Layout.row: 3
                Layout.rowSpan: 1
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
            NewPatientLabelWithText{
                id:fourLabel
                labelText:Constants.lbl_npContactCity
                tfPlaceHolderText:Constants.lbl_npContactCityPh
                tfReadOnly:false
                Layout.row: 4
                Layout.rowSpan: 1
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
            NewPatientLabelWithText{
                id:fiveLabel
                labelText:Constants.lbl_npContactCountry
                tfPlaceHolderText:Constants.lbl_npContactCountryPh
                tfReadOnly:false
                Layout.row: 5
                Layout.rowSpan: 1
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
            NewPatientLabelWithText{
                id:sixLabel
                labelText:Constants.lbl_npContactEmail
                tfPlaceHolderText:Constants.lbl_npContactEmailPh
                tfReadOnly:false
                Layout.row: 6
                Layout.rowSpan: 1
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
            NewPatientLabelWithText{
                id:sevenLabel
                labelText:Constants.lbl_npContactPostalCodePh
                tfPlaceHolderText:Constants.lbl_npContactPostalCode
                tfReadOnly:false
                Layout.row: 7
                Layout.rowSpan: 1
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
            NewPatientLabelWithText{
                id:eightLabel
                labelText:Constants.lbl_npContactCounty
                tfPlaceHolderText:Constants.lbl_npContactCountyPh
                tfReadOnly:false
                Layout.row: 8
                Layout.rowSpan: 1
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
        }
    }
}















/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1;anchors_x:144;anchors_y:56}
}
 ##^##*/
