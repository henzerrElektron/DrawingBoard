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
import "./../../common/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
/*!
   \qmltype CommonBorder
   \brief This provides a GroupLabel to items that are grouped in one place.

  This is used in the most of the classes.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of GroupLabel is demonstrated below
   \qml
     GroupLabel{
        id:searchLabel
        anchors.fill:parent
        text: StringConstants.label_searchQuestion
        }
   \endqml

*/
Rectangle{
    id:mainRec
    anchors.fill: parent
    color:"transparent"//StringConstants.testPage_backgroundColor
    border.color: StringConstants.borderColorBlack
    border.width: 2
    //NewPatientGroupLabel{
     GroupLabel{
        id:contactDetailLabel
        isTabHeader:true
        text: StringConstants.lbl_npContactDetails

    }


    Rectangle{
        id:testRec
        width: (mainRec.width/2)+30
        color: StringConstants.barBackgroundColor//StringConstants.testPage_backgroundColor//color_gbTransparent//"transparent"
        anchors.top: contactDetailLabel.bottom
        anchors.topMargin: 5//10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 5//10
        //anchors.right: parent.right
        anchors.rightMargin: 10
        anchors.left: parent.left
        anchors.leftMargin: 10
        //border.color: StringConstants.borderColorBlack
        //border.width: 2
        NewPatientContactDetailGroup{
            id:contactTabPage1
            anchors.fill: parent
            //Layout.fillHeight: true
           // Layout.fillWidth: true
            verticalLayoutDirection: Grid.TopToBottom
            layoutDirection: Qt.LeftToRight
            flow: Grid.LeftToRight
            flickableDirection: Flickable.HorizontalAndVerticalFlick
        }

        //        ContactDetailLabelTextGroup{
        //        // ReportDetailLabelGroup{
        //            id:contactTabPage1
        //            anchors.fill: parent
        //            Layout.fillHeight: true
        //            Layout.fillWidth: true
        //            verticalLayoutDirection: Grid.TopToBottom
        //            layoutDirection: Qt.LeftToRight
        //            flow: Grid.LeftToRight
        //            flickableDirection: Flickable.HorizontalAndVerticalFlick
        //            filterName:StringConstants.model_contactLabeLAndText/// StringConstants.report_PatientDetailModel//
        ////            Component.onCompleted: {
        ////                doFilter()
        ////            }
        //        }





        //        GridLayout{
        //            id:grid
        //            anchors.fill: parent
        //            rows: 6
        //            columns: 2
        //            NewPatientLabelWithText{
        //                id:oneLabel
        //                Layout.row: IntegerConstants.rowCount1
        //                Layout.rowSpan: IntegerConstants.rowSpan1
        //                Layout.column: IntegerConstants.columnCount1
        //                Layout.columnSpan: IntegerConstants.columnSpan2
        //                //Layout.fillHeight: true
        //                Layout.fillWidth: true
        //                height: 45
        //                labelOnTop:false
        //                labelText:StringConstants.lbl_npContactMobile
        //                tfReadOnly:false
        //                tfPlaceHolderText:StringConstants.lbl_npContactMobilePh
        //                textValidator:RegExpValidator{regExp:StringConstants.txtValidatorNumbersOnly}///^\+?\d+$/
        //                lblValueVisible: false
        //                textAlignLeftOrCenter:false
        //                lblLeftPadding:75
        //                txtVisible:true
        //                itemVisible: true
        //                commonColor: StringConstants.label_NewPatientLabelBgColor
        //            }
        //            NewPatientLabelWithText{
        //                id:twoLabel
        //                labelText:StringConstants.lbl_npContactAddr1
        //                tfPlaceHolderText:StringConstants.lbl_npContactAddr1Ph
        //                textValidator:RegExpValidator{regExp: StringConstants.txtValidatorWordsNumbersOnly}///^\w+$/
        //                tfReadOnly:false
        //                Layout.row: IntegerConstants.rowCount2
        //                Layout.rowSpan: IntegerConstants.rowSpan1
        //                Layout.column: IntegerConstants.columnCount1
        //                Layout.columnSpan: IntegerConstants.columnSpan2
        //                //Layout.fillHeight: true
        //                Layout.fillWidth: true
        //                lblValueVisible: false
        //                height: 45
        //                labelOnTop:false
        //                lblLeftPadding:75
        //                textAlignLeftOrCenter:false
        //                txtVisible:true
        //                itemVisible: true
        //                commonColor: StringConstants.label_NewPatientLabelBgColor
        //            }
        //            NewPatientLabelWithText{
        //                id:threeLabel
        //                labelText:StringConstants.lbl_npContactAddr2
        //                tfPlaceHolderText:StringConstants.lbl_npContactAddr1Ph
        //                textValidator:RegExpValidator{regExp: StringConstants.txtValidatorWordsNumbersOnly}///^\w+$/
        //                tfReadOnly:false
        //                Layout.row: IntegerConstants.rowCount3
        //                Layout.rowSpan: IntegerConstants.rowSpan1
        //                Layout.column: IntegerConstants.columnCount1
        //                Layout.columnSpan: IntegerConstants.columnSpan2
        //                //Layout.fillHeight: true
        //                Layout.fillWidth: true
        //                lblValueVisible: false
        //                height: 45
        //                labelOnTop:false
        //                textAlignLeftOrCenter:false
        //                lblLeftPadding:75
        //                txtVisible:true
        //                itemVisible: true
        //                commonColor: StringConstants.label_NewPatientLabelBgColor

        //            }
        //            NewPatientLabelWithText{
        //                id:sixLabel
        //                labelText:StringConstants.lbl_npContactEmail
        //                tfPlaceHolderText:StringConstants.lbl_npContactEmailPh
        //                textValidator:RegExpValidator{regExp:StringConstants.txtValidatorEmailOnly}
        //                tfReadOnly:false
        //                Layout.row: IntegerConstants.rowCount4
        //                Layout.rowSpan: IntegerConstants.rowSpan1
        //                Layout.column: IntegerConstants.columnCount1
        //                Layout.columnSpan: IntegerConstants.columnSpan2
        //                //Layout.fillHeight: true
        //                Layout.fillWidth: true
        //                lblValueVisible: false
        //                height: 45
        //                labelOnTop:false
        //                textAlignLeftOrCenter:false
        //                lblLeftPadding:75
        //                txtVisible:true
        //                itemVisible: true
        //                commonColor: StringConstants.label_NewPatientLabelBgColor
        //            }
        //            NewPatientLabelWithText{
        //                id:fourLabel
        //                labelText:StringConstants.lbl_npContactCity
        //                tfPlaceHolderText:StringConstants.lbl_npContactCityPh
        //                textValidator:RegExpValidator{regExp: StringConstants.txtValidatorWordsOnly}///^[A-Za-z]+$/
        //                tfReadOnly:false
        //                Layout.row: IntegerConstants.rowCount5
        //                //Layout.rowSpan: 1
        //                Layout.column: IntegerConstants.columnCount1
        //                Layout.columnSpan: IntegerConstants.columnSpan2
        //                //Layout.fillHeight: true
        //                Layout.fillWidth: true
        //                lblValueVisible: false
        //                height: 45
        //                labelOnTop:false
        //                textAlignLeftOrCenter:false
        //                lblLeftPadding: 75
        //                txtVisible:true
        //                itemVisible: true
        //                commonColor: StringConstants.label_NewPatientLabelBgColor

        //            }
        //            NewPatientLabelWithText{
        //                id:sevenLabel
        //                labelText:StringConstants.lbl_npContactPostalCode//
        //                tfPlaceHolderText:StringConstants.lbl_npContactPostalCodePh
        //                textValidator:RegExpValidator{regExp:StringConstants.txtValidatorWordsNumbersOnly }///^\w+$/
        //                tfReadOnly:false
        //                Layout.row: IntegerConstants.rowCount6
        //                //Layout.rowSpan: 1
        //                Layout.column: IntegerConstants.columnCount1
        //                Layout.columnSpan: IntegerConstants.columnSpan2
        //                //Layout.fillHeight: true
        //                Layout.fillWidth: true
        //                lblValueVisible: false
        //                height: 45
        //                labelOnTop:false
        //                textAlignLeftOrCenter:false
        //                lblLeftPadding: 75
        //                txtVisible:true
        //                itemVisible: true
        //                commonColor: StringConstants.label_NewPatientLabelBgColor
        //            }
        //            NewPatientLabelWithText{
        //                id:fiveLabel
        //                labelText:StringConstants.lbl_npContactCountry
        //                tfPlaceHolderText:StringConstants.lbl_npContactCountryPh
        //                textValidator:RegExpValidator{regExp: StringConstants.txtValidatorWordsOnly}///^[A-Za-z]+$/
        //                tfReadOnly:false
        //                Layout.row: IntegerConstants.rowCount8
        //                //Layout.rowSpan: 1
        //                Layout.column: IntegerConstants.columnCount1
        //                Layout.columnSpan: IntegerConstants.columnSpan2
        //                //Layout.fillHeight: true
        //                Layout.fillWidth: true
        //                lblValueVisible: false
        //                textAlignLeftOrCenter:false
        //                lblLeftPadding: 75
        //                height: 45
        //                labelOnTop:false
        //                txtVisible:true
        //                itemVisible: true
        //                commonColor:StringConstants.label_NewPatientLabelBgColor

        //            }


        //            NewPatientLabelWithText{
        //                id:eightLabel
        //                labelText:StringConstants.lbl_npContactCounty
        //                tfPlaceHolderText:StringConstants.lbl_npContactCountyPh
        //                textValidator:RegExpValidator{regExp:/^[A-Za-z]+$/ }
        //                tfReadOnly:false
        //                Layout.row: IntegerConstants.rowCount7
        //                //Layout.rowSpan: 1
        //                Layout.column: IntegerConstants.columnCount1
        //                Layout.columnSpan: IntegerConstants.columnSpan2
        //                //Layout.columnSpan: 1
        //                //Layout.fillHeight: true
        //                Layout.fillWidth: true
        //                lblValueVisible: false
        //                textAlignLeftOrCenter:false
        //                lblLeftPadding: 75
        //                height: 45
        //                labelOnTop:false
        //                txtVisible:true
        //                itemVisible: true
        //                commonColor: StringConstants.label_NewPatientLabelBgColor
        //            }
        //        }
    }
}

















/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1;anchors_x:144;anchors_y:56}
}
 ##^##*/
