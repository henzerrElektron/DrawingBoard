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
import ApplicationConstants 1.0
import "./../../common/"
import "./../reports/"
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
Page {
    id: tabsPage
    anchors.fill: parent
    Layout.fillHeight: true
    Layout.fillWidth: true
    Layout.topMargin: 10
    Layout.bottomMargin: 10
    Layout.leftMargin: 10
    Layout.rightMargin: 10
    property int prevTestBtnHeight: 0
    property int prevReportBtnHeight: 0
    property int prevTimelineBtnHeight: 0
    property alias tabCurrentIndex: bar.currentIndex
    onVisibleChanged: {
        if(visible === true)
        {
            bar.checkIndex(tabCurrentIndex)
        }
    }
    header:  TabBar {
        id: bar
        width: parent.width
        currentIndex: swipeView.currentIndex
        Material.accent:"transparent"
        background: Rectangle {
            anchors.fill: parent
            color: StringConstants.barBackgroundColor//StringConstants.headerBackgroundColor
            //border.width: 2
            //border.color: StringConstants.barBackgroundColor
            CommonBorder
            {
                anchors.fill: parent
                anchors.leftMargin: 25
                anchors.rightMargin: 25
                customBorder:  false
                lBorderWidth: 0
                rBorderWidth: 0
                tBorderWidth: 0
                bBorderWidth: 2
                borderColor: StringConstants.barBorderColor
            }
        }
        //height: parent.height

        onCurrentIndexChanged:
        {
            checkIndex(currentIndex)
        }
        function checkIndex(index)
        {
            if(currentIndex === 0)
            {
                testBtnClicked()//praticeBtnClicked()
            }
            if(currentIndex === 1)
            {
                reportBtnClicked()//patientBtnClicked()
            }
            if(currentIndex === 2)
            {
                timelineBtnClicked()
            }
        }
        function testBtnClicked()//praticeBtnClicked()
        {
            if(page1.visible === false)
            {
                page1.visible = true;
            }
            page2.visible = false;//rightTabBtn//bothTabBtn//leftTabBtn
            page3.visible = false;

            if(prevTestBtnHeight !== 0)
            {
                testBtn.height = prevTestBtnHeight
                reportBtn.height = prevReportBtnHeight
                timelineBtn.height = prevTimelineBtnHeight
            }
            else
            {
                prevTestBtnHeight =   testBtn.height
                prevReportBtnHeight =  reportBtn.height
                prevTimelineBtnHeight = timelineBtn.height
            }

            timelineBtn.height = timelineBtn.height - 10
            reportBtn.height =  reportBtn.height - 10
            testBtn.height =  testBtn.height + 3
            reportBtn.backColor=StringConstants.testPage_unCheckBtnBgColor
            reportBtn.txtColor=StringConstants.actionBtnBackgroundColor
            timelineBtn.backColor=StringConstants.testPage_unCheckBtnBgColor
            timelineBtn.txtColor=StringConstants.actionBtnBackgroundColor
            testBtn.backColor=StringConstants.label_NewPatientLabelBgColor
            testBtn.txtColor=StringConstants.barBackgroundColor
            /////////////////////////////////////////////////////////reportTimeline.setState()
        }
        function  reportBtnClicked()//patientBtnClicked()
        {

            if(page2.visible === false)
            {
                page2.visible = true;
            }
            page1.visible = false;
            page3.visible = false;
            if(prevReportBtnHeight !== 0)
            {
                testBtn.height = prevTestBtnHeight
                reportBtn.height = prevReportBtnHeight
                timelineBtn.height = prevTimelineBtnHeight
            }
            else
            {
                prevReportBtnHeight =  reportBtn.height
                prevTestBtnHeight =  testBtn.height
                prevTimelineBtnHeight =  timelineBtn.height
            }
            timelineBtn.height =  timelineBtn.height - 10
            testBtn.height = testBtn.height - 10
            reportBtn.height = reportBtn.height + 3
            testBtn.backColor=StringConstants.testPage_unCheckBtnBgColor
            testBtn.txtColor=StringConstants.actionBtnBackgroundColor
            timelineBtn.backColor=StringConstants.testPage_unCheckBtnBgColor
            timelineBtn.txtColor=StringConstants.actionBtnBackgroundColor
            reportBtn.backColor=StringConstants.label_NewPatientLabelBgColor
            reportBtn.txtColor=StringConstants.barBackgroundColor
            ///////////////////////////////////mainTime.setState()
        }

        function  timelineBtnClicked()
        {
            if(page3.visible === false)
            {
                page3.visible = true;
            }
            page1.visible = false;
            page2.visible = false;

            if(prevTimelineBtnHeight !== 0)
            {
                testBtn.height = prevTestBtnHeight
                reportBtn.height = prevReportBtnHeight
                timelineBtn.height = prevTimelineBtnHeight
            }
            else{
                prevTimelineBtnHeight =  timelineBtn.height
                prevReportBtnHeight =  reportBtn.height
                prevTestBtnHeight =  testBtn.height
            }

            testBtn.height = testBtn.height - 10
            reportBtn.height = reportBtn.height -10
            timelineBtn.height =  timelineBtn.height +3
            testBtn.backColor = StringConstants.testPage_unCheckBtnBgColor
            testBtn.txtColor = StringConstants.actionBtnBackgroundColor
            reportBtn.backColor = StringConstants.testPage_unCheckBtnBgColor
            reportBtn.txtColor = StringConstants.actionBtnBackgroundColor
            timelineBtn.backColor = StringConstants.label_NewPatientLabelBgColor
            timelineBtn.txtColor = StringConstants.barBackgroundColor
        }
        ReportTabButton {
            id:testBtn
            width: implicitWidth
            anchors.bottom: parent.bottom
            text: StringConstants.lbl_testTabTestBtn//qsTr("Test")
            onClicked: {
                testBtnClicked()
            }
        }
        ReportTabButton {
            id:reportBtn
            width: implicitWidth
            anchors.bottom: parent.bottom
            text: StringConstants.lbl_testTabReportBtn//qsTr("Report")
            onClicked: {
                reportBtnClicked()
            }
        }
        ReportTabButton {
            id:timelineBtn
            width: implicitWidth
            anchors.bottom: parent.bottom
            text: StringConstants.lbl_testTabTimelineBtn//qsTr("Timeline")
            onClicked: {
                timelineBtnClicked
            }
        }
    }

    SwipeView {
        id: swipeView//swipeView
        anchors.fill: parent
        currentIndex: bar.currentIndex
        clip: true
        function addPage(page) {
            addItem(page)
            page.visible = true
        }

        function removePage(page) {
            for (var n = 0; n < count; n++) { if (page === itemAt(n)) { removeItem(n) } }
            page.visible = false
        }
        //        Item {
        //            id: testTab
        //        }
        //        Item {
        //            id: reportTab
        //        }
        //        Item {
        //            id: timelineTab
        //        }
        Page {
            id: page1
            visible: true;

            //anchors.fill: parent
            Rectangle{
                id:xyPlotRec
                color: StringConstants.barBackgroundColor
                anchors.fill: parent
                //                anchors.leftMargin: 25
                //                anchors.rightMargin: 25
                //                anchors.bottomMargin: 25
                //                anchors.topMargin: 25
                XYPlot{
                    id:xyplotgrid
                    //width: 500
                    //height: 500
                    anchors.fill: parent
                    anchors.leftMargin: 125
                    anchors.rightMargin: 125
                    anchors.bottomMargin: 125
                    anchors.topMargin: 125
                    //anchors.left: rectangle1.left
                    //anchors.right: rectangle2.left
                    //anchors.top: rectangle1.top
                    //anchors.bottom: rectangle1.bottom
                }
            }


            onVisibleChanged: {
                bar.praticeBtnClicked()
            }
            //           background: Rectangle { color: "yellow" }
            //            Label {
            //                text: "Page1"
            //            }
        }

        Page {
            id: page2
            visible: false;
            background: Rectangle { color: "lightGreen" }
            Label {
                text: "Page2"
            }

        }

        Page {
            id: page3
            visible: false;
            ReportPatientTimeline{
                id:mainTime
                searchVisible: false
                pageHeaderVisible:false
                anchors.fill: parent

            }

            //            background: Rectangle { color: "magenta" }
            //            Label {
            //                text: "Page3"
            //            }
        }
    }
    PageIndicator {
        id: indicator

        count: swipeView.count
        currentIndex: swipeView.currentIndex

        anchors.bottom: swipeView.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }
    Component.onCompleted: {
        page1.visible = true
    }

}











//TableView {
//    id: tableView
//  anchors.fill: parent
//  TableViewColumn {
//  role: 'city'
//  title: "City"
//  width: 120
//  }
//  TableViewColumn {
//  role: 'country'
//  title: "Country"
//  width: 120
//  }
//  TableViewColumn {
//  role: 'area'
//  title: "Area"
//  width: 80
//  }
//  TableViewColumn {
//  role: 'population'
//  title: "Population"
//  width: 80
//  }

//}





/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
