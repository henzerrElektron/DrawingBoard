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
import "."
import "./../../common/"
import "./../../images/"
//import "./../../imports/"
import "./../../models/"
import "./../../delegates/"
import "./../test/"
import "./../home/"
import "./../newPatient/"
import ApplicationConstants 1.0
/*!
   \qmltype ReportPatientDateGrid
   \brief Contains the list of options for Pratice/Patient section to choose dates
   This allows the user to select dates quickly such that they need not use the sliders
   The user just nned to select the button relevatn to the number or  months/Years they need results for

  This contains patient results for left eye .
   \image tobeprovided.png

   \section1 Sample usage

   The usage of ReportPatientDateGrid is demonstrated below
   \qml
                ReportPatientLeftResult{
                    id:leftResult
                    anchors.fill: parent
                }
   \endqml

*/
Rectangle{
    id:mainRec
    anchors.fill: parent
    color: StringConstants.actionBtnBackgroundColor
    signal openDateRange()
    signal allRecordClicked()
    signal sixMonthClicked()
    signal oneYearClicked()
    signal twoYearClicked()
    signal threeYearClicked()
    signal btn1Clicked()
    signal btn2Clicked()
    signal btn3Clicked()
    signal btn4Clicked()
    signal btn5Clicked()
    signal btn6Clicked()
    //    onBtn1Clicked: console.log("Btn1 Clicked Report Patient DateGrid")
    //    onBtn2Clicked: console.log("Btn2 Clicked Report Patient Date Grid ")
    //    onBtn3Clicked: console.log("Btn3 Clicked Report Patient DateGrid")
    //    onBtn4Clicked: console.log("Btn3 Clicked Report Patient Date Grid")
    //    onBtn5Clicked: console.log("Btn5 Clicked Report Patient DateGrid")
    //    onBtn6Clicked: console.log("Btn6 clicked Report Patient DateGrid")

    //NewPatientGroupLabel{
     GroupLabel{
        id:contactDetailLabel1
        anchors.left: parent.left
        anchors.right: parent.right
        anchors.top: parent.top
        height: 30
        //Layout.fillWidth: true
        //Layout.row: IntegerConstants.rowCount1
        //Layout.rowSpan: IntegerConstants.rowSpan1
        //Layout.column: 1
        //Layout.columnSpan: 3
        //Layout.column: IntegerConstants.columnCount1
        //Layout.columnSpan:IntegerConstants.columnSpan2
        //Layout.preferredHeight: 30
        //Layout.minimumHeight: 30
        //Layout.maximumHeight: 30
        text: StringConstants.lbl_rpDateRange

    }
    Rectangle {
        id:subRec
        //anchors.fill: parent
        anchors.centerIn: parent
        width: parent.width - parent.width/4//mainRow.width
        height: ((parent.height)- (contactDetailLabel1.height))// - (2*contactDetailLabel1.height)// - (parent.height- contactDetailLabel1.height)/4//mainRow.height+contactDetailLabel1.height
        color: "transparent"
        //color: StringConstants.actionBtnBackgroundColor


        GridLayout{
            id: mainRow
            //anchors.fill: parent
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top//contactDetailLabel1.bottom
            anchors.bottom: parent.bottom
            anchors.leftMargin: 30
            anchors.rightMargin: 30
            anchors.bottomMargin: 30
            anchors.topMargin: 30

            columns: 3
            rows: 2

            ReportPageBtn{
                id:allRecordBtn
                text: StringConstants.btn_reportAllRecord
                height: parent.height/4
                width: parent.width/4
                onClicked: {
                    allRecordClicked()
                    btn1Clicked()
                    console.log("AllRecordBtn Clicked")
                }
            }
            ReportPageBtn{
                id:sixMonthBtn
                text: StringConstants.btn_reportSixMonth
                height: parent.height/4
                width: parent.width/4
                onClicked: {
                    sixMonthClicked()
                    btn2Clicked()
                    console.log("Six month Clicked")
                }
            }
            ReportPageBtn{
                id:oneYearBtn
                text: StringConstants.btn_oneYear
                height: parent.height/4
                width: parent.width/4
                onClicked: {
                    oneYearClicked()
                    btn3Clicked()
                    console.log("One year clicked")
                }
            }
            ReportPageBtn{
                id:twoYearBtn
                text:StringConstants.btn_twoyear
                height: parent.height/4
                width: parent.width/4
                onClicked: {
                    twoYearClicked()
                    btn4Clicked()
                    console.log("Two year clicked")
                }
            }
            ReportPageBtn{
                id:threeYearBtn
                text: StringConstants.btn_threeYear
                height: parent.height/4
                width: parent.width/4
                onClicked: {
                    threeYearClicked()
                    btn5Clicked()
                    console.log("Three year clicked")
                }
            }
            ReportPageBtn{
                id:customDatesBtn
                text: StringConstants.btn_reportPageDateCustoms
                height: parent.height/4
                width: parent.width/4
                onClicked: {
                    console.log("Custom Dates")
                    openDateRange()
                    btn6Clicked()

                }
            }
        }
    }
}
