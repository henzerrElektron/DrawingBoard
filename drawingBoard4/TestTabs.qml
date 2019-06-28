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
            id: resultsTab
        }
        Item {
            id: notesTab
        }
        Item {
            id: supplementTab
        }
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
