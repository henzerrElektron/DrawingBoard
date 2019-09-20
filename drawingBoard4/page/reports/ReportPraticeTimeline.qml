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
Rectangle {
    id: rectangle2
    color: StringConstants.testPage_backgroundColor//"blue"//"white"
    anchors.fill: parent
    GridLayout{
        id: mainCol
        anchors.fill: parent
        //columns: 4
        rows: 2
        Rectangle{
            id:rectangleSub1
            color: "white"
            Layout.topMargin: 10//StringConstants.testPage_backgroundColor
            //Layout.column: 1
            Layout.row: 1
            //Layout.fillHeight: true
            Layout.fillWidth: true
            //Layout.rightMargin: 20
            //Layout.topMargin: 10
            //Layout.bottomMargin: 10
            //width: 100
            height: 50//150
            NewPatientDataTumbler{
                id:pageOperators
                anchors.fill: parent
                labelHorizontal:true
                labelText: StringConstants.lbl_rpSelectOperator
                firstTumblerVisibility: false
                secTumblerVisibility: false
                thirdTumblerVisibility: false
                firstTumblerModel:OtherConstants.modelPraticeOperators
                comboBoxModel: OtherConstants.modelPraticeOperators
            }
        }

        Rectangle{
            id:rectangleSub2
            color: StringConstants.testPage_backgroundColor//"red"//
            Layout.topMargin: 20//"green"///
            //Layout.column: 2
             Layout.row: 2
            Layout.fillHeight: true
            //Layout.alignment: Qt.AlignLeft
            Layout.fillWidth: true
            //Layout.rightMargin: 20
            ReportPraticeTableGrid{
                id:praticeTable
                anchors.fill: parent
            }

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
