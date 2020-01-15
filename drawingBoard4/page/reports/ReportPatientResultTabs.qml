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
/*!
   \qmltype ReportPatientResultTabs
   \brief Contains the  page that has report tabs  for Right eye,Left Eye and Both eye

  This contains patient results for right eye .
   \image tobeprovided.png

   \section1 Sample usage

   The usage of ReportPatientResultTabs is demonstrated below
   \qml
                ReportPatientResultTabs{
                    id:bothResult
                    anchors.fill: parent
                }
   \endqml

*/
Page {
    id: tabsPage
    signal popupOpen()
    signal popupInvokeIndex(int index)
    signal popupInvokeSource(var source)
    anchors.fill: parent
    Layout.fillHeight: true
    Layout.fillWidth: true
    anchors.topMargin: 5
    //anchors.leftMargin: 10
    //anchors.rightMargin: 10
    //anchors.bottomMargin: 10
    property int prevLeftBtnHeight: 0
    property int prevRightBtnHeight: 0
    property int prevBothBtnHeight: 0
    property int prevPraticeBtnWidth: 0
    property int prevPatientBtnWidth: 0
    property alias tabCurrentIndex: bar.currentIndex
    onVisibleChanged: {
      if(visible === true)
      {
          bar.checkIndex(tabCurrentIndex)
      }
    }

    //Layout.leftMargin: 10
    //Layout.rightMargin: 10
    header:  TabBar {
        id: bar
         Material.accent:"transparent"
        background: Rectangle {
            color: StringConstants.barBackgroundColor//StringConstants.headerBackgroundColor
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
            checkIndex(currentIndex)
        }
        function checkIndex(index)
        {
            if(currentIndex === 0)
            {
                leftBtnClicked()//praticeBtnClicked()
            }
            if(currentIndex === 1)
            {
                rightBtnClicked()//patientBtnClicked()
            }
            if(currentIndex === 2)
            {
                bothBtnClicked()
            }
        }

        function leftBtnClicked()//praticeBtnClicked()
        {

            page2.visible = false;//rightTabBtn//bothTabBtn//leftTabBtn
            page3.visible = false;
            if(page1.visible === false)
            {
                page1.visible = true;
            }
            rightTabBtn.backColor=StringConstants.testPage_unCheckBtnBgColor
            bothTabBtn.backColor=StringConstants.testPage_unCheckBtnBgColor
            rightTabBtn.txtColor=StringConstants.actionBtnBackgroundColor
            bothTabBtn.txtColor=StringConstants.actionBtnBackgroundColor
            leftTabBtn.backColor=StringConstants.label_NewPatientLabelBgColor
            leftTabBtn.txtColor=StringConstants.barBackgroundColor
            if(prevLeftBtnHeight !== 0)
            {
                leftTabBtn.height = prevLeftBtnHeight
                rightTabBtn.height = prevRightBtnHeight
                bothTabBtn.height = prevBothBtnHeight
            }
            else
            {
                prevLeftBtnHeight =  leftTabBtn.height
                prevRightBtnHeight =  rightTabBtn.height
                prevBothBtnHeight = bothTabBtn.height
            }

            bothTabBtn.height = bothTabBtn.height - 10
            rightTabBtn.height = rightTabBtn.height - 10
            leftTabBtn.height = leftTabBtn.height + 3
            /////////////////////////////////////////////////////////reportTimeline.setState()
        }
        function rightBtnClicked()//patientBtnClicked()
        {


            page1.visible = false;
            page3.visible = false;
            if(page2.visible === false)
            {
                page2.visible = true;
            }
            leftTabBtn.backColor=StringConstants.testPage_unCheckBtnBgColor
            bothTabBtn.backColor=StringConstants.testPage_unCheckBtnBgColor
            leftTabBtn.txtColor=StringConstants.actionBtnBackgroundColor
            bothTabBtn.txtColor=StringConstants.actionBtnBackgroundColor
            rightTabBtn.backColor=StringConstants.label_NewPatientLabelBgColor
            rightTabBtn.txtColor=StringConstants.barBackgroundColor
            if(prevRightBtnHeight !== 0)
            {
                leftTabBtn.height = prevLeftBtnHeight
                rightTabBtn.height = prevRightBtnHeight
                bothTabBtn.height = prevBothBtnHeight
            }
            else
            {
                prevRightBtnHeight =  rightTabBtn.height
                prevLeftBtnHeight =  leftTabBtn.height
                prevBothBtnHeight = bothTabBtn.height
            }
            bothTabBtn.height = bothTabBtn.height - 10
            leftTabBtn.height = leftTabBtn.height - 10
            rightTabBtn.height = rightTabBtn.height + 3
            ///////////////////////////////////mainTime.setState()
        }

        function bothBtnClicked()
        {

            page1.visible = false;
            page2.visible = false;
            if(page3.visible === false)
            {
                page3.visible = true;
            }
            leftTabBtn.backColor = StringConstants.testPage_unCheckBtnBgColor
            rightTabBtn.backColor = StringConstants.testPage_unCheckBtnBgColor
            leftTabBtn.txtColor = StringConstants.actionBtnBackgroundColor
            rightTabBtn.txtColor = StringConstants.actionBtnBackgroundColor
            bothTabBtn.backColor = StringConstants.label_NewPatientLabelBgColor
            bothTabBtn.backColor = StringConstants.barBackgroundColor
            if(prevBothBtnHeight !== 0)
            {
                leftTabBtn.height = prevLeftBtnHeight
                rightTabBtn.height = prevRightBtnHeight
                bothTabBtn.height = prevBothBtnHeight
            }
            else{
                prevBothBtnHeight = bothTabBtn.height
                prevRightBtnHeight =  rightTabBtn.height
                prevLeftBtnHeight =  leftTabBtn.height
            }

            leftTabBtn.height = leftTabBtn.height - 10
            rightTabBtn.height = rightTabBtn.height -10
            bothTabBtn.height = bothTabBtn.height +3
        }

        //onCurrentIndexChanged:
        ReportTabButton {
            id:leftTabBtn
            text: StringConstants.lbl_leftEyeResults
            width: implicitWidth
            anchors.bottom: parent.bottom
            onClicked: {
                leftBtnClicked()
                //praticeBtnClicked()
                // backColor=StringConstants.actionBtnBackgroundColor
            }

        }
        ReportTabButton {
            id:rightTabBtn
            text: StringConstants.lbl_righEyeResults
            width: implicitWidth
            anchors.bottom: parent.bottom
            onClicked: {
               rightBtnClicked()
            }

        }
        ReportTabButton {
            id:bothTabBtn
            text: StringConstants.lbl_bothEyeResults
            width: implicitWidth
            anchors.bottom: parent.bottom
            onClicked: {
                bothBtnClicked()
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
                id:leftResultTabPage
                color: StringConstants.headerBackgroundColor
                anchors.fill: parent
                Layout.fillHeight: true
                Layout.fillWidth: true
                //anchors.topMargin: 10
                ReportPatientLeftResult{
                    id:leftResult
                    anchors.fill: parent
                }
            }
            onVisibleChanged: {
                bar.leftBtnClicked()
            }
        }
        Page {
            id: page2
            visible: false;
            Rectangle{
                id:rightResultTabPage
                color: StringConstants.headerBackgroundColor
                anchors.fill: parent
                Layout.fillHeight: true
                Layout.fillWidth: true
                //anchors.topMargin: 10
                ReportPatientRightResult{
                    id:rightResult
                    anchors.fill: parent
                }
            }
        }
        Page{
            id:page3
            visible: false
            Rectangle{
                id:bothResultTabPage
                color:StringConstants.headerBackgroundColor
                anchors.fill: parent
                Layout.fillWidth: true
                Layout.fillHeight: true
                ReportPatientBothResult{
                    id:bothResult
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
    Component.onCompleted: {
        page1.visible = true
    }
}