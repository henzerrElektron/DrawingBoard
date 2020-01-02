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
import ApplicationConstants 1.0
import "."
import "./../../images/"
//import "./../../imports/"
import "./../../models/"
import "./../../delegates/"
import "./../test/"
import "./../../common/"
import "./../../tables/"
import "./../newPatient/"
import "./../changePatient/"
/*!
   \qmltype ReportPraticeTimeline
   \brief Contains the pratice tabs of the reports

  This contains pratice relevant information .
  This Component contains a search bar to search for operator and all the test performed by the operator.
  This Component also contains information about all the Test performed for the selected date range

   \image tobeprovided.png

   \section1 Sample usage

   The usage of ReportPraticeTimeline is demonstrated below
   \qml
                ReportPraticeTimeline{
                    id:reportTimeline
                    anchors.fill: parent
            }
   \endqml

*/
Rectangle {
    id: mainRec
    color: StringConstants.barBackgroundColor
    //anchors.fill: parent
    anchors.top: parent.top
    anchors.topMargin: 5
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.bottom: parent.bottom

    signal popupOpen()
    onPopupOpen:
        // {
        console.log("I am clicked for open")
    // }

    signal popupInvokeIndex(int index)
    signal popupInvokeSource(var source)
    signal btn1Clicked()
    signal btn2Clicked()
    signal btn3Clicked()
    signal btn4Clicked()
    signal btn5Clicked()
    signal btn6Clicked()
    function setState()
    {
        pageHeader.setDetailDateRangeSource("pratice")
    }

    function printTest()
    {
        console.log("I am printing a test here")
    }
    onBtn1Clicked: console.log("Button 1 Report Pratice Timeline clicked")
    onBtn2Clicked: console.log("Button 2 Report Pratice Timeline Clicked")
    onBtn3Clicked: console.log("Button 3 Report Pratice Timeline clicked")
    onBtn4Clicked: console.log("Button 4 Report Pratice Timeline Clicked")
    onBtn5Clicked: console.log("Button 5 Report Pratice Timeline clicked")
    onBtn6Clicked: console.log("Button 6 Report Pratice Timeline Clicked")
    GridLayout{
        id: mainCol
        anchors.fill: parent
        //anchors.leftMargin: 5
        //anchors.rightMargin: 5
        //columns: 4
        rows: 3
        Rectangle{
            id:rectangleSub1
            color: StringConstants.barBackgroundColor
            Layout.rightMargin: 2
            Layout.leftMargin: 2
            Layout.bottomMargin: 2
            Layout.topMargin: 2//"white"
            border.width: 3
            border.color:  StringConstants.label_NewPatientLabelBgColor
            //Layout.topMargin: 10//StringConstants.testPage_backgroundColor
            //Layout.bottomMargin: 10
            //Layout.column: 1
            Layout.row: 1
            //Layout.fillHeight: true
            Layout.fillWidth: true
            //Layout.rightMargin: 20
            //Layout.topMargin: 10
            //Layout.bottomMargin: 10
            //width: 100
            //height: 50//150
            Layout.minimumHeight: 90//parent.height/5//110//75+searchLabel.height<110?110:75+searchLabel.height
            //NewPatientGroupLabel{
             GroupLabel{
                id:searchLabel
                text: StringConstants.lbl_rpSelectOperator
                anchors.topMargin: 5
                anchors.rightMargin: 5
                anchors.leftMargin: 5
                //color: StringConstants.actionBtnBackgroundColor
                Layout.alignment: Qt.AlignTop |Qt.AlignLeft
                //font: OtherConstants.fontFamily
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.margins: 10
                //anchors.leftMargin: 5
                //Layout.fillWidth: true
                //Layout.column: 1
                //Layout.columnSpan: 3
                //Layout.rowSpan: 1
                //Layout.row: 1
                height: parent.height/5
            }
            //NewPatientDataTumbler{
            SwitchSearchBox{
                id:pageOperators
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.leftMargin: 10
                anchors.rightMargin: 10
                anchors.bottomMargin: 5
                //height: (parent.height - searchLabel.height -50)
                anchors.top: searchLabel.bottom
                anchors.topMargin:searchLabel.height+5//(((parent.height) - searchLabel.height)/2)
                //labelHorizontal:true
                //labelText: StringConstants.lbl_rpSelectOperator
                //firstTumblerVisibility: false
                //secTumblerVisibility: false
                //thirdTumblerVisibility: false
                //firstTumblerModel:OtherConstants.modelPraticeOperators
                //comboBoxModel: OtherConstants.modelPraticeOperators
                hideBorder:false
                comboBoxModel: OtherConstants.modelPraticeOperators
                comboBoxtypes: OtherConstants.modelPraticeOperators
                comboBoxRoleOrModelFlag:true
                onComboBoxModelChanged: {
                    console.log("The mode is"+comboBoxModel)
                }
                comboBoxTextRole: "key"
                comboBoxLabel:StringConstants.lbl_rpOperatorName
                //comboBoxTextRole: StringConstants.lbl_rpOperatorName
                comboBoxInputHints:Qt.ImhUppercaseOnly|Qt.ImhLowercaseOnly
                comboBoxValidator:RegExpValidator{regExp:/^[A-Za-z]+$/ }
            }
        }
        Rectangle{
            id:subRec
            Layout.row: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredHeight: parent.height/4
            Layout.minimumHeight: parent.height/4
            Layout.maximumHeight: parent.height/4
            color: StringConstants.barBackgroundColor
            anchors.top: rectangleSub1.bottom
            anchors.topMargin: 5
            ReportPageHeader{
                id:pageHeader
                state: "pratice"
                // modelName:StringConstants.modelReportPraticeItems
                filterName:StringConstants.modelReportPraticeItems
                detailFilterName:StringConstants.report_PraticeDetailModel
                labelText: StringConstants.lbl_rpDetails
                anchors.fill: parent
                Component.onCompleted: {
                    //pageHeader.state = "pratice"
                    //pageSlider.dateFromChange.connect(pageStartTumbler.setTumblerDate)
                    pageHeader.openDateRange.connect(popupOpen)//(popup.open)
                    pageHeader.invokeSource.connect(popupInvokeSource)//(rpPage.invokeSource)
                    pageHeader.invokeIndex.connect(popupInvokeIndex)//(rpPage.invokeIndex)
                    pageHeader.openBtn1.connect(mainRec.btn1Clicked)
                    pageHeader.openBtn2.connect(mainRec.btn2Clicked)
                    pageHeader.openBtn3.connect(mainRec.btn3Clicked)
                    pageHeader.openBtn4.connect(mainRec.btn4Clicked)
                    pageHeader.openBtn5.connect(mainRec.btn5Clicked)
                    pageHeader.openBtn6.connect(mainRec.btn6Clicked)
                }
            }

        }


        Rectangle{
            id:rectangleSub2
           color: StringConstants.barBackgroundColor//testPage_backgroundColor//"red"//
            Layout.topMargin: 20//"green"///
            //Layout.column: 2
            Layout.row: 3
            Layout.fillHeight: true
            //Layout.alignment: Qt.AlignLeft
            Layout.fillWidth: true
            anchors.top: subRec.bottom
            anchors.topMargin: 5
            //Layout.rightMargin: 20
            Rectangle
            {
                id:tableRec
                anchors.fill: parent
                anchors.leftMargin: 0
                anchors.rightMargin: 0
                anchors.bottomMargin: 10
                anchors.topMargin: 10
                border.width: 3
                border.color: StringConstants.actionBtnBackgroundColor
                CommonTableGrid{
                    id:curTestTabs2
                    anchors.fill: parent
                    anchors.leftMargin: 10
                    anchors.rightMargin: 10
                    anchors.bottomMargin: 10
                    anchors.topMargin: 10
                    commonTableModel: theMedicalTestModel
                    repeaterModel: 14//theMedicalTestModel
                    searchRecVisibilty:false
                    //tableModel: theExistingPatientsModel
                    proxySoure: theMedicalTestModel

                }
            }
            //            ReportPraticeTableGrid{
            //                id:praticeTable
            //                anchors.fill: parent
            //            }

            //width: 100
            //height: 150
            //            NewPatientDataTumbler{
            //                id:pageGender
            //                //anchors.fill: parent
            //                anchors.left: parent.left
            //                labelText: StringConstants.lbl_npPatientGender
            //                firstTumblerVisibility: true
            //                secTumblerVisibility: false
            //                thirdTumblerVisibility: false
            //                firstTumblerModel:OtherConstants.modelGender
            //                comboBoxModel: OtherConstants.modelGender
            //            }
        }
    }
}













/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
