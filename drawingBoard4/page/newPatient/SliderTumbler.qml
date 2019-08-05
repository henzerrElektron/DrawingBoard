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
Rectangle{
    id:mainsubRec
    anchors.fill: parent
    property alias dTNoOrColorDelegate: dataTumbler.numberOrColorDelegate
    property alias dTFirstModel: dataTumbler.firstTumblerModel
    property alias dTSecModel: dataTumbler.secTumblerModel
    property alias dTThirdModel: dataTumbler.thirdTumblerModel
    property alias dTfirstVisibility: dataTumbler.firstTumblerVisibility
    property alias dTsecVisibility: dataTumbler.secTumblerVisibility
    property alias dTthirdVisibility:dataTumbler.thirdTumblerVisibility
    property alias tSModel: topSliderUnit.topTextAreaModel
    property alias bSModel: btmSliderUnit.topTextAreaModel
    property alias tSValue: topSliderUnit.topSliderValue
    property alias tSLabelText: topSliderUnit.topLabelText
    //property alias topSliderAreaText:  topSliderUnit.topTextAreaText
    property alias tSMinValue: topSliderUnit.topSliderMinValue
    property alias tSMaxValue:  topSliderUnit.topSliderMaxValue
    property alias bSValue: btmSliderUnit.topSliderValue
    property alias bSLabelText: btmSliderUnit.topLabelText
    //property alias btmSliderAreaText:  btmSliderUnit.topTextAreaText
    property alias bSMinValue: btmSliderUnit.topSliderMinValue
    property alias bSMaxValue:  btmSliderUnit.topSliderMaxValue
    property alias tSVisible: subRec.visible
    property alias bSVisible: subRec1.visible
    property alias dTVisibility: subRec0.visible
    //Layout.top: parent.top
    //color: "red"
    //Layout.fillHeight: true
    //Layout.alignment: Qt.AlignLeft | Qt.AlignTop
    //Layout.fillHeight: true
    //height: mainsubRow.height
    //height: 200
    GridLayout{
        id:mainsubRow
        rows: 3
        columns: 2
        //columnSpacing:  0
        //anchors.fill: parent
        anchors.right: parent.right
        anchors.left: parent.left
        anchors.top: parent.top
        //height: subRec.height+subRec0.height+subRec1.height
        
        
        Rectangle{
            id:subRec
            //color: "black"
            //anchors.left: parent.left
            //anchors.right: parent.right
            anchors.top: parent.top
            //anchors.topMargin: 10
            Layout.row: 1
            // Layout.rowSpan: 1
            Layout.column: 1
            Layout.columnSpan:bSVisible?1:2
            Layout.fillWidth: true
            Layout.maximumHeight: 40
            Layout.minimumHeight: 40
            //Layout.fillHeight: true
            height: topSliderUnit.height
            NewPatientSliderLabelUnit{
                id:topSliderUnit
                anchors.fill: parent
                //width: parent.width
                //height: 50
                //anchors.fill: parent
                //anchors.bottom: parent.bottom
                Component.onCompleted: {
                    dataTumbler.firstTumblerValue.connect(topSliderUnit.firstTumblerValue)
                    topSliderUnit.sliderValueChange.connect(dataTumbler.firstSliderValue)
                }
            }
        }
        Rectangle{
            id:subRec1
            //color: "green"
            //anchors.left: parent.left
            //anchors.right: parent.right
            Layout.fillWidth: true
            anchors.top: parent.top
            // anchors.top: subRec.bottom
            //anchors.topMargin: 10
            Layout.minimumHeight: 40
            Layout.maximumHeight: 40
            Layout.row: 1
            // Layout.rowSpan: 1
            Layout.column: 2
            //Layout.columnSpan: 1
            //Layout.fillHeight: true
            //height: btmSliderUnit.height
            NewPatientSliderLabelUnit{
                id:btmSliderUnit
                anchors.fill: parent
                //width: parent.width
                //height: 100
                //height: 150
                //height: btmSliderUnit.height
                Component.onCompleted: {
                    dataTumbler.secTumblerValue.connect(btmSliderUnit.secondTumblerValue)
                    btmSliderUnit.sliderValueChange.connect(dataTumbler.secSliderValue)
                }
            }
        }
        Rectangle{
            id:subRec0
            Layout.row: 2
            Layout.rowSpan: 1
            Layout.column: 1
            Layout.columnSpan: 2
            //color: "black"
            //height: dataTumbler.height
            //height: 150
            //height: mainsubRec.height/2
            //anchors.left: parent.left
            //anchors.right: parent.right
            Layout.fillWidth: true
            anchors.top:subRec1.visible? subRec1.bottom:subRec.visible?subRec.bottom:parent.top
            anchors.topMargin: 10
            //anchors.bottom: parent.bottom
            //anchors.bottomMargin: 10
            //Layout.fillHeight: true
            Layout.minimumHeight: dataTumblersecVisibility?75:50
            Layout.maximumHeight: dataTumblersecVisibility?75:50
            //Layout.fillWidth: true
            NewPatientDataTumblerHorizontal{
                id:dataTumbler
                //anchors.bottomMargin: 0
                //anchors.fill: parent
                //firstTumblerModel: 100
                anchors.fill: parent
                //height: 75//dataTumblersecVisibility?75:50
                //width: parent.width
                //height: parent.height
                // anchors.fill: parent
                // secTumblerVisibility: false
                // thirdTumblerVisibility: false
                Component.onCompleted: {
                    //model = dataTumblerFirstModel
                    dataTumbler.firstTumblerValue.connect(dialUnit.firstTumblerValue)
                    dataTumbler.secTumblerValue.connect(dialUnit.secondTumblerValue)
                }
            }
        }
    }
}
