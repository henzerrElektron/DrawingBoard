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
    id: gridColView
    //rotation: 180
    //rows: 1
    //columns: numGridCol
    property alias crossColCellWidth: gridColView.cellWidth
    property alias crossColCellHeight: gridColView.cellHeight
    property alias crossColModel: gridColView.model
    cellWidth: gridColView.width/(IntegerConstants.numGridCol); cellHeight: gridColView.height/2
    footer: footerItem1


    XYColFooter {
        id: footerItem1
    }

    XYColDelegate {
        id: colDelegate
        //colWidth:gridColView.width/IntegerConstants/numGridCol
        //colHeight: gridColView.height/2
    }
    model: 1*IntegerConstants.numGridCol
    delegate: colDelegate
}
