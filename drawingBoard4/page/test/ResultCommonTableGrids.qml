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
import "./../../tables/"
Rectangle{
    id:rectangle2
    color: StringConstants.testPage_backgroundColor//"transparent"
    anchors.fill: parent
    GridLayout {
        id: gridLayout
        anchors.fill: parent
        rows:3
        columns: 1
        Rectangle{
            id:rec1
            color: "transparent"
            Layout.row: 1
            Layout.rowSpan: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
            CommonTableGrid{
                id:row1
                anchors.fill: parent
                searchRecVisibilty:false
                repeaterModel: theModel
                //tableModel: theExistingPatientsModel
                proxySoure: theModel
            }
        }
        Rectangle{
            id:rec2
            color: "transparent"
            Layout.row: 2
            Layout.rowSpan: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
            CommonTableGrid{
                id:row2
                anchors.fill: parent
                searchRecVisibilty:false
                repeaterModel: theModel1
                //tableModel: theExistingPatientsModel
                proxySoure: theModel1
            }
        }
        Rectangle{
            id:rec3
            color: "transparent"
            Layout.row: 3
            Layout.rowSpan: 1
            Layout.fillHeight: true
            Layout.fillWidth: true
            CommonTableGrid{
                id:row3
                anchors.fill: parent
                searchRecVisibilty:false
                repeaterModel: theModel2
                //tableModel: theExistingPatientsModel
                proxySoure: theModel2
            }
        }
    }


}
