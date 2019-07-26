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
import QtQuick.Extras 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls 2.5
import "."
import "./../../images/"
import "./../../delegates/"
import "./../../models/"
import ApplicationContstants 1.0
Rectangle {
    // width: frame.implicitWidth + 10
    // height: frame.implicitHeight + 10
    //width: frame.width+10
    // height: frame.height+10
    anchors.fill: parent
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    width: frame.width
    property alias firstTumblerModel: firstTumbler.model
    property alias firstTumblerDelegate: firstTumbler.delegate
    property alias secTumblerModel: secTumbler.model
    property alias secTumblerDelegate: secTumbler.delegate
    property alias thirdTumblerModel: thirdTumbler.model
    property alias thirdTumblerDelegate: thirdTumbler.delegate
    property alias firstTumblerVisibility: firstTumbler.visible
    property alias secTumblerVisibility: secTumbler.visible
    property alias thirdTumblerVisibility: thirdTumbler.visible
    property alias labelText: lbl.text
    property bool numberOrColorDelegate: false
    property bool rearrangeModel: true
    property bool firstModelRearrange: true
    property bool secModelRearrange: true
    property bool thirdModelRearrange: true
    property int firstModelReArrangeCondition: 0
    property int secModelReArrangeCondition: 0
    property int thirdModelReArrangeCondition: 0
    property alias  firstTumblerCount: firstTumbler.visibleItemCount
    signal firstTumblerValue(int index)
    signal firstDialValue(int index)
    signal firstSliderValue(int value)
    signal rearrangeValues(int value)
    signal rearrangeFirstModel(int value)
    signal rearrangeSecondModel(int value)
    signal rearrangeThrirdModel(int value)
    signal firstSecThirdTumblerValue(int index)
    onRearrangeSecondModel: {
        if(value === secModelReArrangeCondition)
        {
            secModelRearrange = false
        }
        else{
            secModelRearrange = true
        }
    }
    onRearrangeThrirdModel: {
        if(value === thirdModelReArrangeCondition)
        {
            thirdModelRearrange = false
        }
        else
        {
            thirdModelRearrange = true
        }
    }

    onRearrangeValues: {
        if(value === 3)
        {
            rearrangeModel= false
            console.log("The value is"+value)
        }
        if(value !== 3)
        {
            rearrangeModel= true
            console.log("The value is"+value)
        }
    }

    onFirstDialValue: {
        firstTumbler.currentIndex = index
    }
    onFirstSliderValue: {
        console.log("The value is"+value)
        firstTumbler.currentIndex = value
    }

    signal secondTumblerValue(int index)
    signal secondDialValue(int index)
    signal secondSliderValue(int index)

    onSecondDialValue: {
        secTumbler.currentIndex = index
    }
    onSecondSliderValue: {
        secTumbler.currentIndex = value
    }

    signal thirdTumblerValue(int index)
    signal thirdDialValue(int index)
    signal thirdSliderValue(int index)

    onThirdDialValue: {
        thirdTumbler.currentIndex = index
    }

    onThirdSliderValue: {
        thirdTumbler.currentIndex = index
    }

    function formatText(count, modelData) {
        //var data = count === 12 ? modelData + 1 : modelData;
        ///var newData = name
        //console.log("NewData"+newData)
        var data = count === 12 ? modelData + 1 : modelData;
        return data.toString().length < 2 ? "0" + data : data;
    }

    FontMetrics {
        id: fontMetrics
    }

    DelegateComponent {
        id: delegateComponent
    }
    ColordelegateComponent {
        id: colordelegateComponent
    }
    Component {
        id: appHighlight
        Rectangle { width: 80; height: 80; color: "lightsteelblue" }
    }
    Rectangle {
        id: frame
        // padding: 0
        anchors.fill: parent
        //anchors.centerIn: parent
        //width: secTumblerVisibility?firstTumbler.width+secTumbler.width+thirdTumbler.width+40:firstTumbler.width+15
        //height: firstTumbler.height+lbl.height+30
        border.color: "red"
        border.width: 1
        GridLayout {
            id: row
            columns: 3
            rows: 2
            anchors.fill: parent
            //Layout.width: secTumblerVisibility?firstTumbler.width+secTumbler.width+thirdTumbler.width+3*10:firstTumbler.width
            //Layout.height: firstTumberRec.height+lbl.height+3*10
            Layout.minimumWidth: secTumblerVisibility?firstTumbler.width+secTumbler.width+thirdTumbler.width+40:firstTumbler.width+15
            // Layout.maximumWidth: secTumblerVisibility?firstTumbler.width+secTumbler.width+thirdTumbler.width+40:firstTumbler.width+15
            Layout.minimumHeight: firstTumberRec.height+lbl.height+5*10
            // Layout.maximumHeight: secTumblerRec.height+lbl.height+5*10
            Label {
                id:lbl
                Layout.row: 1
                Layout.rowSpan: 1
                Layout.column: secTumblerVisibility?2:1
                Layout.columnSpan: secTumblerVisibility?3:1
                Layout.fillWidth: true
                //Layout.horizontalCenter: parent.horizontalCenter
                anchors.top: parent.top
                anchors.horizontalCenter: secTumblerVisibility?parent.horizontalCenter:firstTumbler.horizontalCenter
                // anchors.verticalCenter: parent.verticalCenter
                text: "Title"
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                Layout.alignment: secTumblerVisibility?Qt.AlignHCenter | Qt.AlignVCenter:Qt.AlignLeft
            }
            Rectangle{
                id:firstTumberRec
                Layout.alignment: Qt.AlignTop
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.row: 2
                Layout.column: 1
                Layout.columnSpan: 1
                //Layout.rowSpan: 1
                // Layout.preferredHeight: firstTumbler.height
                Layout.preferredWidth: firstTumbler.width
                // Layout.minimumHeight: 150
                // Layout.maximumHeight: 150
                Layout.minimumWidth:  60
                // Layout.maximumWidth:  60
                Layout.leftMargin: 10
                Tumbler {
                    id: firstTumbler
                    anchors.left: parent.left
                    height: parent.height
                    //                anchors.bottom: parent.bottom
                    //                anchors.bottomMargin: 10
                    //                anchors.top: parent.top
                    //                anchors.topMargin: 10
                    ////////////////delegate: numberOrColorDelegate?colordelegateComponent:delegateComponent
                    visibleItemCount: count%2 === 0?visibleItemCount+1:visibleItemCount
                    wheelEnabled: true
                    model: 100
//                    delegate: Text {
//                        text: qsTr("%1").arg(modelData)
//                        font: firstTumbler.font
//                        horizontalAlignment: Text.AlignHCenter
//                        verticalAlignment: Text.AlignVCenter
//                        opacity: 1.0 - Math.abs(Tumbler.displacement) / (firstTumbler.visibleItemCount / 2)
//                    }

                    Rectangle {
                        anchors.horizontalCenter: firstTumbler.horizontalCenter
                        y: firstTumbler.height * 0.4
                        width: 40
                        height: (firstTumbler.height * 0.6) - (firstTumbler.height * 0.4)//40//parent.height/10//
                        border.color: "black"
                        border.width: 1
                        color: "#21be2b"
                        radius: 20
                        opacity: 0.5
                    }

                    //                Rectangle {
                    //                    anchors.horizontalCenter: firstTumbler.horizontalCenter
                    //                    y: firstTumbler.height * 0.6
                    //                    width: 40
                    //                    height: 1
                    //                    color: "#21be2b"
                    //                }
                    //wheelEnabled: true
                    //                background: Item {
                    //                    Rectangle {
                    //                        opacity: control.enabled ? 0.2 : 0.1
                    //                        border.color: "#000000"
                    //                        width: parent.width
                    //                        height: 1
                    //                        anchors.top: parent.top
                    //                    }

                    //                    Rectangle {
                    //                        opacity: control.enabled ? 0.2 : 0.1
                    //                        border.color: "#000000"
                    //                        width: parent.width
                    //                        height: 1
                    //                        anchors.bottom: parent.bottom
                    //                    }
                    //                }

                    //clip: true
                    onModelChanged: {
                        console.log("The model has changed")
                    }
                    onCurrentIndexChanged: {
                        //console.log("The value is"+firstTumbler.model[firstTumbler.currentIndex]+secTumbler.model[secTumbler.currentIndex]+thirdTumbler.currentIndex)
                        firstTumblerValue(currentIndex)
                        rearrangeSecondModel(currentIndex)
                        rearrangeThrirdModel(currentIndex)
                        firstSecThirdTumblerValue(firstTumbler.model[firstTumbler.currentIndex]+secTumbler.model[secTumbler.currentIndex]+thirdTumbler.currentIndex)
                    }
                    onCurrentItemChanged: {

                    }




                }
            }
            Rectangle{
                id:secTumblerRec
                anchors.left: firstTumberRec.right
                anchors.leftMargin: 10
                Layout.alignment: Qt.AlignTop
                //anchors.top: firstTumberRec.bottom
                //anchors.topMargin: 10
                // Layout.alignment: Qt.AlignVCenter
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.row: 2
                Layout.column: 2
                Layout.columnSpan: 1
                //Layout.rowSpan: 1
                //Layout.preferredHeight: secTumbler.height
                Layout.preferredWidth: secTumbler.width
                Layout.minimumHeight: 150
                //Layout.maximumHeight: 150
                Layout.minimumWidth:  60
                //Layout.maximumWidth:  60
                //height: 50
                //color: "blue"
                //border.width: 1
                //border.color: "black"
                Tumbler {
                    id: secTumbler
                    //                anchors.bottom: parent.bottom
                    //                anchors.bottomMargin: 10
                    //                anchors.top: parent.top
                    //                anchors.topMargin: 10
                    anchors.left: firstTumbler.right
                    height: parent.height
                    anchors.leftMargin: 5
                    delegate: delegateComponent
                    wheelEnabled: true
                    clip: true
                     model: 100
                    //                delegate: Text {
                    //                    text: qsTr("%1").arg(modelData)
                    //                    font: firstTumbler.font
                    //                    horizontalAlignment: Text.AlignHCenter
                    //                    verticalAlignment: Text.AlignVCenter
                    //                    opacity: 1.0 - Math.abs(Tumbler.displacement) / (secTumbler.visibleItemCount / 2)
                    //                }

                    Rectangle {
                        anchors.horizontalCenter: secTumbler.horizontalCenter
                        y: secTumbler.height * 0.4
                        width: 40
                        height: (secTumbler.height * 0.6) - (secTumbler.height * 0.4)
                        border.color: "black"
                        border.width: 1
                        color: "#21be2b"
                        radius: 20
                        opacity: 0.5
                    }
                    onModelChanged: {
                        console.log("The model has changed")
                    }
                    onCurrentIndexChanged: {
                       // console.log("The value is"+firstTumbler.model[firstTumbler.currentIndex]+secTumbler.model[secTumbler.currentIndex]+thirdTumbler.currentIndex)
                        secondTumblerValue(currentIndex)
                        firstSecThirdTumblerValue(firstTumbler.model[firstTumbler.currentIndex]+secTumbler.model[secTumbler.currentIndex]+thirdTumbler.currentIndex)

                    }
                }
            }
            Rectangle{
                id:thirdTumblerRec
                Layout.alignment: Qt.AlignTop
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.row: 2
                Layout.rowSpan: 1
                //height: 50
                //color: "green"
                //Layout.fillWidth: true
                //Layout.fillHeight: true
                //Layout.row: 2
                Layout.column: 3
                Layout.columnSpan: 1
                //Layout.rowSpan: 1
                //Layout.preferredHeight: thirdTumbler.height
                Layout.preferredWidth: thirdTumbler.width
                Layout.minimumHeight: 150
                /// Layout.maximumHeight: 150
                Layout.minimumWidth:  60
                //  Layout.maximumWidth:  60
                anchors.left: secTumblerRec.right
                anchors.leftMargin: 10
                // border.width: 1
                // border.color: "black"
                //anchors.top: secTumblerRec.bottom
                //anchors.topMargin: 10
                Tumbler {
                    id: thirdTumbler
                    //                anchors.bottom: parent.bottom
                    //                anchors.bottomMargin: 10
                    //                anchors.top: parent.top
                    //                anchors.topMargin: 10
                    anchors.left: secTumbler.right
                    anchors.leftMargin: 5
                    height: parent.height
                    delegate: delegateComponent
                     model: 100

                    //                delegate: Text {
                    //                    text: qsTr("%1").arg(modelData)
                    //                    font: firstTumbler.font
                    //                    horizontalAlignment: Text.AlignHCenter
                    //                    verticalAlignment: Text.AlignVCenter
                    //                    opacity: 1.0 - Math.abs(Tumbler.displacement) / (firstTumbler.visibleItemCount / 2)
                    //                }

                    Rectangle {
                        anchors.horizontalCenter: thirdTumbler.horizontalCenter
                        y: thirdTumbler.height * 0.4
                        width: 40
                        height: (thirdTumbler.height * 0.6) - (thirdTumbler.height * 0.4)
                        border.color: "black"
                        border.width: 1
                        color: "#21be2b"
                        radius: 20
                        opacity: 0.5
                    }
                    wheelEnabled: true
                    clip: true
                    onCurrentIndexChanged: {
                       // console.log("The first value is "+firstTumbler.model[firstTumbler.currentIndex]+"the first index is" + currentIndex)
                        console.log("The second value is"+secTumbler.model[secTumbler.currentIndex]+"the second index is"+currentIndex)
                        console.log("The third tumbler value is"+thirdTumbler.model[thirdTumbler.currentIndex]+"The third index is"+currentIndex)
                        console.log("The value is"+firstTumbler.model[firstTumbler.currentIndex]+secTumbler.model[secTumbler.currentIndex]+thirdTumbler.currentIndex)
                        thirdTumblerValue(currentIndex)
                        firstSecThirdTumblerValue(firstTumbler.model[firstTumbler.currentIndex]+secTumbler.model[secTumbler.currentIndex]+thirdTumbler.currentIndex)
                    }
                    onModelChanged: {
                      //  console.log(model.modelData)
                        console.log("The model has changed"+thirdTumbler.model[thirdTumbler.currentIndex])
                    }
                }
            }
        }
    }
}
