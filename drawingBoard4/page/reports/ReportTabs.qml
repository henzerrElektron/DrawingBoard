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
import QtQuick.Controls 1.4
import Qt.labs.settings 1.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Shapes 1.11
import "."
import "./../../common/"
import "./../../images/"
import "./../../delegates/"
import "./../../models/"
import "./../test/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0

Page {
    id: tabsPage
    anchors.fill: parent
    Layout.fillHeight: true
    Layout.fillWidth: true
    anchors.leftMargin: 10
    anchors.rightMargin: 10
    anchors.bottomMargin: 10
    //Layout.leftMargin: 10
    //Layout.rightMargin: 10
    header:  TabBar {
        id: bar
        background: Rectangle {
            color: StringConstants.borderColorBlack
        }
        width: parent.width
        currentIndex: swipeView.currentIndex
        //onCurrentIndexChanged:
        ReportTabButton {
            id:praticeBtn
            text: qsTr("Pratice Timeline")
            onClicked: {
                page1.visible = true;
                page2.visible = false;
                patientBtn.backColor=StringConstants.label_NewPatientLabelBgColor
               // backColor=StringConstants.actionBtnBackgroundColor
            }
        }
        ReportTabButton {
            id:patientBtn
            text: qsTr("Patient Timeline")
            onClicked: {
                page1.visible = false;
                page2.visible = true;
                //backColor=StringConstants.actionBtnBackgroundColor
                praticeBtn. backColor=StringConstants.label_NewPatientLabelBgColor
            }

        }

    }

    SwipeView {
        id: testview//swipeView
        anchors.fill: parent
        //initialItem: page1//bar.currentIndex
        currentIndex: bar.currentIndex
        function addPage(page) {
            addItem(page)
            page.visible = true
        }

        function removePage(page) {
            for (var n = 0; n < count; n++) { if (page === itemAt(n)) { removeItem(n) } }
            page.visible = false
        }

        Page {
            id: page1
            visible: true;
            Rectangle{
                id:contactTabPage1
                color: StringConstants.headerBackgroundColor
                anchors.fill: parent
                Layout.fillHeight: true
                Layout.fillWidth: true
                ReportPraticeTimeline{
                    id:reportTimeline
                    anchors.fill: parent
                }
            }
        }
        Page {
            id: page2
            visible: true;
            Rectangle{
                id:medicaltTabPage
                color: StringConstants.headerBackgroundColor
                anchors.fill: parent
                Layout.fillHeight: true
                Layout.fillWidth: true
                ReportPatientTimeline{
                    id:mainTime
                    anchors.fill: parent
                }
            }
        }
    }
    PageIndicator {
        id: indicator
        count: view.count
        currentIndex: view.currentIndex
        anchors.bottom: view.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

}
