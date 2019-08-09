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
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
Page {
    id: tabsPage
    anchors.fill: parent
    Layout.fillHeight: true
    Layout.fillWidth: true
    header:  TabBar {
        id: bar
        width: parent.width
        currentIndex: swipeView.currentIndex
        //onCurrentIndexChanged:
        TabButton {
            text: qsTr("Results")
            onClicked: {page1.visible = true;
            page2.visible = false;
            page3.visible = false;}
        }
        TabButton {
            text: qsTr("Notes")
            onClicked: {page1.visible = false;
            page2.visible = true;
            page3.visible = false;}
        }
        TabButton {
            text: qsTr("Supplementation")
            onClicked: {page1.visible = false;
            page2.visible = false;
            page3.visible = true;}
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
            ResultTableGrid {
                id: resultGrid
                anchors.left: parent.left
                anchors.right: parent.right
                //anchors.fill: parent
                //width: parent.width
                Layout.fillHeight: true
                Layout.fillWidth: true
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
