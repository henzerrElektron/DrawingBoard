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
import "./../newPatient/"
import "./../changePatient/"
Rectangle {
    id: rectangle2
    color: "white"//StringConstants.testPage_backgroundColor
    anchors.fill: parent
    GridLayout{
        id: mainCol
        anchors.fill: parent
        columns: 2
        rows: 4
        columnSpacing: 10
        rowSpacing: 10
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
            id:rectanglelabel1
            color: "white"
            Layout.column: 1
            Layout.row: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredHeight: 50
            Layout.minimumHeight: 50
            Layout.maximumHeight: 50
            Label{
                text: StringConstants.lbl_leftEyeResults//"LeftEyeResults"
                 font: OtherConstants.fontFamily
                verticalAlignment: Text.AlignTop
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
            }
        }
        Rectangle{
            id:rectanglelabel2
            color: "white"
            Layout.column: 2
            Layout.row: 2
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.preferredHeight: 50
            Layout.minimumHeight: 50
            Layout.maximumHeight: 50
            Label{
                text: StringConstants.lbl_righEyeResults//"RightEyeResults"
                font: OtherConstants.fontFamily
                verticalAlignment: Text.AlignTop
                horizontalAlignment: Text.AlignHCenter
                anchors.fill: parent
            }
        }
        Rectangle{
            id:rectangleSub3
            color: "white"//StringConstants.testPage_backgroundColor//"green"///
            Layout.column: 1
            Layout.columnSpan:1
            Layout.row: 3
            Layout.fillHeight: true
            //Layout.alignment: Qt.AlignLeft
            Layout.fillWidth: true
            Layout.minimumWidth: parent.width/2 - 100
            Layout.preferredWidth: parent.width/2 - 100
            Layout.maximumWidth: parent.width/2 - 100
            Layout.leftMargin: 50
            XYPlot{
                id:xyPlotId
                anchors.fill: parent
                crossTestOrReport:false
            }

        }
        Rectangle{
            id:rectangleSub4
            color: "white"//StringConstants.testPage_backgroundColor//"green"///
            Layout.column: 2
            Layout.columnSpan:1
            Layout.row: 3
            Layout.fillHeight: true
            //Layout.alignment: Qt.AlignLeft
            Layout.fillWidth: true
            Layout.minimumWidth: parent.width/2 - 100
            Layout.preferredWidth: parent.width/2 - 100
            Layout.maximumWidth: parent.width/2 - 100
            Layout.leftMargin: 50
            //Layout.leftMargin: 5
            XYPlot{
                id:xyPlotId1
                anchors.fill: parent
                crossTestOrReport:false

            }

        }
        Rectangle{
            id:rectangleSub2
            color: "white"//StringConstants.testPage_backgroundColor//"green"///
            Layout.column: 1
            Layout.columnSpan: 1
            Layout.row: 4
            Layout.fillHeight: true
            Layout.minimumWidth: parent.width/2 - 100
            Layout.preferredWidth: parent.width/2 - 100
            Layout.maximumWidth: parent.width/2 - 100
            Layout.leftMargin: 50
            //Layout.alignment: Qt.AlignLeft
            Layout.fillWidth: true
            ReportPatientTableGrid{
                id:patientTable
                //anchors.fill: parent
                tableModel: theRightPatientResultModel
                anchors.leftMargin: 20
                anchors.rightMargin: 10
            }
        }
        Rectangle{
            id:rectangleSub5
            color: "white"//StringConstants.testPage_backgroundColor
            Layout.column: 2
            Layout.columnSpan: 1
            Layout.row: 4
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.minimumWidth: parent.width/2 - 100
            Layout.preferredWidth: parent.width/2 - 100
            Layout.maximumWidth: parent.width/2 - 100
            Layout.leftMargin: 50
            ReportPatientTableGrid{
                id:patientTable1
                //anchors.fill: parent
                anchors.leftMargin: 20
                anchors.rightMargin: 10
                tableModel: theLeftPatientResultModel
            }

        }
    }
}



/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
