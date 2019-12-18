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
//import QtQuick.Controls 1.4
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
    signal popupOpen()
    signal popupInvokeIndex(int index)
    signal popupInvokeSource(var source)
    signal btn1Clicked()
    signal btn2Clicked()
    signal btn3Clicked()
    signal btn4Clicked()
    signal btn5Clicked()
    signal btn6Clicked()
    function printTest()
    {
        console.log("I am printing a test here")
    }
    function setCurrentIndex(index)
    {
        if(index === IntegerConstants.actionIndexCustom)
        {
            popup.open()
        }
    }

    onBtn1Clicked: console.log("Button 1 Report Tabs clicked")
    onBtn2Clicked: console.log("Button 2 Report Tabs Clicked")
    onBtn3Clicked: console.log("Button 3 Report Tabs clicked")
    onBtn4Clicked: console.log("Button 4 Report Tabs Clicked")
    onBtn5Clicked: console.log("Button 5 Report Tabs clicked")
    onBtn6Clicked: console.log("Button 6 Report Tabs Clicked")
    anchors.fill: parent
    Layout.fillHeight: true
    Layout.fillWidth: true
    anchors.topMargin: 5
    anchors.leftMargin: 10
    anchors.rightMargin: 10
    //anchors.bottomMargin: 10
    property int prevPraticeBtnHeight: 0
    property int prevPatientBtnHeight: 0
    property int prevPraticeBtnWidth: 0
    property int prevPatientBtnWidth: 0
    //Layout.leftMargin: 10
    //Layout.rightMargin: 10
    header:  TabBar {
        id: bar
        Material.accent:"transparent"
        background: Rectangle {
            color: StringConstants.barBackgroundColor
            //border.width: 2
            //border.color: StringConstants.barBackgroundColor
            CommonBorder
            {
                customBorder:  false
                lBorderWidth: 0
                rBorderWidth: 0
                tBorderWidth: 0
                bBorderWidth: 2
                borderColor: StringConstants.barBorderColor
            }
        }
        width: parent.width
        currentIndex: swipeView.currentIndex
        onCurrentIndexChanged: {
            if(currentIndex === 0)
            {
                praticeBtnClicked()
            }
            if(currentIndex === 1)
            {
                patientBtnClicked()
            }
        }
        function praticeBtnClicked()
        {
            if(page1.visible === false)
            {
                page1.visible = true;
            }
            page2.visible = false;
            if(prevPraticeBtnHeight !== 0)
            {
                praticeBtn.height = prevPraticeBtnHeight
                patientBtn.height = prevPatientBtnHeight
            }
            else
            {
                prevPraticeBtnHeight =  praticeBtn.height
                prevPatientBtnHeight =  patientBtn.height
                // prevPraticeBtnWidth =  praticeBtn.width
            }
            //prevPatientBtnHeight =  patientBtn.height
            /////////////////////////////////patientBtn.height = patientBtn.height/2
            patientBtn.height = patientBtn.height - 10
            praticeBtn.height = praticeBtn.height + 3
            praticeBtn.backColor=StringConstants.label_NewPatientLabelBgColor
            praticeBtn.txtColor = StringConstants.barBackgroundColor
            patientBtn.backColor=StringConstants.testPage_unCheckBtnBgColor
            patientBtn.txtColor= StringConstants.actionBtnBackgroundColor
            reportTimeline.setState()
        }
        function patientBtnClicked()
        {
            page1.visible = false;
            if(page2.visible === false)
            {
                page2.visible = true;
            }
            //backColor=StringConstants.actionBtnBackgroundColor

            if(prevPatientBtnHeight !== 0)
            {
                patientBtn.height = prevPatientBtnHeight
                praticeBtn.height = prevPraticeBtnHeight
            }
            else
            {
                prevPatientBtnHeight =  patientBtn.height
                prevPraticeBtnHeight =  praticeBtn.height
                // prevPatientBtnWidth =  praticeBtn.width
            }
            //prevPraticeBtnHeight =  praticeBtn.height
            //////////////////////////////////praticeBtn.height = praticeBtn.height/2
            praticeBtn.height = praticeBtn.height - 10
            patientBtn.height = patientBtn.height + 3
            praticeBtn.backColor=StringConstants.testPage_unCheckBtnBgColor
            praticeBtn.txtColor=StringConstants.actionBtnBackgroundColor
            patientBtn.backColor=StringConstants.label_NewPatientLabelBgColor
            patientBtn.txtColor = StringConstants.barBackgroundColor
            mainTime.setState()
        }

        //onCurrentIndexChanged:
        ReportTabButton {
            id:praticeBtn
            text: StringConstants.lbl_rpPraticeTimeline
            width: implicitWidth
            anchors.bottom: parent.bottom
            onClicked: {
                praticeBtnClicked()
                // backColor=StringConstants.actionBtnBackgroundColor
            }

        }
        ReportTabButton {
            id:patientBtn
            text: StringConstants.lbl_rpPatientTimeline
            width: implicitWidth
            anchors.bottom: parent.bottom
            onClicked: {
                patientBtnClicked()
            }

        }

    }

    SwipeView {
        id: testview//swipeView
        anchors.fill: parent
        clip: true
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
            visible: false;
            Rectangle{
                id:contactTabPage1
                color: StringConstants.barBackgroundColor//StringConstants.headerBackgroundColor
                anchors.fill: parent
                Layout.fillHeight: true
                Layout.fillWidth: true
                //anchors.topMargin: 10
                ReportPraticeTimeline{
                    id:reportTimeline
                    anchors.fill: parent

                    Component.onCompleted: {
                        reportTimeline.popupOpen.connect(tabsPage.popupOpen)
                        reportTimeline.popupInvokeIndex.connect(tabsPage.setCurrentIndex)
                        reportTimeline.popupInvokeSource.connect(tabsPage.popupInvokeSource)
                        reportTimeline.btn1Clicked.connect(tabsPage.btn1Clicked)
                        reportTimeline.btn2Clicked.connect(tabsPage.btn2Clicked)
                        reportTimeline.btn3Clicked.connect(tabsPage.btn3Clicked)
                        reportTimeline.btn4Clicked.connect(tabsPage.btn4Clicked)
                        reportTimeline.btn5Clicked.connect(tabsPage.btn5Clicked)
                        reportTimeline.btn6Clicked.connect(tabsPage.btn6Clicked)
                    }
                }
            }
            onVisibleChanged: {
                bar.praticeBtnClicked()
            }
        }
        Page {
            id: page2
            visible: false;
            Rectangle{
                id:medicaltTabPage
                color: StringConstants.headerBackgroundColor
                anchors.fill: parent
                Layout.fillHeight: true
                Layout.fillWidth: true
                //anchors.topMargin: 10


                ReportPatientTimeline{
                    id:mainTime
                    anchors.fill: parent
                    searchVisible:true
                    pageHeaderVisible: true
                    Component.onCompleted: {
                        mainTime.popupOpen.connect(tabsPage.popupOpen)
                        mainTime.popupInvokeIndex.connect(tabsPage.setCurrentIndex)
                        mainTime.popupInvokeSource.connect(tabsPage.popupInvokeSource)
                        mainTime.btn1Clicked.connect(tabsPage.btn1Clicked)
                        mainTime.btn2Clicked.connect(tabsPage.btn2Clicked)
                        mainTime.btn3Clicked.connect(tabsPage.btn3Clicked)
                        mainTime.btn4Clicked.connect(tabsPage.btn4Clicked)
                        mainTime.btn5Clicked.connect(tabsPage.btn5Clicked)
                        mainTime.btn6Clicked.connect(tabsPage.btn6Clicked)
                    }
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
    Component.onCompleted: {
        page1.visible = true
    }
}
