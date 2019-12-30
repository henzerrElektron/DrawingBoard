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
   \qmltype TestTabs
   \brief A Component that contains various tabs in the test page for result section

  This Component contains pages for results ,notes and supplementation

   \image tobeprovided.png

   \section1 Sample usage

   To display result , notes and supplementation tabs
   \qml
                    TestTabs{
                        id:curTestTabs
                        anchors.fill: parent
                    }
   \endqml

*/
Page {
    id: tabsPage
    objectName: StringConstants.objectName_testTabs
    anchors.fill: parent
    Layout.fillHeight: true
    Layout.fillWidth: true
    anchors.topMargin: 10
    property int prevResultBtnHeight: 0
    property int prevNotesBtnHeight: 0
    property int prevSupplementationBtnHeight: 0
    //    property alias tabCurrentIndex: bar.currentIndex
    //    onVisibleChanged: {
    //        if(visibile === true)
    //        {
    //            bar.checkIndex(tabCurrentIndex)
    //        }
    //    }

    header:  TabBar {
        id: bar
        width: parent.width
        currentIndex: testview.currentIndex
        Material.accent:"transparent"
        background: Rectangle {
            color:StringConstants.barBackgroundColor//StringConstants.barBackgroundColor
            //border.width: 2
            //border.color: StringConstants.barBackgroundColor
            //            CommonBorder
            //            {
            //                customBorder:  false
            //                lBorderWidth: 0
            //                rBorderWidth: 0
            //                tBorderWidth: 0
            //                bBorderWidth: 2
            //                borderColor: StringConstants.barBorderColor
            //            }
        }
        //currentIndex: swipeView.currentIndex
        onCurrentIndexChanged: {
            checkIndex(currentIndex)
        }
        //onCurrentIndexChanged:
        function checkIndex(index)
        {
            if(currentIndex === 0)
            {
                resultBtnClicked()//praticeBtnClicked()
            }
            if(currentIndex === 1)
            {
                notesBtnClicked()//patientBtnClicked()
            }
            if(currentIndex === 2)
            {
                supplementationBtnClicked()
            }
        }
        function resultBtnClicked()//praticeBtnClicked()
        {
            if(page1.visible === false)
            {
                page1.visible = true;
            }
            // page2.visible = false;//rightTabBtn//bothTabBtn//leftTabBtn
            // page3.visible = false;

            if(prevResultBtnHeight !== 0)
            {
                resultBtn.height = prevResultBtnHeight
                notesBtn.height = prevNotesBtnHeight
                supplementationBtn.height = prevSupplementationBtnHeight
            }
            else
            {
                prevResultBtnHeight =   resultBtn.height
                prevNotesBtnHeight =  notesBtn.height
                prevSupplementationBtnHeight = supplementationBtn.height
            }

            supplementationBtn.height = supplementationBtn.height - 10
            notesBtn.height =  notesBtn.height - 10
            resultBtn.height =  resultBtn.height + 3
            notesBtn.backColor=StringConstants.testPage_unCheckBtnBgColor
            notesBtn.txtColor=StringConstants.actionBtnBackgroundColor
            supplementationBtn.backColor=StringConstants.testPage_unCheckBtnBgColor
            supplementationBtn.txtColor=StringConstants.actionBtnBackgroundColor
            resultBtn.backColor=StringConstants.label_NewPatientLabelBgColor
            resultBtn.txtColor=StringConstants.barBackgroundColor
            /////////////////////////////////////////////////////////reportTimeline.setState()
        }
        function  notesBtnClicked()//patientBtnClicked()
        {
            if(page2.visible === false)
            {
                page2.visible = true;
            }
            // page1.visible = false;
            // page3.visible = false;
            if(prevNotesBtnHeight !== 0)
            {
                resultBtn.height = prevResultBtnHeight
                notesBtn.height = prevNotesBtnHeight
                supplementationBtn.height = prevSupplementationBtnHeight
            }
            else
            {
                prevNotesBtnHeight =  notesBtn.height
                prevResultBtnHeight =  resultBtn.height
                prevSupplementationBtnHeight =  supplementationBtn.height
            }
            supplementationBtn.height =  supplementationBtn.height - 10
            resultBtn.height = resultBtn.height - 10
            notesBtn.height = notesBtn.height + 3
            resultBtn.backColor=StringConstants.testPage_unCheckBtnBgColor
            resultBtn.txtColor=StringConstants.actionBtnBackgroundColor
            supplementationBtn.backColor=StringConstants.testPage_unCheckBtnBgColor
            supplementationBtn.txtColor=StringConstants.actionBtnBackgroundColor
            notesBtn.backColor=StringConstants.label_NewPatientLabelBgColor
            notesBtn.txtColor=StringConstants.barBackgroundColor
            ///////////////////////////////////mainTime.setState()
        }

        function supplementationBtnClicked()
        {

            if(page3.visible === false)
            {
                page3.visible = true;
            }
            // page1.visible = false;
            // page2.visible = false;
            if(prevSupplementationBtnHeight !== 0)
            {
                resultBtn.height = prevResultBtnHeight
                notesBtn.height = prevNotesBtnHeight
                supplementationBtn.height = prevSupplementationBtnHeight
            }
            else{
                prevSupplementationBtnHeight =  supplementationBtn.height
                prevReportBtnHeight =  notesBtn.height
                prevResultBtnHeight =  resultBtn.height
            }

            resultBtn.height = resultBtn.height - 10
            notesBtn.height = notesBtn.height -10
            supplementationBtn.height =  supplementationBtn.height +3
            resultBtn.backColor = StringConstants.testPage_unCheckBtnBgColor
            resultBtn.txtColor = StringConstants.actionBtnBackgroundColor
            notesBtn.backColor = StringConstants.testPage_unCheckBtnBgColor
            notesBtn.txtColor = StringConstants.actionBtnBackgroundColor
            supplementationBtn.backColor = StringConstants.label_NewPatientLabelBgColor
            supplementationBtn.txtColor = StringConstants.barBackgroundColor
        }
        ReportTabButton {
            id:resultBtn
            width:  bar.width/3//implicitWidth
            anchors.bottom: parent.bottom
            text: StringConstants.lbl_testTabResultBtn//qsTr("Results")
            onClicked: {
                resultBtnClicked()
                //                page1.visible = true;
                //                page2.visible = false;
                //                page3.visible = false;
            }
        }
        ReportTabButton {
            id:notesBtn
            width: bar.width/3//implicitWidth
            anchors.bottom: parent.bottom
            text: StringConstants.lbl_testTabNotesBtn//qsTr("Notes")
            onClicked: {
                notesBtnClicked()
                //page1.visible = false;
                //page2.visible = true;
                //page3.visible = false;
            }
        }
        ReportTabButton {
            id:supplementationBtn
            width:  bar.width/3//implicitWidth
            anchors.bottom: parent.bottom
            text: StringConstants.lbl_testTabSupplementationBtn//qsTr("Supplementation")
            onClicked: {
                supplementationBtnClicked()
                //page1.visible = false;
                //page2.visible = false;
                //page3.visible = true;
            }
        }
    }

    SwipeView {
        id: testview
        anchors.fill: parent
        anchors.left: bar.right
        anchors.right: bar.left
        //swipeView
        //initialItem: page1//bar.currentIndex
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
            visible: false;

            //anchors.fill: parent
            //ResultTableGrid {
            ResultCommonTableGrids{
                id: resultGrid
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                //anchors.fill: parent
                //width: parent.width
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
            onVisibleChanged: {
                bar.resultBtnClicked()
            }
            //            XYPlot{
            //                id:xyplotgrid
            //                //width: 500
            //                //height: 500
            //                anchors.fill: parent
            //                //anchors.left: rectangle1.left
            //                //anchors.right: rectangle2.left
            //                //anchors.top: rectangle1.top
            //                //anchors.bottom: rectangle1.bottom
            //            }
            //           background: Rectangle { color: "yellow" }
            //            Label {
            //                text: "Page1"
            //            }
        }

        Page {
            id: page2
            visible: true;
            TestPageNotesTabPage{
                id:notesTabPage
                anchors.fill: parent
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            //           background: Rectangle { color: "lightGreen" }
            //            Label {
            //                text: "Page2"
            //            }


        }

        Page {
            id: page3
            visible: true;
            TestPageSupplementTabPage{
                id: supplementTab
                anchors.fill: parent
                //width: parent.width
                Layout.fillHeight: true
                Layout.fillWidth: true
            }

            //background: Rectangle { color: "magenta" }
            //            Label {
            //                text: "Page3"
            //            }
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
    Component.onDestruction: { cleanup()    }
    function init() { console.log("INIT "+Component.objectName)    }
    function cleanup() {  console.log("CLEANUP "+Component.objectName) }
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
