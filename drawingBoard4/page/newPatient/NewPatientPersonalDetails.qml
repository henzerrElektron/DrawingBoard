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
//import "./../../imports/"
import "./../../models/"
import "./../../delegates/"
import "./../test/"
import ApplicationConstants 1.0
import QtQml.Models 2.12
import Qt.labs.calendar 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0



Rectangle{
    id:testRec
    anchors.fill: parent
    //width: 500
    //height: 400
    color: StringConstants.testPage_backgroundColor
    property bool pageSpOrNp: false//true means search patient page  false means New Patient Page Np means New patient page Sp means search patient Page
    property int pageNpSpTp: 0//Np =1 //Sp = 2 //TP == 3
    property bool pageSpOrTp: false//true means search patient page false means New Patient Page
    property int lblIndex: 0
    //property alias gridRow: grid.rows
    //    property alias lbl1Visible: oneLabel.lblValueVisible
    //    property alias lbl2Visible: twoLabel.lblValueVisible
    //    property alias lbl3Visible: threeLabel.lblValueVisible
    //    property alias lbl4Visible: fourLabel.lblValueVisible
    //    property alias lbl5Visible: fiveLabel.lblValueVisible
    //    property alias lbl6Vislbe: sixLabel.lblValueVisible
    //    property alias lbl7Visible: sevenLabel.lblValueVisible
    function iSVisible(lblIndex)
    {
        if(pageNpSpTp === 1)
        {
            //            if(lblIndex <= 3)
            //            {
            //                return true
            //            }
            //            else
            //            {
            //                return false
            //            }
            return false

        }
        if(pageNpSpTp === 2)
        {
            if(lblIndex === 5)
            {
                return true
            }
            if(lblIndex === 6)
            {
                return false
            }
            if(lblIndex === 7)
            {
                return false
            }
        }
        if(pageNpSpTp === 3)
        {
            if(lblIndex === 5)
            {
                return false
            }
            if(lblIndex === 6)
            {
                return true
            }
            if(lblIndex === 7)
            {
                return true
            }
        }
    }

    //        anchors.top: parent.top
    //        anchors.topMargin: IntegerConstants.margin10
    //        anchors.bottom: parent.bottom
    //        anchors.bottomMargin: 0
    //        anchors.right: parent.right
    //        anchors.rightMargin: 0
    //        anchors.left: parent.left
    //        anchors.leftMargin: 0
    //        color: "transparent"
    GridLayout{
        id:grid
        anchors.fill: parent
        rows: pageSpOrNp?IntegerConstants.rowCount5:IntegerConstants.rowCount3
        NewPatientLabelWithText{
            id:oneLabel
            index:1
            labelText:StringConstants.lbl_npSurName
            tfReadOnly:false
            tfPlaceHolderText:StringConstants.lbl_npRequestSurName
            textValidator:RegExpValidator{regExp:/^[A-Za-z]+$/ }//RegExpValidator{regExp:/^\+?\d+$/}///{regExp:/^\+?([0-9]\d*)$///{regExp:/^\+?(0|[1-9]\d*)$/ }
            lblValueText:StringConstants.lbl_npRequestSurName
            Layout.row: IntegerConstants.rowCount1
            Layout.rowSpan: IntegerConstants.rowSpan1
            //Layout.fillHeight: true
            Layout.fillWidth: true
            //Layout.leftMargin: 10
            //lblVisible: true
            lblValueVisible: pageNpSpTp===1?false:true//pageSpOrNp
            txtVisible:!lblValueVisible//pageNpSpTp===1?true:false //!pageNpOrSp
            itemVisible: true

        }
        NewPatientLabelWithText{
            id:twoLabel
            index:2
            labelText:StringConstants.lbl_npFirstName
            tfPlaceHolderText:StringConstants.lbl_npRequestFirstName
            textValidator:RegExpValidator{regExp:/^[A-Za-z]+$/ }
            lblValueText:StringConstants.lbl_npRequestFirstName
            tfReadOnly:false
            Layout.row: IntegerConstants.rowCount2
            Layout.rowSpan: IntegerConstants.rowSpan1
            //Layout.fillHeight: true
            Layout.fillWidth: true
            //Layout.leftMargin: 10
            //lblVisible: true
            lblValueVisible: pageNpSpTp===1?false:true//pageSpOrNp
            txtVisible:!lblValueVisible//pageNpSpTp===1?true:false //!pageNpOrSp
            itemVisible: true

        }
        NewPatientLabelWithText{
            id:threeLabel
            index:3
            labelText:StringConstants.lbl_npMedicalReference
            tfPlaceHolderText:StringConstants.lbl_npRequestMedicalReference
            textValidator:RegExpValidator{regExp:/^\w+$/ }
            lblValueText:StringConstants.lbl_npRequestMedicalReference
            tfReadOnly:false
            Layout.row: IntegerConstants.rowCount3
            Layout.rowSpan: IntegerConstants.rowSpan1
            //Layout.fillHeight: true
            Layout.fillWidth: true
            //lblVisible: true
            lblValueVisible: pageNpSpTp===1?false:true//pageSpOrNp
            txtVisible:!lblValueVisible//pageNpSpTp===1?true:false //!pageNpOrSp
            itemVisible: true

        }

        NewPatientLabelWithText{
            id:fourLabel
            index:4
            labelText:StringConstants.label_testPgDOB
            tfPlaceHolderText:""//StringConstants.lbl_npRequestMedicalReference
            textValidator:RegExpValidator{regExp:/^([0-9]{2})\/([0-9]{2})\/([0-9]{4})$/ }
            lblValueText:""
            tfReadOnly:false
            Layout.row: IntegerConstants.rowCount4
            Layout.rowSpan: IntegerConstants.rowSpan1
            //lblVisible: pageSpOrNp
            lblValueVisible: pageNpSpTp===1?false:true//pageSpOrNp
            txtVisible:!lblValueVisible//pageNpSpTp===1?true:false //!pageNpOrSp
            itemVisible:pageNpSpTp===1?false:true
            //Layout.fillHeight: true
            Layout.fillWidth: true

        }

        NewPatientLabelWithText{
            id:fiveLabel
            index:5
            labelText:StringConstants.lbl_npContactAddr
            tfPlaceHolderText:""//StringConstants.lbl_npRequestMedicalReference
            textValidator:RegExpValidator{regExp:/^\w+$/ }
            lblValueText:""
            tfReadOnly:false
            Layout.row: IntegerConstants.rowCount5
            //lblVisible:  pageNpSpTp===2?true:false//iSVisible(5)//pageSpOrNp
            lblValueVisible:  pageNpSpTp===2?true:false//iSVisible(5)//pageSpOrNp
            txtVisible: false //pageNpOrSp
            itemVisible: pageNpSpTp===2?true:false //pageSpOrNp
            Layout.rowSpan: IntegerConstants.rowSpan1
            //Layout.fillHeight: true
            Layout.fillWidth: true

        }
        NewPatientLabelWithText{
            id:sixLabel
            index:6
            labelText:StringConstants.label_testPgIOLAge
            tfPlaceHolderText:""//StringConstants.lbl_npRequestMedicalReference
            textValidator:RegExpValidator{regExp:/\s[0-1]{1}[0-9]{0,2}/ }
            lblValueText:""
            tfReadOnly:false
            Layout.row: IntegerConstants.rowCount6
            //lblVisible: pageNpSpTp===3?true:false//iSVisible(6)//pageSpOrNp
            lblValueVisible:  pageNpSpTp===3?true:false //iSVisible(6)//pageSpOrNp
            txtVisible: !lblValueVisible//false//pageNpOrSp
            itemVisible: pageNpSpTp===3?true:false //iSVisible(6)////pageSpOrNp
            Layout.rowSpan: IntegerConstants.rowSpan1
            //Layout.fillHeight: true
            Layout.fillWidth: true

        }
        NewPatientLabelWithText{
            id:sevenLabel
            index:7
            labelText:StringConstants.label_testPgIOLAge
            tfPlaceHolderText:""//StringConstants.lbl_npRequestMedicalReference
            textValidator:RegExpValidator{regExp:/\s[0-1]{1}[0-9]{0,2}/ }
            lblValueText:""
            tfReadOnly:false
            Layout.row: IntegerConstants.rowCount7
            //lblVisible:  pageNpSpTp===3?true:false ////iSVisible(7)//pageSpOrNp
            lblValueVisible:  pageNpSpTp===3?true:false ////iSVisible(7)//pageSpOrNp
            txtVisible: !lblValueVisible//false//pageNpOrSp
            itemVisible: pageNpSpTp===3?true:false //iSVisible(7)//pageSpOrNp
            Layout.rowSpan: IntegerConstants.rowSpan1
            //Layout.fillHeight: true
            Layout.fillWidth: true

        }
    }
}

