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
import "./../newPatient/"
import "./../../common/"
import ApplicationConstants 1.0


Rectangle{
    id:mainGridRec
    anchors.fill: parent
    color: StringConstants.actionBtnBackgroundColor
    property alias filterName: grid.filterName
    property alias labelText: grid.labelText
    //property string filterName: ""
    property bool patientOrOperator: false//true means patient // false means operator
    NewPatientGroupLabel{
        id:contactDetailLabel1
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        text: StringConstants.lbl_rpDetails
        height: 30
    }
    Rectangle{
        id:mainGrid
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.bottom: parent.bottom
        anchors.top: contactDetailLabel1.bottom
        //anchors.topMargin: parent.height/12
        anchors.leftMargin: parent.width/10
        color: "transparent"
        anchors.topMargin:mainGrid.height<100?0:mainGrid.height/4
        ReportDetailLabelGroup{
            //ContactDetailLabelTextGroup{
            id:grid
            //anchors.centerIn: parent
            //anchors.top: contactDetailLabel1.bottom
            //anchors.topMargin: 2 * contactDetailLabel1.height
           // anchors.leftMargin: 5
            anchors.fill: parent
            //filterName: StringConstants.report_PatientDetailModel
            verticalLayoutDirection: Grid.TopToBottom
            layoutDirection: Qt.LeftToRight
            flow: Grid.LeftToRight
            //filterName: StringConstants.model_contactLabeLAndText
            flickableDirection: Flickable.HorizontalAndVerticalFlick
            Component.onCompleted: {}
        }
    }

    //    GridLayout{
    //        id:grid
    //        anchors.top: contactDetailLabel1.bottom
    //        anchors.topMargin: contactDetailLabel1.height
    //        anchors.fill: parent

    //        NewPatientLabelWithText{
    //            id:oneLabel
    //            index:1
    //            labelText:StringConstants.lbl_rpGenerate
    //            tfReadOnly:false
    //            textAlignLeftOrCenter: false
    //            //tfPlaceHolderText:StringConstants.lbl_npRequestSurName
    //            lblValueText:StringConstants.lbl_rpGenerateValue
    //            Layout.row: IntegerConstants.rowCount1
    //            Layout.rowSpan: IntegerConstants.rowSpan1
    //            Layout.fillHeight: true
    //            Layout.fillWidth: true
    //            Layout.leftMargin: parent.width/10
    //            Layout.rightMargin: parent.width/10
    //            addSpace: true
    //            //lblVisible: true
    //            lblValueVisible: true//pageNpSpTp===1?false:true//pageSpOrNp
    //            txtVisible:!lblValueVisible//pageNpSpTp===1?true:false //!pageNpOrSp
    //            itemVisible: true

    //        }
    //        NewPatientLabelWithText{
    //            id:twoLabel
    //            index:2
    //            labelText:patientOrOperator?StringConstants.lbl_ReportForPatient:StringConstants.lbl_ReportForPratice
    //            tfReadOnly:false
    //            textAlignLeftOrCenter: false
    //            //tfPlaceHolderText:StringConstants.lbl_npRequestSurName
    //            lblValueText:StringConstants.lbl_rpPatientName
    //            Layout.row: IntegerConstants.rowCount2
    //            Layout.rowSpan: IntegerConstants.rowSpan1
    //            Layout.fillHeight: true
    //            Layout.fillWidth: true
    //            Layout.leftMargin: parent.width/10
    //            Layout.rightMargin: parent.width/10
    //            addSpace: true
    //            //lblVisible: true
    //            lblValueVisible: true//pageNpSpTp===1?false:true//pageSpOrNp
    //            txtVisible:!lblValueVisible//pageNpSpTp===1?true:false //!pageNpOrSp
    //            itemVisible: true

    //        }
    //        NewPatientLabelWithText{
    //            id:threeLabel
    //            index:3
    //            labelText:StringConstants.lbl_ReportFrom
    //            //tfPlaceHolderText:StringConstants.lbl_npRequestFirstName
    //            lblValueText:StringConstants.lbl_rpFromDate
    //            tfReadOnly:false
    //            textAlignLeftOrCenter: false
    //            Layout.row: IntegerConstants.rowCount3
    //            Layout.rowSpan: IntegerConstants.rowSpan1
    //            Layout.fillHeight: true
    //            Layout.fillWidth: true
    //            Layout.leftMargin: parent.width/10
    //            Layout.rightMargin: parent.width/10
    //            addSpace: true
    //            //lblVisible: true
    //            lblValueVisible: true//pageNpSpTp===1?false:true//pageSpOrNp
    //            txtVisible:!lblValueVisible//pageNpSpTp===1?true:false //!pageNpOrSp
    //            itemVisible: true

    //        }
    //        NewPatientLabelWithText{
    //            id:fourLabel
    //            index:4
    //            labelText:StringConstants.lbl_reportTo
    //            //tfPlaceHolderText:StringConstants.lbl_npRequestMedicalReference
    //            lblValueText:StringConstants.lbl_rpToDate
    //            tfReadOnly:false
    //            textAlignLeftOrCenter: false
    //            Layout.row: IntegerConstants.rowCount4
    //            Layout.rowSpan: IntegerConstants.rowSpan1
    //            Layout.fillHeight: true
    //            Layout.fillWidth: true
    //            Layout.leftMargin: parent.width/10
    //            Layout.rightMargin: parent.width/10
    //            addSpace: true
    //            //lblVisible: true
    //            lblValueVisible: true//pageNpSpTp===1?false:true//pageSpOrNp
    //            txtVisible:!lblValueVisible//pageNpSpTp===1?true:false //!pageNpOrSp
    //            itemVisible: true

    //        }
    //        NewPatientLabelWithText{
    //            id:fiveLabel
    //            index:5
    //            labelText:StringConstants.lbl_rpTotalTests
    //            //tfPlaceHolderText:StringConstants.lbl_npRequestFirstName
    //            lblValueText:StringConstants.lbl_rpTotalTestsValue
    //            tfReadOnly:false
    //            textAlignLeftOrCenter: false
    //            Layout.row: IntegerConstants.rowCount5
    //            Layout.rowSpan: IntegerConstants.rowSpan1
    //            Layout.fillHeight: true
    //            Layout.fillWidth: true
    //            Layout.leftMargin: parent.width/10
    //            Layout.rightMargin: parent.width/10
    //            addSpace: true
    //            //lblVisible: true
    //            lblValueVisible: true//pageNpSpTp===1?false:true//pageSpOrNp
    //            txtVisible:!lblValueVisible//pageNpSpTp===1?true:false //!pageNpOrSp
    //            itemVisible: true

    //        }
    //        NewPatientLabelWithText{
    //            id:sixLabel
    //            index:6
    //            labelText:StringConstants.lbl_rpNoOfRETests
    //            //tfPlaceHolderText:StringConstants.lbl_npRequestMedicalReference
    //            lblValueText:StringConstants.lbl_rpNoOfRETestsValue
    //            tfReadOnly:false
    //            textAlignLeftOrCenter: false
    //            Layout.row: IntegerConstants.rowCount6
    //            Layout.rowSpan: IntegerConstants.rowSpan1
    //            Layout.fillHeight: true
    //            Layout.fillWidth: true
    //            Layout.leftMargin: parent.width/10
    //            Layout.rightMargin: parent.width/10
    //            addSpace: true
    //            //lblVisible: true
    //            lblValueVisible: true//pageNpSpTp===1?false:true//pageSpOrNp
    //            txtVisible:!lblValueVisible//pageNpSpTp===1?true:false //!pageNpOrSp
    //            itemVisible: true

    //        }

    //        NewPatientLabelWithText{
    //            id:sevenLabel
    //            index:7
    //            labelText:StringConstants.lbl_rpNoOfLETests
    //            tfPlaceHolderText:""//StringConstants.lbl_npRequestMedicalReference
    //            lblValueText:StringConstants.lbl_rpNoOfLETestsValue
    //            tfReadOnly:false
    //            addSpace: true
    //            textAlignLeftOrCenter: false
    //            Layout.row: IntegerConstants.rowCount7
    //            Layout.rowSpan: IntegerConstants.rowSpan1
    //            Layout.leftMargin: parent.width/10
    //            Layout.rightMargin: parent.width/10
    //            //lblVisible: pageSpOrNp
    //            lblValueVisible: true//pageNpSpTp===1?false:true//pageSpOrNp
    //            txtVisible:!lblValueVisible//pageNpSpTp===1?true:false //!pageNpOrSp
    //            itemVisible: pageNpSpTp===1?false:true
    //            Layout.fillHeight: true
    //            Layout.fillWidth: true

    //        }

    //        NewPatientLabelWithText{
    //            id:eightLabel
    //            index:8
    //            labelText:StringConstants.lbl_rpNoOfCombinedTests
    //            tfPlaceHolderText:""//StringConstants.lbl_npRequestMedicalReference
    //            lblValueText:StringConstants.lbl_rpNoOfCombinedTestsValue
    //            tfReadOnly:false
    //            addSpace: true
    //            textAlignLeftOrCenter: false
    //            //lblHorizontalAlignment:Text.AlignRight
    //            Layout.row: IntegerConstants.rowCount8
    //            Layout.leftMargin: parent.width/10
    //            Layout.rightMargin: parent.width/10
    //            //lblVisible:  pageNpSpTp===2?true:false//iSVisible(5)//pageSpOrNp
    //            lblValueVisible: true//pageNpSpTp===1?false:true//pageSpOrNp
    //            txtVisible:!lblValueVisible//pageNpSpTp===1?true:false //!pageNpOrSp
    //            itemVisible: pageNpSpTp===2?true:false //pageSpOrNp
    //            Layout.rowSpan: IntegerConstants.rowSpan1
    //            Layout.fillHeight: true
    //            Layout.fillWidth: true

    //        }
    //    }
}



/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
