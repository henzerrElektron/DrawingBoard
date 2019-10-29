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
Rectangle {
    id: mainRec
    color: StringConstants.testPage_backgroundColor//"white"//StringConstants.testPage_backgroundColor
    anchors.top: parent.top
    anchors.topMargin: 5
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    //anchors.fill: parent
    signal popupOpen()
    signal popupInvokeIndex(int index)
    signal popupInvokeSource(var source)
    signal btn1Clicked()
    signal btn2Clicked()
    signal btn3Clicked()
    signal btn4Clicked()
    signal btn5Clicked()
    signal btn6Clicked()
    onPopupInvokeIndex: console.log("The value of the index is"+index)
    onBtn1Clicked: console.log("Button 1 Report Patient Timeline clicked")
    onBtn2Clicked: console.log("Button 2 Report Patient Timeline Clicked")
    onBtn3Clicked: console.log("Button 3 Report Patient Timeline clicked")
    onBtn4Clicked: console.log("Button 4 Report Patient Timeline Clicked")
    onBtn5Clicked: console.log("Button 5 Report Patient Timeline clicked")
    onBtn6Clicked: console.log("Button 6 Report Patient Timeline Clicked")
    function setState()
    {
        pageHeader.setDetailDateRangeSource("patient")//.state = "patient"
    }
    GridLayout{
        id: mainCol
        anchors.fill: parent
        columns: 2
        rows: 5
        columnSpacing: 10
        rowSpacing: 5
        Rectangle{
            id:rectangleSub1
            color: StringConstants.testPage_backgroundColor
            Layout.column: 1
            Layout.columnSpan: 2
            Layout.row: 1
            //Layout.fillHeight: true
            Layout.fillWidth: true
            //width: 100
            height: 100//150
            SwitchSearchItems{
                id:switchItems
                anchors.fill: parent
                pageHeader: StringConstants.lbl_rpSelectPatient//StringConstants.label_searchQuestion
                patientFirstNameModel:theExistingPatientsModel
                patientSurNameModel:theExistingPatientsModel
                medicalRefModel: theExistingPatientsModel
            }

            //            NewPatientDataTumbler{
            //                id:pagePatients
            //                anchors.fill: parent
            //                labelText: StringConstants.lbl_rpSelectPatient
            //                firstTumblerVisibility: false
            //                secTumblerVisibility: false
            //                thirdTumblerVisibility: false
            //                firstTumblerModel:OtherConstants.modelSamplePatients
            //                comboBoxModel: OtherConstants.modelSamplePatients
            //            }
        }
        Rectangle{
            id:subRec
            Layout.row: 2
            Layout.column: 1
            Layout.columnSpan: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.topMargin: 5
            Layout.preferredHeight: parent.height/4
            Layout.minimumHeight: parent.height/4
            Layout.maximumHeight: parent.height/4
            color: StringConstants.testPage_backgroundColor
            ReportPageHeader{
                id:pageHeader
                anchors.fill: parent
                state: "patient"
                filterName: StringConstants.modelReportPatientItems
                detailFilterName:StringConstants.report_PatientDetailModel
                //modelName:StringConstants.modelReportPatientItems
                Component.onCompleted: {
                    // pageHeader.state = "patient"
                    //pageSlider.dateFromChange.connect(pageStartTumbler.setTumblerDate)
                    pageHeader.openDateRange.connect(popupOpen)//popup.open
                    pageHeader.invokeSource.connect(popupInvokeSource)//rpPage.invokeSource
                    pageHeader.invokeIndex.connect(popupInvokeIndex)//rpPage.invokeIndex
                    //                    pageHeader.openBtn1.connect(btn1Clicked)
                    //                    pageHeader.btn2Clicked.connect(btn2Clicked)
                    //                    pageHeader.btn3Clicked.connect(btn3Clicked)
                    //                    pageHeader.btn4Clicked.connect(btn4Clicked)
                    //                    pageHeader.btn5Clicked.connect(btn5Clicked)
                    //                    pageHeader.btn6Clicked.connect(btn6Clicked)
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
            id:rectangleTabs
            color: StringConstants.testPage_backgroundColor
            anchors.top: subRec.bottom
            anchors.topMargin: 5
            Layout.column: 1
            Layout.columnSpan: 2
            Layout.row: 3
            Layout.rowSpan: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            ReportPatientResultTabs{
                id:resultTabs
                anchors.fill: parent

            }
        }

        //        Rectangle{
        //            id:rectanglelabel1
        //            color: StringConstants.barBackgroundColor//"white"
        //            Layout.column: 1
        //            Layout.row: 3
        //            anchors.top: subRec.bottom
        //            anchors.topMargin: 5
        //            Layout.fillHeight: true
        //            Layout.fillWidth: true
        //            Layout.preferredHeight: 25
        //            Layout.minimumHeight: 25
        //            Layout.maximumHeight: 25
        //            NewPatientGroupLabel{
        //                text: StringConstants.lbl_leftEyeResults//"LeftEyeResults"
        //                font: OtherConstants.fontFamily
        //                verticalAlignment: Text.AlignVCenter
        //                horizontalAlignment: Text.AlignHCenter
        //                anchors.fill: parent
        //            }
        //        }
        //        Rectangle{
        //            id:rectanglelabel2
        //            color: StringConstants.barBackgroundColor//"white"
        //            anchors.top: subRec.bottom
        //            anchors.topMargin: 5
        //            Layout.column: 2
        //            Layout.row: 3
        //            Layout.fillHeight: true
        //            Layout.fillWidth: true
        //            Layout.preferredHeight: 25
        //            Layout.minimumHeight: 25
        //            Layout.maximumHeight: 25
        //            NewPatientGroupLabel{
        //                text: StringConstants.lbl_righEyeResults//"RightEyeResults"
        //                font: OtherConstants.fontFamily
        //                verticalAlignment: Text.AlignVCenter
        //                horizontalAlignment: Text.AlignHCenter
        //                anchors.fill: parent
        //            }
        //        }
        //        Rectangle{
        //            id:rectangleSub3
        //            color: StringConstants.barBackgroundColor//"white"//StringConstants.testPage_backgroundColor//"green"///
        //            Layout.column: 1
        //            Layout.columnSpan:1
        //            Layout.row: 4
        //            Layout.fillHeight: true
        //            anchors.top: rectanglelabel1.bottom

        //            //Layout.alignment: Qt.AlignLeft
        //            Layout.fillWidth: true
        //            //Layout.minimumWidth: parent.width/2 - 10//0
        //            //Layout.preferredWidth: parent.width/2 - 10//0
        //            //Layout.maximumWidth: parent.width/2 - 10//0
        //            //Layout.leftMargin: 10
        //            Layout.topMargin: 10
        //            Layout.preferredHeight: parent.height/4
        //            Layout.maximumHeight: parent.height/4
        //            XYPlot{
        //                id:xyPlotId
        //                anchors.fill: parent
        //                crossTestOrReport:false
        //            }

        //        }
        //        Rectangle{
        //            id:rectangleSub4
        //            color: StringConstants.barBackgroundColor//"white"//StringConstants.testPage_backgroundColor//"green"///
        //            Layout.column: 2
        //            Layout.columnSpan:1
        //            Layout.row: 4
        //            Layout.fillHeight: true
        //            //Layout.alignment: Qt.AlignLeft
        //            Layout.fillWidth: true
        //            anchors.top: rectanglelabel2.bottom

        //            ////Layout.minimumWidth: parent.width/2 - 10//0
        //            ////Layout.preferredWidth: parent.width/2 - 10//0
        //            ////Layout.maximumWidth: parent.width/2 - 10//0
        //            //Layout.leftMargin: 10
        //            Layout.topMargin: 10
        //            Layout.preferredHeight: parent.height/4
        //            Layout.maximumHeight: parent.height/4
        //            //Layout.leftMargin: 5
        //            XYPlot{
        //                id:xyPlotId1
        //                anchors.fill: parent
        //                crossTestOrReport:false

        //            }

        //        }
        //        Rectangle{
        //            id:rectangleSub2
        //            color: StringConstants.barBackgroundColor//"white"//StringConstants.testPage_backgroundColor//"green"///
        //            Layout.column: 1
        //            Layout.columnSpan: 1
        //            Layout.row: 5
        //            anchors.top: rectangleSub3.bottom
        //            anchors.topMargin: 5
        //            anchors.bottom: parent.bottom
        //            Layout.fillHeight: true
        //            //Layout.minimumWidth: parent.width/2 - 100
        //            //Layout.preferredWidth: parent.width/2 - 100
        //            //Layout.maximumWidth: parent.width/2 - 100
        //            //Layout.leftMargin: 50
        //            //Layout.alignment: Qt.AlignLeft
        //            Layout.fillWidth: true

        //            CommonTableGrid{
        //                id:curTestTabs1
        //                anchors.fill: parent
        //                Layout.fillHeight: true
        //                Layout.fillWidth: true
        //                repeaterModel: theLeftPatientResultModel
        //                searchRecVisibilty:false
        //                //tableModel: theExistingPatientsModel
        //                proxySoure: theLeftPatientResultModel

        //            }
        //            //            ReportPatientTableGrid{
        //            //                id:patientTable
        //            //                //anchors.fill: parent
        //            //                tableModel: theRightPatientResultModel
        //            //                anchors.leftMargin: 20
        //            //                anchors.rightMargin: 10
        //            //            }
        //        }
        //        Rectangle{
        //            id:rectangleSub5
        //            color: StringConstants.barBackgroundColor//"white"//StringConstants.testPage_backgroundColor
        //            Layout.column: 2
        //            Layout.columnSpan: 1
        //            Layout.row: 5
        //            Layout.fillHeight: true
        //            Layout.fillWidth: true
        //            anchors.top: rectangleSub4.bottom
        //            anchors.topMargin: 5
        //            anchors.bottom: parent.bottom
        //            //Layout.minimumWidth: parent.width/2 - 100
        //            //Layout.preferredWidth: parent.width/2 - 100
        //            //Layout.maximumWidth: parent.width/2 - 100
        //            //Layout.leftMargin: 50
        //            CommonTableGrid{
        //                id:curTestTabs2
        //                anchors.fill: parent
        //                Layout.fillHeight: true
        //                Layout.fillWidth: true
        //                repeaterModel: theRightPatientResultModel
        //                searchRecVisibilty:false
        //                //tableModel: theExistingPatientsModel
        //                proxySoure: theRightPatientResultModel

        //            }
        //            //            ReportPatientTableGrid{
        //            //                id:patientTable1
        //            //                //anchors.fill: parent
        //            //                anchors.leftMargin: 20
        //            //                anchors.rightMargin: 10
        //            //                tableModel: theLeftPatientResultModel//theRightPatientResultModel
        //            //            }

        //        }
    }
}



/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
