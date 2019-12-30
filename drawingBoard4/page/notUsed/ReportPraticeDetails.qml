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
import ApplicationConstants 1.0
/*!
   \qmltype ReportPraticeDetails
   \brief Contains the labels that gives information regarding the test

  This contains pratice relevant information .
  This Component also contains information about all the Test performed for the selected date range

   \image tobeprovided.png

   \section1 Sample usage

   The usage of ReportRangeSliders is demonstrated below
   \qml
                ReportPraticeTimeline{
                    id:reportTimeline
                    anchors.fill: parent
            }
   \endqml

*/

Rectangle{
    id:mainGridRec
    anchors.fill: parent
    color: StringConstants.actionBtnBackgroundColor
    NewPatientGroupLabel{
        id:contactDetailLabel1
        anchors.top: parent.top
        anchors.left: parent.left
        anchors.right: parent.right
        //Layout.fillWidth: true
        //Layout.row: IntegerConstants.rowCount1
        //Layout.rowSpan: IntegerConstants.rowSpan1
        //Layout.column: IntegerConstants.columnCount1
        //Layout.columnSpan:IntegerConstants.columnSpan2
        text: StringConstants.lbl_rpDetails
        //Layout.preferredHeight: 30
        //Layout.minimumHeight: 30
        //Layout.maximumHeight: 30
        height: 30
    }
    GridLayout{
        id:grid
        anchors.top: contactDetailLabel1.bottom
        anchors.topMargin: contactDetailLabel1.height
        anchors.fill: parent
        //rows: IntegerConstants.rowCount5

        NewPatientLabelWithText{
            id:oneLabel
            index:1
            labelText:StringConstants.lbl_rpGenerate
            tfReadOnly:false
            labelOnTop:false
            textAlignLeftOrCenter: false
            //tfPlaceHolderText:StringConstants.lbl_npRequestSurName
            lblValueText:StringConstants.lbl_rpGenerateValue
            Layout.row: IntegerConstants.rowCount2
            Layout.rowSpan: IntegerConstants.rowSpan1
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.leftMargin: parent.width/10
            Layout.rightMargin: parent.width/10
            addSpace: true
            //lblVisible: true
            lblValueVisible: true//pageNpSpTp===1?false:true//pageSpOrNp
            txtVisible:!lblValueVisible//pageNpSpTp===1?true:false //!pageNpOrSp
            itemVisible: true

        }
        NewPatientLabelWithText{
            id:twoLabel
            index:2
            labelText:StringConstants.lbl_rpTotalTests
            //tfPlaceHolderText:StringConstants.lbl_npRequestFirstName
            lblValueText:StringConstants.lbl_rpTotalTestsValue
            tfReadOnly:false
            labelOnTop:false
            textAlignLeftOrCenter: false
            Layout.row: IntegerConstants.rowCount3
            Layout.rowSpan: IntegerConstants.rowSpan1
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.leftMargin: parent.width/10
            Layout.rightMargin: parent.width/10
            addSpace: true
            //lblVisible: true
            lblValueVisible: true//pageNpSpTp===1?false:true//pageSpOrNp
            txtVisible:!lblValueVisible//pageNpSpTp===1?true:false //!pageNpOrSp
            itemVisible: true

        }
        NewPatientLabelWithText{
            id:threeLabel
            index:3
            labelText:StringConstants.lbl_rpNoOfRETests
            //tfPlaceHolderText:StringConstants.lbl_npRequestMedicalReference
            lblValueText:StringConstants.lbl_rpNoOfRETestsValue
            tfReadOnly:false
            labelOnTop:false
            textAlignLeftOrCenter: false
            Layout.row: IntegerConstants.rowCount4
            Layout.rowSpan: IntegerConstants.rowSpan1
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.leftMargin: parent.width/10
            Layout.rightMargin: parent.width/10
            addSpace: true
            //lblVisible: true
            lblValueVisible: true//pageNpSpTp===1?false:true//pageSpOrNp
            txtVisible:!lblValueVisible//pageNpSpTp===1?true:false //!pageNpOrSp
            itemVisible: true

        }

        NewPatientLabelWithText{
            id:fourLabel
            index:4
            labelText:StringConstants.lbl_rpNoOfLETests
            tfPlaceHolderText:""//StringConstants.lbl_npRequestMedicalReference
            lblValueText:StringConstants.lbl_rpNoOfLETestsValue
            tfReadOnly:false
            labelOnTop:false
            addSpace: true
            textAlignLeftOrCenter: false
            Layout.row: IntegerConstants.rowCount5
            Layout.rowSpan: IntegerConstants.rowSpan1
            Layout.leftMargin: parent.width/10
            Layout.rightMargin: parent.width/10
            //lblVisible: pageSpOrNp
            lblValueVisible: true//pageNpSpTp===1?false:true//pageSpOrNp
            txtVisible:!lblValueVisible//pageNpSpTp===1?true:false //!pageNpOrSp
            itemVisible: pageNpSpTp===1?false:true
            Layout.fillHeight: true
            Layout.fillWidth: true

        }

        NewPatientLabelWithText{
            id:fiveLabel
            index:5
            labelText:StringConstants.lbl_rpNoOfCombinedTests
            tfPlaceHolderText:""//StringConstants.lbl_npRequestMedicalReference
            lblValueText:StringConstants.lbl_rpNoOfCombinedTestsValue
            tfReadOnly:false
            labelOnTop:false
            addSpace: true
            textAlignLeftOrCenter: false
            //lblHorizontalAlignment:Text.AlignRight
            Layout.row: IntegerConstants.rowCount6
            Layout.leftMargin: parent.width/10
            Layout.rightMargin: parent.width/10
            //lblVisible:  pageNpSpTp===2?true:false//iSVisible(5)//pageSpOrNp
            lblValueVisible: true//pageNpSpTp===1?false:true//pageSpOrNp
            txtVisible:!lblValueVisible//pageNpSpTp===1?true:false //!pageNpOrSp
            itemVisible: pageNpSpTp===2?true:false //pageSpOrNp
            Layout.rowSpan: IntegerConstants.rowSpan1
            Layout.fillHeight: true
            Layout.fillWidth: true

        }
    }
}


