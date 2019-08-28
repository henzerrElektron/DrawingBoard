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
import Qt.labs.settings 1.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Shapes 1.11
import "."
import "./../../images/"
import "./../../delegates/"
import "./../../models/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
GridView {
    id: gridRowView
    Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
    footer: footerItem
    cellWidth: gridRowView.width/2; cellHeight: gridRowView.height/IntegerConstants.numGridRow
    XYRowFooter {
        id: footerItem
    }
    XYRowDelegate {
        id: rowDelegate
    }
    model: IntegerConstants.numGridRow*1
    delegate:rowDelegate
}
