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
    property bool testOrReport: false//true = test false = report
    property string testOrReportFooter: testOrReport? StringConstants.label_testTempFrequency:StringConstants.label_testMPvalue//
    cellWidth: gridRowView.width/2; cellHeight: gridRowView.height/(testOrReport?IntegerConstants.numGridRow:IntegerConstants.numReportGridRow)

    XYRowFooter {
        id: footerItem
    }
    XYRowDelegate {
        id: rowDelegate

    }
    XYReportRowDelegate{
        id:reportRowDelegate
    }

    model: testOrReport?IntegerConstants.numGridRow*1:IntegerConstants.numReportGridRow*1
    delegate:testOrReport?rowDelegate:reportRowDelegate//rowDelegate
}
