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
import "./../../images/"
import "./../../delegates/"
import "./../../models/"
import "./../test/"
import ApplicationConstants 1.0

SwipeView {
    id: spView//swipeView
    anchors.fill: parent
    //initialItem: page1//bar.currentIndex
    currentIndex: 0//bar.currentIndex
    Component.onCompleted: {
        console.log("The item count is"+spView.view.count)
    }

    function setCurrentIndex(index)
    {
        if(index === 1)//homePage
        {
            currentIndex = 0
        }

        if(index === 6)//testpage
        {
            currentIndex = 3
        }
        if(index === 7)//NewPatient
        {
            currentIndex = 1
        }

        if(index === 9)//viewpatientReport
        {
            currentIndex = 4
        }
        if((index === 4)||(index === 8))//changePatient
        {
            currentIndex = 2
        }

        // spView.currentIndex = index
    }

    onCurrentIndexChanged: {
        itemAt(currentIndex).visible = true

    }

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
        id: page0
        visible: true;
        HomePage{
            id:homePage
            anchors.fill: parent
            Layout.fillHeight: true
            Layout.fillWidth: true
            Component.onCompleted: {
                invokeIndex.connect(spView.setCurrentIndex)
            }
            onInvokeIndex: {
                console.log("Invoke index changed"+currentIndex)
            }
        }
    }
    Page {
        id: page1
        visible: false;
        NewPatientPage{
            id:patientPage1
            anchors.fill: parent
            Layout.fillHeight: true
            Layout.fillWidth: true
            Component.onCompleted: {
                patientPage1.invokeIndex.connect(spView.setCurrentIndex)
            }
        }
    }
    Page {
        id: page2
        visible: false;
        SwitchPatient{
            id:switchPatientPage
            anchors.fill: parent
            Layout.fillHeight: true
            Layout.fillWidth: true
            Component.onCompleted: {
                switchPatientPage.invokeIndex.connect(spView.setCurrentIndex)
            }
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
        TestPage{
            id:testPatientPage
            anchors.fill: parent
            Layout.fillHeight: true
            Layout.fillWidth: true
            Component.onCompleted: {
                testPatientPage.invokeIndex.connect(spView.setCurrentIndex)
            }
        }

        //           background: Rectangle { color: "lightGreen" }
        //            Label {
        //                text: "Page2"
        //            }


    }



    //           background: Rectangle { color: "lightGreen" }
    //            Label {
    //                text: "Page2"
    //            }


    //}

    Page {
        id: page4
        visible: false;
        ReportPage{
            id: reportPg
            anchors.fill: parent
            //width: parent.width
            Layout.fillHeight: true
            Layout.fillWidth: true
            Component.onCompleted: {
                reportPg.invokeIndex.connect(spView.setCurrentIndex)
            }
        }

        //background: Rectangle { color: "magenta" }
        //            Label {
        //                text: "Page3"
        //            }
    }
}
