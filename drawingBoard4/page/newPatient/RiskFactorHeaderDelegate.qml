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
import ApplicationContstants 1.0
//Component{
//    id:headerDelegate
    Rectangle{
        property alias switchMetricsChecked: switchMetrics.checked
        anchors.left: parent.left
        anchors.right: parent.right
        Layout.fillWidth: true
        //height: 100
        //width: 400
        color: "transparent"
        NewPatientGroupLabel{
            id:riskFactorLabel
            text: "RiskFactors"
            
        }
        Switch {
            id: switchMetrics
            anchors.right: parent.right
            anchors.rightMargin: 10
            Layout.fillWidth: true
            text: qsTr("Metric")
            Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            onCheckedChanged: {
                if(text === "Us/Imperial")
                {
                    text = qsTr("Metric")
                }
                else
                {
                    text = qsTr("Metric")
                }
            }
        }
    }
//}
