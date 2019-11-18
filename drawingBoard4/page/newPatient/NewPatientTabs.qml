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
import "./../../images/"
import "./../../delegates/"
import "./../../models/"
import "./../test/"
import "./../../common/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0

Page {
    id: tabsPage
    anchors.fill: parent
    Layout.fillHeight: true
    Layout.fillWidth: true
    property int prevBtn1Height: 0
    property int prevBtn2Height: 0
    property int prevBtn3Height: 0
    property int prevBtn4Height: 0
    property int prevBtn5Height: 0
    property int prevBtn6Height: 0

    header:  TabBar {
        id: bar
        width: parent.width
        currentIndex: testview.currentIndex
        Material.accent:"transparent"//Material.Grey//StringConstants.barBorderColor//Material.color
        background: Rectangle {
            color: StringConstants.barBackgroundColor//StringConstants.headerBackgroundColor
            //border.width: 2
            //border.color: StringConstants.barBackgroundColor
//            CommonBorder
//            {
//                customBorder:  false
//                lBorderWidth: 0
//                rBorderWidth: 0
//                tBorderWidth: 0
//                bBorderWidth: 10
//                borderColor: StringConstants.barBorderColor//label_NewPatientLabelBgColor//StringConstants.barBorderColor
//            }
        }
        onCurrentIndexChanged: {
            if(currentIndex === 0)
            {
                btn1Clicked()
            }
            if(currentIndex === 1)
            {
                btn2Clicked()
            }
            if(currentIndex === 2)
            {
                btn3Clicked()
            }
//            if(currentIndex === 3)
//            {
//                btn4Clicked()
//            }
            if(currentIndex === 3)
            {
                btn5Clicked()
            }
            if(currentIndex === 4)
            {
                btn6Clicked()
            }
            //            if(currentIndex === 6)
            //            {
            //                btn7Clicked()
            //            }
        }
        function btn1Clicked()
        {
            if(page1.visible === false)
            {
                page1.visible = true;
            }
            page2.visible = false;
            page3.visible = false;
            //page4.visible = false;
            page5.visible = false;
            page6.visible = false;

            if(prevBtn1Height !== 0)
            {
                btn1.height = prevBtn1Height
                btn2.height = prevBtn2Height
                btn3.height = prevBtn3Height
                //btn4.height = prevBtn4Height
                btn5.height =  prevBtn5Height
                btn6.height = prevBtn6Height
            }
            else
            {
                prevBtn1Height=  btn1.height
                prevBtn2Height=  btn2.height
                prevBtn3Height=  btn3.height
                //prevBtn4Height=  btn4.height
                prevBtn5Height=  btn5.height
                prevBtn6Height=  btn6.height
            }
            btn1.height = btn1.height + 3
            btn2.height = btn2.height - 10
            btn3.height = btn3.height - 10
            //btn4.height = btn4.height - 10
            btn5.height = btn5.height - 10
            btn6.height = btn6.height - 10
            btn1.backColor = StringConstants.label_NewPatientLabelBgColor
            btn1.txtColor = StringConstants.barBackgroundColor
            btn6.backColor= StringConstants.testPage_unCheckBtnBgColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            btn2.backColor=StringConstants.testPage_unCheckBtnBgColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            btn3.backColor=StringConstants.testPage_unCheckBtnBgColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            //btn4.backColor=StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            btn5.backColor=StringConstants.testPage_unCheckBtnBgColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor

            btn6.txtColor= StringConstants.tabContrastColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            btn2.txtColor=StringConstants.tabContrastColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            btn3.txtColor=StringConstants.tabContrastColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            //btn4.backColor=StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            btn5.txtColor=StringConstants.tabContrastColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
        }
        function btn2Clicked()
        {
            page1.visible = false;
            if(page2.visible === false)
            {
                page2.visible = true;
            }
            page3.visible = false;
            //page4.visible = false;
            page5.visible = false;
            page6.visible = false;

            if(prevBtn2Height !== 0)
            {
                btn1.height = prevBtn1Height
                btn2.height = prevBtn2Height
                btn3.height = prevBtn3Height
                //btn4.height = prevBtn4Height
                btn5.height =  prevBtn5Height
                btn6.height = prevBtn6Height
            }
            else
            {
                prevBtn1Height=  btn1.height
                prevBtn2Height=  btn2.height
                prevBtn3Height=  btn3.height
                //prevBtn4Height=  btn4.height
                prevBtn5Height=  btn5.height
                prevBtn6Height=  btn6.height
            }
            btn2.height = btn2.height + 3
            btn1.height = btn1.height - 10
            btn3.height = btn3.height - 10
            //btn4.height = btn4.height - 10
            btn5.height = btn5.height - 10
            btn6.height = btn6.height - 10
            btn6.backColor= StringConstants.testPage_unCheckBtnBgColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            btn2.backColor = StringConstants.label_NewPatientLabelBgColor//StringConstants.label_NewPatientLabelBgColor//StringConstants.actionBtnBackgroundColor
            btn1.backColor=StringConstants.testPage_unCheckBtnBgColor//StringConstants.testPage_backgroundColor////StringConstants.label_NewPatientLabelBgColor
            btn3.backColor=StringConstants.testPage_unCheckBtnBgColor//StringConstants.testPage_backgroundColor///StringConstants.label_NewPatientLabelBgColor
            //btn4.backColor=StringConstants.testPage_backgroundColor////StringConstants.label_NewPatientLabelBgColor
            btn5.backColor=StringConstants.testPage_unCheckBtnBgColor//StringConstants.testPage_backgroundColor////StringConstants.label_NewPatientLabelBgColor



            btn2.txtColor =StringConstants.tabContrastColor //StringConstants.label_NewPatientLabelBgColor//StringConstants.actionBtnBackgroundColor
            btn1.txtColor=StringConstants.tabContrastColor//StringConstants.testPage_backgroundColor////StringConstants.label_NewPatientLabelBgColor
            btn3.txtColor=StringConstants.tabContrastColor//StringConstants.testPage_backgroundColor///StringConstants.label_NewPatientLabelBgColor
            //btn4.backColor=StringConstants.testPage_backgroundColor////StringConstants.label_NewPatientLabelBgColor
            btn5.txtColor=StringConstants.tabContrastColor//StringConstants.testPage_backgroundColor////StringConstants.label_NewPatientLabelBgColor
        }
        function btn3Clicked()
        {
            page1.visible = false;
            page2.visible = false;
            if(page3.visible === false)
            {
                page3.visible = true;
            }
            //page4.visible = false;
            page5.visible = false;
            page6.visible = false;

            if(prevBtn3Height !== 0)
            {
                btn1.height = prevBtn1Height
                btn2.height = prevBtn2Height
                btn3.height = prevBtn3Height
                //btn4.height = prevBtn4Height
                btn5.height =  prevBtn5Height
                btn6.height = prevBtn6Height
            }
            else
            {
                prevBtn1Height=  btn1.height
                prevBtn2Height=  btn2.height
                prevBtn3Height=  btn3.height
                //prevBtn4Height=  btn4.height
                prevBtn5Height=  btn5.height
                prevBtn6Height=  btn6.height
            }
            btn3.height = btn3.height + 3
            btn1.height = btn1.height - 10
            btn2.height = btn2.height - 10
            //btn4.height = btn4.height - 10
            btn5.height = btn5.height - 10
            btn6.height = btn6.height - 10
           //btn4.backColor=StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            btn3.backColor = StringConstants.label_NewPatientLabelBgColor//StringConstants.actionBtnBackgroundColor
            btn6.backColor= StringConstants.testPage_unCheckBtnBgColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            btn1.backColor=StringConstants.testPage_unCheckBtnBgColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            btn2.backColor=StringConstants.testPage_unCheckBtnBgColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            btn5.backColor=StringConstants.testPage_unCheckBtnBgColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor

            btn6.txtColor= StringConstants.tabContrastColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            btn1.txtColor=StringConstants.tabContrastColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            btn2.txtColor=StringConstants.tabContrastColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            btn5.txtColor=StringConstants.tabContrastColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
        }
//        function btn4Clicked()
//        {
//            page1.visible = false;
//            page2.visible = false;
//            page3.visible = false;
//            if(page4.visible === false)
//            {
//                page4.visible = true;
//            }
//            page5.visible = false;
//            page6.visible = false;

//            if(prevBtn4Height !== 0)
//            {
//                btn1.height = prevBtn1Height
//                btn2.height = prevBtn2Height
//                btn3.height = prevBtn3Height
//                btn4.height = prevBtn4Height
//                btn5.height =  prevBtn5Height
//                btn6.height = prevBtn6Height
//            }
//            else
//            {
//                prevBtn1Height=  btn1.height
//                prevBtn2Height=  btn2.height
//                prevBtn3Height=  btn3.height
//                prevBtn4Height=  btn4.height
//                prevBtn5Height=  btn5.height
//                prevBtn6Height=  btn6.height
//            }
//            btn4.height = btn4.height + 3
//            btn1.height = btn1.height - 10
//            btn2.height = btn2.height - 10
//            btn3.height = btn3.height - 10
//            btn5.height = btn5.height - 10
//            btn6.height = btn6.height - 10
//            btn6.backColor= StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
//            btn4.backColor = StringConstants.label_NewPatientLabelBgColor//StringConstants.label_NewPatientLabelBgColor
//            btn1.backColor= StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
//            btn2.backColor= StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
//            btn3.backColor= StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
//            btn5.backColor= StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
//        }
        function btn5Clicked()
        {
            page1.visible = false;
            page2.visible = false;
            page3.visible = false;
            //page4.visible = false;
            if(page5.visible === false)
            {
                page5.visible = true;
            }
            page6.visible = false;

            if(prevBtn5Height !== 0)
            {
                btn1.height = prevBtn1Height
                btn2.height = prevBtn2Height
                btn3.height = prevBtn3Height
                //btn4.height = prevBtn4Height
                btn5.height =  prevBtn5Height
                btn6.height = prevBtn6Height
            }
            else
            {
                prevBtn1Height=  btn1.height
                prevBtn2Height=  btn2.height
                prevBtn3Height=  btn3.height
                //prevBtn4Height=  btn4.height
                prevBtn5Height=  btn5.height
                prevBtn6Height=  btn6.height
            }
            btn5.height = btn5.height + 3
            btn1.height = btn1.height - 10
            btn2.height = btn2.height - 10
            btn3.height = btn3.height - 10
            //btn4.height = btn4.height - 10
            btn6.height = btn6.height - 10
            btn5.backColor = StringConstants.label_NewPatientLabelBgColor//StringConstants.actionBtnBackgroundColor

            btn6.backColor=  StringConstants.testPage_unCheckBtnBgColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            btn1.backColor= StringConstants.testPage_unCheckBtnBgColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            btn2.backColor= StringConstants.testPage_unCheckBtnBgColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            btn3.backColor= StringConstants.testPage_unCheckBtnBgColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor


            btn6.txtColor=  StringConstants.tabContrastColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            btn1.txtColor= StringConstants.tabContrastColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            btn2.txtColor= StringConstants.tabContrastColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            btn3.txtColor= StringConstants.tabContrastColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            //btn4.backColor= StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
        }
        function btn6Clicked()
        {
            page1.visible = false;
            page2.visible = false;
            page3.visible = false;
            //page4.visible = false;
            page5.visible = false;
            if(page6.visible === false)
            {
                page6.visible = true;
            }

            if(prevBtn5Height !== 0)
            {
                btn1.height = prevBtn1Height
                btn2.height = prevBtn2Height
                btn3.height = prevBtn3Height
                //btn4.height = prevBtn4Height
                btn5.height =  prevBtn5Height
                btn6.height = prevBtn6Height
            }
            else
            {
                prevBtn1Height=  btn1.height
                prevBtn2Height=  btn2.height
                prevBtn3Height=  btn3.height
                //prevBtn4Height=  btn4.height
                prevBtn5Height=  btn5.height
                prevBtn6Height=  btn6.height
            }
            btn6.height = btn6.height + 3
            btn1.height = btn1.height - 10
            btn2.height = btn2.height - 10
            btn3.height = btn3.height - 10
            //btn4.height = btn4.height - 10
            btn5.height = btn5.height - 10
            btn6.backColor = StringConstants.label_NewPatientLabelBgColor//StringConstants.actionBtnBackgroundColor
            btn5.backColor= StringConstants.testPage_unCheckBtnBgColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            btn1.backColor= StringConstants.testPage_unCheckBtnBgColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            btn2.backColor= StringConstants.testPage_unCheckBtnBgColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            btn3.backColor= StringConstants.testPage_unCheckBtnBgColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            btn5.txtColor= StringConstants.tabContrastColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            btn1.txtColor= StringConstants.tabContrastColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            btn2.txtColor= StringConstants.tabContrastColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            btn3.txtColor= StringConstants.tabContrastColor//StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
            //btn4.backColor= StringConstants.testPage_backgroundColor//StringConstants.label_NewPatientLabelBgColor
        }
        //        function btn7Clicked()
        //        {
        //            page1.visible = false;
        //            page2.visible = false;
        //            page3.visible = false;
        //            page4.visible = false;
        //            page5.visible = false;
        //            page6.visible = false;
        //            if(page7.visible === false)
        //            {
        //                page7.visible = true;
        //            }
        //            btn7.backColor = StringConstants.actionBtnBackgroundColor
        //            btn5.backColor=StringConstants.label_NewPatientLabelBgColor
        //            btn5.backColor=StringConstants.label_NewPatientLabelBgColor
        //            btn1.backColor=StringConstants.label_NewPatientLabelBgColor
        //            btn2.backColor=StringConstants.label_NewPatientLabelBgColor
        //            btn3.backColor=StringConstants.label_NewPatientLabelBgColor
        //            btn4.backColor=StringConstants.label_NewPatientLabelBgColor
        //        }


        //onCurrentIndexChanged:
        ReportTabButton {
            id:btn1
            width: implicitWidth
            anchors.bottom: parent.bottom
            text: StringConstants.lbl_npContactDetails//qsTr("Contact Details")
            onClicked: {
                btn1Clicked()
            }
        }
        ReportTabButton {
            id:btn2
            width: implicitWidth
            anchors.bottom: parent.bottom
            text: StringConstants.lbl_medicalDetails//qsTr("Medical Details")
            onClicked: {
                btn2Clicked()

            }
        }
        ReportTabButton {
            id:btn3
            width: implicitWidth
            anchors.bottom: parent.bottom
            text: StringConstants.lbl_riskFactors//qsTr("Risk Factors")
            onClicked: {
                btn3Clicked()

            }
        }
//        ReportTabButton {
//            id:btn4
//            width: implicitWidth
//            anchors.bottom: parent.bottom
//            text: StringConstants.lbl_otherRiskFactors//qsTr("Notes")
//            onClicked: {
//                btn4Clicked()

//            }
//        }
        ReportTabButton {
            id:btn5
            width: implicitWidth
            anchors.bottom: parent.bottom
            text: StringConstants.lbl_notes//qsTr("Supplementation")
            onClicked: {
                btn5Clicked()
            }
        }
        ReportTabButton {
            id:btn6
            width: implicitWidth
            anchors.bottom: parent.bottom
            text: StringConstants.lbl_supplementation//qsTr("Supplementation")
            onClicked: {
                btn6Clicked()
            }
        }
        //        ReportTabButton {
        //            id:btn7
        //            text: StringConstants.lbl_supplementation//qsTr("Supplementation")
        //            onClicked: {
        //                btn7Clicked()
        //            }
        //        }
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
            NewPatientContactDetails{
                id:contactTabPage1
                anchors.fill: parent
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
            onVisibleChanged: {
                bar.btn1Clicked()
            }
        }
        Page {
            id: page2
            visible: false;
            NewPatientMedicalDetails{
                id:medicaltTabPage
                anchors.fill: parent
                Layout.fillHeight: true
                Layout.fillWidth: true
            }
        }
        //anchors.fill: parent
        //            ResultTableGrid {
        //                id: resultGrid
        //                anchors.left: parent.left
        //                anchors.right: parent.right
        //                //anchors.fill: parent
        //                //width: parent.width
        //                Layout.fillHeight: true
        //                Layout.fillWidth: true
        //            }
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
        //}

        Page {
            id: page3
            visible: false;
            NewPatientRiskFactors{
                id:recommendTabPage
                anchors.fill: parent
                Layout.fillHeight: true
                Layout.fillWidth: true
            }


            //           background: Rectangle { color: "lightGreen" }
            //            Label {
            //                text: "Page2"
            //            }


        }
//        Page{
//            id:page4
//            visible: false
//            NewPatientMedicalRiskFactors{
//                id:medicalRiskFactors
//                anchors.fill: parent
//                Layout.fillWidth: true
//                Layout.fillHeight: true
//            }
//        }

        Page {
            id: page5
            visible: false;
            //TestPageNotesTabPage{
            NewPatientNotes{
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
            id: page6
            visible: false;
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
}
