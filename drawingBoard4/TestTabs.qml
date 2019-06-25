import QtQuick 2.3
import QtQuick.Templates 2.5
import QtQuick.Controls 2.3
import QtQuick.Extras 1.4
import QtQuick.Window 2.10
import QtQuick.Layouts 1.3

Page {
    id: tabsPage
    header:  TabBar {
        id: bar
        width: parent.width
        currentIndex: swipeView.currentIndex
        TabButton {
            text: qsTr("ResultsButton")
        }
        TabButton {
            text: qsTr("NotesButton")
        }
        TabButton {
            text: qsTr("SupplementationButton")
        }
    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: bar.currentIndex
        Item {
            id: homeTab
        }
        Item {
            id: discoverTab
        }
        Item {
            id: activityTab
        }
    }


}

















/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
