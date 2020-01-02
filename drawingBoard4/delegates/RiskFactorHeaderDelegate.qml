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
import "./../images/"
import "./../delegates/"
import "./../models/"
import "./../common/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0


//Component{
//    id:headerDelegate
/*!
   \qmltype PageActionsButtons
   \brief This component used to display all report pages buttons to select date range for the report generation.

  This is used in ReportDateGrid .
   \image tobeprovided.png

   \section1 Sample usage

   The usage of PageActionsButtons is demonstrated below
   \qml
          ReportPageDateBtnGroup{
                id:image2
                anchors.fill:parent
                verticalLayoutDirection: Grid.TopToBottom
                layoutDirection: Qt.LeftToRight
                flow: Grid.LeftToRight
                filterName:StringConstants.textBoxItemsModel
               }
   \endqml

*/
Rectangle{
    property alias switchMetricsChecked: switchMetrics.checked
    property alias switchMetricsVisible: switchMetrics.visible
    property alias addSupplementVisible: addSupplement.visible
    property alias riskFactorLabel: riskFactorLabel.text
    anchors.left: parent.left
    anchors.right: parent.right
    Layout.fillWidth: true
    //height: 100
    //width: 400
    color: "transparent"
    //NewPatientGroupLabel{
     GroupLabel{
        id:riskFactorLabel
        isTabHeader:true
        text: StringConstants.lbl_riskFactors

    }
    Switch {
        id: switchMetrics
        anchors.right: parent.right
        anchors.rightMargin: 10
        Layout.fillWidth: true
        visible: true
        text: qsTr("Metric")
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        onCheckedChanged: {
            if(text === "US/Imperial")
            {
                text = qsTr("Metric")
            }
            else
            {
                text = qsTr("US/Imperial")
            }
        }
        contentItem: Text {
                          text: switchMetrics.text
                          font: switchMetrics.font
                          opacity: enabled ? 1.0 : 0.3
                          color: "white"
                          verticalAlignment: Text.AlignVCenter
                          leftPadding: switchMetrics.indicator.width + switchMetrics.spacing
                      }
    }
    IconOnlyButtons{
        id:addSupplement
        visible: true
        anchors.right: parent.right
        anchors.rightMargin: 10
        Layout.fillWidth: true
        width: 50
        height: 50
        Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
        icon.name:   "add_supplement"
        icon.source:   "qrc:/images/add_supplement.png"
        icon.color:  "transparent"
    }

}
//}
