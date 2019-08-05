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
    color: "transparent"
    //width: frame.width
    // color: "black"
    property alias firstTumblerModel: firstTumblerRec.allTumblerModel
    property alias firstTumblerDelegate: firstTumblerRec.allTumblerDelegate
    property alias secTumblerModel: secTumblerRec.allTumblerModel
    property alias secTumblerDelegate: secTumblerRec.allTumblerDelegate
    property alias thirdTumblerModel: thirdTumblerRec.allTumblerModel
    property alias thirdTumblerDelegate: thirdTumblerRec.allTumblerDelegate
    property alias firstTumblerVisibility: firstTumblerRec.allTumblerVisibility
    property alias secTumblerVisibility: secTumblerRec.allTumblerVisibility
    property alias comboBoxModel: topTextArea.model
    property alias comboBoxText: topTextArea.displayText
    property alias comboBoxCurText: topTextArea.currentText
    property alias comboBoxIndex: topTextArea.currentIndex
    property alias donotUpdateMovingTumbler: firstTumblerRec.donotUpdateWhileMoving
    onSecTumblerVisibilityChanged: {
        secTumblerRec.visible = secTumblerRec.allTumblerVisibility
        //firstTumberRec.anchors.fill.parent
    }

    property alias thirdTumblerVisibility: thirdTumblerRec.allTumblerVisibility
    onThirdTumblerVisibilityChanged:  {
        thirdTumblerRec.visible = thirdTumblerRec.allTumblerVisibility
        //firstTumberRec.anchors.fill.parent
    }

    property alias labelText: lbl.text
    property alias labelVisible:  lbl.visible
    property bool numberOrColorDelegate: false
    property bool rearrangeModel: true
    property bool firstModelRearrange: true
    property bool secModelRearrange: true
    property bool thirdModelRearrange: true
    property int firstModelReArrangeCondition: 0
    property int secModelReArrangeCondition: 0
    property int thirdModelReArrangeCondition: 0
    property alias  firstTumblerCount: firstTumblerRec.allTumblerVisibleItemCount
    signal firstTumblerValue(int index)
    signal firstDialValue(int index)
    signal firstSliderValue(int value)
    signal rearrangeValues(int value)
    signal rearrangeFirstModel(int value)
    signal rearrangeSecondModel(int value)
    signal rearrangeThrirdModel(int value)
    signal firstSecThirdTumblerValue(int index)

    signal comboIndexChange(int value)
    onComboIndexChange: {
        firstTumblerRec.allTumblerIndex = value
    }

    signal comboCurTextChange(string value)
    onComboCurTextChange: {

    }
    signal comboDisplayTextChange(string value)
    onComboDisplayTextChange: {

    }

    property int firstTumblerIndex: 0
    property int secTumblerIndex: 0
    property int thirdTumblerIndex: 0
    property int totalIndex: firstTumblerIndex+secTumblerIndex+thirdTumblerIndex
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
        firstTumblerRec.allTumblerIndex = index
    }
    onFirstSliderValue: {
        console.log("The value is"+value)
        firstTumblerRec.allTumblerIndex = value
    }
    signal secondTumblerValue(int index)
    signal secondDialValue(int index)
    signal secondSliderValue(int index)
    onSecondDialValue: {
        secTumblerRec.allTumblerIndex = index
    }
    onSecondSliderValue: {
        secTumblerRec.allTumblerIndex = value
    }
    signal thirdTumblerValue(int index)
    signal thirdDialValue(int index)
    signal thirdSliderValue(int index)
    onThirdDialValue: {
        thirdTumblerRec.allTumblerIndex = index
    }
    onThirdSliderValue: {
        thirdTumblerRec.allTumblerIndex = index
    }
    function formatText(count, modelData) {
        var data = count%2 === 0 ? modelData + 1 : modelData;//%2===12
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
        color: "transparent"
        GridLayout {
            id: row
            columns: 3
            rows: 3
            anchors.fill: parent
            Layout.minimumHeight: firstTumberRec.height+lbl.height+5*10
            Layout.minimumWidth: firstTumblerRec.width+secTumblerRec.width+thirdTumblerRec.width+3*rowSpacing
            Label {
                id:lbl
                Layout.row: 1
                Layout.rowSpan: 1
                Layout.column: secTumblerVisibility?2:1
                Layout.columnSpan: secTumblerVisibility?3:1
                Layout.fillWidth: true
                anchors.top: parent.top
                anchors.horizontalCenter: secTumblerVisibility?parent.horizontalCenter:firstTumbler.horizontalCenter
                text: ""
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                Layout.alignment: secTumblerVisibility?Qt.AlignHCenter | Qt.AlignVCenter:Qt.AlignLeft
            }
            ComboBox {
                id: topTextArea
                signal tumblerIndexRecord(int index)
                onTumblerIndexRecord: {
                    currentIndex = index
                }

                Layout.row: lbl.visible?2:1
                Layout.rowSpan: 1
                anchors.left: parent.left
                anchors.right: parent.right
                Layout.fillWidth: true
                //Layout.minimumWidth: 50
                //anchors.right: topLabel.left
                //anchors.rightMargin: 0
                // anchors.verticalCenter: lbl.verticalCenter
                anchors.horizontalCenter: lbl.horizontalCenter
                anchors.top: lbl.visible?lbl.bottom:parent.top
                anchors.topMargin: 0
                editable: true
                onCurrentIndexChanged: {
                    comboIndexChange(currentIndex)
                }
                onCurrentTextChanged: {
                    comboCurTextChange(currentText)
                }
                onDisplayTextChanged: {
                    comboDisplayTextChange(currentText)
                }

                model: firstTumblerModel
            }

            TumberRec {
                id: firstTumblerRec
                color: "transparent"
                Layout.alignment: Qt.AlignTop
                Layout.column: 1
                Layout.columnSpan: 1
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.leftMargin: 10
                Layout.row: 3
                allTumblerModel:100
                onTumblerIndexChanged: {

                    //                    if(!(topTextArea.currentIndex === currentIndex))
                    //                    {
                    //                        topTextArea.currentIndex = currentIndex
                    //                    }
                    //firstTumblerIndex=firstTumblerModel[firstTumblerIndex]//allTumblerModel[allTumblerIndex]//allTumblerModel[currentIndex]//allTumblerModel[currentIndex]//firstTumbler.model[firstTumbler.currentIndex]
                    console.log("The value is"+firstTumblerIndex+secTumblerIndex+thirdTumblerIndex)//secTumbler.model[secTumbler.currentIndex]//thirdTumbler.currentIndex
                    //firstTumblerIndex
                    firstTumblerValue(currentIndex)
                    rearrangeSecondModel(currentIndex)
                    rearrangeThrirdModel(currentIndex)
                    //totalIndex=parseInt(""+firstTumblerIndex+secTumblerIndex+thirdTumblerIndex)
                    console.log("The value of the index is"+totalIndex)
                    //firstSecThirdTumblerValue(totalIndex)//(firstTumblerIndex+secTumblerIndex+thirdTumblerIndex)//secTumbler.model[secTumbler.currentIndex]

                }
                Component.onCompleted: {
                    tumblerIndexChanged.connect(topTextArea.tumblerIndexRecord)
                }
            }
            TumberRec{
                id:secTumblerRec
                color: "transparent"
                Layout.alignment: Qt.AlignTop
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.row: 3
                Layout.column: 2
                Layout.columnSpan: 1
                Layout.minimumWidth:thirdTumblerRec.visible?(secTumblerRec.visible?parent.width/3:0):(secTumblerRec.visible?parent.width/2:0)
                allTumblerModel:100
                onTumblerIndexChanged: {
                    //secTumblerIndex = secTumblerModel[secTumblerIndex]//secTumbler.model[secTumbler.currentIndex]
                    console.log("The value is"+firstTumblerIndex+secTumblerIndex+thirdTumblerIndex)//thirdTumbler.currentIndex
                    secondTumblerValue(currentIndex)
                    //totalIndex=parseInt(""+firstTumblerIndex+secTumblerIndex+thirdTumblerIndex)
                    console.log("The value of the index is"+currentIndex)
                    //firstSecThirdTumblerValue(totalIndex)
                    //firstSecThirdTumblerValue(firstTumblerIndex+secTumblerIndex+thirdTumblerIndex)//thirdTumbler.currentIndex

                }

            }
            TumberRec{
                id:thirdTumblerRec
                color: "transparent"
                Layout.alignment: Qt.AlignTop
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.row: 3
                Layout.rowSpan: 1
                Layout.column: 3
                Layout.columnSpan: 1
                Layout.minimumWidth:thirdTumblerRec.visible?parent.width/3:0
                anchors.left: secTumblerRec.right
                anchors.right: parent.right
                anchors.leftMargin: 10
                onTumblerIndexChanged: {
                    //thirdTumblerIndex = thirdTumbler.model[thirdTumbler.currentIndex]
                    thirdTumblerIndex = parseInt( (currentIndex).toLocaleString('en-US', {minimumIntegerDigits: 2, useGrouping:false}))//currentIndex//thirdTumbler.model[thirdTumbler.currentIndex]
                    console.log("The first value is "+firstTumblerModel[firstTumblerIndex]+"the first index is" + firstTumblerIndex)
                    console.log("The second value is"+secTumblerModel[secTumblerIndex]+"the second index is"+secTumblerIndex)
                    console.log("The third tumbler value is"+thirdTumblerModel[thirdTumblerIndex]+"The third index is"+thirdTumblerIndex)
                    console.log("The value is"+firstTumblerIndex+secTumblerIndex+thirdTumblerIndex)
                    thirdTumblerValue(currentIndex)
                    // totalIndex=parseInt(""+firstTumblerIndex+secTumblerIndex+thirdTumblerIndex)
                    console.log("The value of the index is"+totalIndex)
                    // firstSecThirdTumblerValue(totalIndex)
                    //firstSecThirdTumblerValue(firstTumblerIndex+secTumblerIndex+thirdTumblerIndex)
                }

            }
        }
    }
}













/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
