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
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0

Rectangle {
    id:mainTumbler
    // width: frame.implicitWidth + 10
    // height: frame.implicitHeight + 10
    //width: frame.width+10
    // height: frame.height+10
    anchors.fill: parent
    anchors.top: parent.top
    anchors.bottom: parent.bottom
    color: "transparent"//StringConstants.actionBtnBackgroundColor//
    //width: frame.width
    // color: "black"

    ////////////////////////////////////////////////////////////////////
    ////////////ComboBox Items/////////////////////////////////////////
    property alias comboBox: topTextArea
    property alias comboBoxModel: topTextArea.model
    property alias comboBoxText: topTextArea.displayText
    property alias comboBoxCurText: topTextArea.currentText
    property alias comboBoxIndex: topTextArea.currentIndex
    property alias comboBoxTextRole: topTextArea.comboBoxTextRole
    property alias comboBoxInputHints: topTextArea.comboBoxInputHints
    property alias comboBoxValidator: topTextArea.comboBoxValidator
    property alias comboBoxRoleOrModelFlag: topTextArea.roleOrModel
    property alias comboBoxDelegateRoleOrModel: topTextArea.delegateRoleOrModel
    function setPrevIndex(index)
    {
        topTextArea.comboBoxPreviousIndex = index
    }

    //property alias comboBoxModelCount: topTextArea.model.modelData.count
    //property alias comboModelData: topTextArea.modelData
    onComboBoxModelChanged: {
        console.log("The model is"+topTextArea.model)
    }

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
    signal selectedText(string curText,string role)
    onSelectedText: {
        console.log("The selected Text is"+curText+role)
    }


    //////////////////////////////////////////////////////////////////////


    property alias firstTumblerModel: firstTumblerRec.allTumblerModel
    property alias firstTumblerDelegate: firstTumblerRec.allTumblerDelegate
    property alias secTumblerModel: secTumblerRec.allTumblerModel
    property alias secTumblerDelegate: secTumblerRec.allTumblerDelegate
    property alias thirdTumblerModel: thirdTumblerRec.allTumblerModel
    property alias thirdTumblerDelegate: thirdTumblerRec.allTumblerDelegate
    property alias firstTumblerVisibility: firstTumblerRec.allTumblerVisibility
    property alias secTumblerVisibility: secTumblerRec.allTumblerVisibility
    property alias firstTumblerStopped: firstTumblerRec.stopped

    onFirstTumblerModelChanged: {
        console.log("The first tumbler model is"+firstTumblerRec.allTumblerModel)
    }

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
    property bool labelHorizontal: false
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
    property int comboBoxMargin: 50
    property alias  firstTumblerCount: firstTumblerRec.allTumblerVisibleItemCount
    property bool lblAlignCentre: false
    signal changeTumblerComboValue(int index)
    onChangeTumblerComboValue: {
        if(index === 0)
        {
            console.log("THe index has become zero for no known reason")
        }

        console.log("The value of the index is of the toptextArea in the current Index is"+index)
        topTextArea.currentIndex = index

    }

    signal firstTumblerValue(int index)
    onFirstTumblerValue: {
        console.log("The value is current index"+index)
        //comboIndexChange(value)

        //firstTumblerRec.allTumblerIndex = index
    }

    signal firstDialValue(int index)
    signal firstSliderValue(int value)
    signal rearrangeValues(int value)
    signal rearrangeFirstModel(int value)
    signal rearrangeSecondModel(int value)
    signal rearrangeThrirdModel(int value)
    signal firstSecThirdTumblerValue(int index)




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
        color: "transparent"//"red"//"black"//
        //border.width: 1
        //border.color: StringConstants.actionBtnBackgroundColor
        GridLayout {
            id: row
            columns: 3
            rows: 3
            anchors.fill: parent
            Layout.minimumHeight: firstTumberRec.height+lbl.height+5*10
            Layout.minimumWidth: firstTumblerRec.width+secTumblerRec.width+thirdTumblerRec.width+3*rowSpacing
            Label {
                id:lbl
                width: labelHorizontal?(parent.width/4):parent.width
                Layout.row: 1
                Layout.rowSpan: labelHorizontal?0:1
                Layout.column: secTumblerVisibility?2:1
                Layout.columnSpan: secTumblerVisibility?3:1
                Layout.rightMargin:labelHorizontal?50:0
                //Layout.rightMargin: 20
                //Layout.fillWidth: true
                anchors.top: parent.top
                //anchors.bottom: labelHorizontal?topTextArea.bottom:firstTumblerRec.top
                anchors.horizontalCenter: secTumblerVisibility?parent.horizontalCenter:firstTumbler.horizontalCenter
                text: ""
                //font: OtherConstants.fontFamily
                font { family: OtherConstants.fontFamily; pixelSize: pixelSize; weight: Font.Bold; capitalization: Font.MixedCase }
                color: labelHorizontal?StringConstants.label_NewPatientLabelBgColor:"white"//StringConstants.actionBtnBackgroundColor
                height: labelHorizontal?topTextArea.height-2:20
                verticalAlignment: Text.AlignVCenter//labelHorizontal?Text.AlignBottom:Text.AlignVCenter
                horizontalAlignment: labelHorizontal?Text.AlignLeft:Text.AlignHCenter//Text.AlignHCenter//
                Layout.alignment: secTumblerVisibility?Qt.AlignHCenter | Qt.AlignVCenter:lblAlignCentre?Qt.AlignHCenter:Qt.AlignLeft
                background: Rectangle{
                    id:bgRec
                    color: labelHorizontal?StringConstants.barBackgroundColor:"transparent"//StringConstants.testPage_backgroundColor//StringConstants.actionBtnBackgroundColor
                }
            }

            NewPatientDataComboBox  {
                id: topTextArea
                Layout.leftMargin: labelHorizontal?50:0
                Layout.fillWidth: false
                //width: labelHorizontal?(parent.width - ((parent.width/7))):parent.width
                //width: labelHorizontal?(parent.width - (lbl.width + 100)):parent.width
                Layout.row: lbl.visible?labelHorizontal?1:2:1
                Layout.rowSpan: labelHorizontal?0:1
                Layout.column: labelHorizontal?2:1
                Layout.columnSpan: labelHorizontal?1:3
                anchors.left: labelHorizontal?lbl.right:parent.left
                anchors.leftMargin: labelHorizontal?comboBoxMargin:0//(parent.width-lbl.width)/8:0
                anchors.right: parent.right
                anchors.rightMargin: labelHorizontal?10:0//labelHorizontal?(parent.width-lbl.width)/4:0
                //Layout.fillHeight: true
                anchors.horizontalCenter: lbl.horizontalCenter
                anchors.top: lbl.visible?labelHorizontal?parent.top:lbl.bottom:parent.top
                anchors.topMargin: 0
                 font { family: OtherConstants.fontFamily; pixelSize: pixelSize; weight: Font.Bold; capitalization: Font.MixedCase }
                visible: true
                editable: true
                //model: firstTumblerModel
                Component.onCompleted: {
                    topTextArea.comboIndexChange.connect(mainTumbler.comboIndexChange)
                    topTextArea.comboCurTextChange.connect(mainTumbler.comboCurTextChange)
                    topTextArea.comboDisplayTextChange.connect(mainTumbler.comboDisplayTextChange)
                    topTextArea.selectedText.connect(mainTumbler.selectedText)
                }

            }
            //            SpinBox{
            //                id:tumblerSpinner
            //                Layout.row: lbl.visible?2:1
            //                Layout.rowSpan: 1
            //                anchors.left: parent.left
            //                anchors.right: parent.right
            //                Layout.fillWidth: true
            //                //Layout.minimumWidth: 50
            //                //anchors.right: topLabel.left
            //                //anchors.rightMargin: 0
            //                // anchors.verticalCenter: lbl.verticalCenter
            //                anchors.horizontalCenter: lbl.horizontalCenter
            //                anchors.top: lbl.visible?lbl.bottom:parent.top
            //                anchors.topMargin: 0
            //                from:0
            //                to:comboBoxModel.length -1
            //                value:1
            //                visible: true
            //                validator: RegExpValidator{
            //                    regExp: new RegExp(OtherConstants.modelToRegext(comboBoxModel),"i")
            //                }
            //                textFromValue: function(value){
            //                    return comboBoxModel[value];
            //                }
            //                valueFromText: function(text){
            //                    for(var i = 0;i <comboBoxModel.count;++i){
            //                      if(comboBoxModel[i].toLowerCase().indexOf(text.toLowerCase()) === 0)
            //                          return i
            //                    }
            //                    return tumblerSpinner.value
            //                }
            //                onValueChanged: {
            //                      comboIndexChange(value)
            //                }
            //                onValueFromTextChanged: {
            //                    comboIndexChange(value)
            //                }
            //                onValueModified: {
            //                        comboIndexChange(value)
            //                }
            //            }

            TumberRec {
                id: firstTumblerRec
                color: "transparent"
                Layout.alignment: Qt.AlignTop
                Layout.column: 1
                Layout.columnSpan: 1//secTumblerVisibility?1:3
                Layout.fillHeight: true
                Layout.fillWidth: true
                ////////////////////////////Layout.leftMargin: 10
                Layout.row: 3
                allTumblerModel:100
                onTumblerIndexChanged: {

                    //                    if(!(topTextArea.currentIndex === currentIndex))
                    //                    {
                    //                        topTextArea.currentIndex = currentIndex
                    //                    }
                    //firstTumblerIndex=firstTumblerModel[firstTumblerIndex]//allTumblerModel[allTumblerIndex]//allTumblerModel[currentIndex]//allTumblerModel[currentIndex]//firstTumbler.model[firstTumbler.currentIndex]
                    //firstTumblerIndex
                    //totalIndex=parseInt(""+firstTumblerIndex+secTumblerIndex+thirdTumblerIndex)
                    //firstSecThirdTumblerValue(totalIndex)//(firstTumblerIndex+secTumblerIndex+thirdTumblerIndex)//secTumbler.model[secTumbler.currentIndex]
                    console.log("The value is"+firstTumblerIndex+secTumblerIndex+thirdTumblerIndex)//secTumbler.model[secTumbler.currentIndex]//thirdTumbler.currentIndex
                    firstTumblerValue(currentIndex)
                    rearrangeSecondModel(currentIndex)
                    rearrangeThrirdModel(currentIndex)
                    console.log("The value of the index is"+totalIndex)


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
                //Layout.minimumWidth:thirdTumblerRec.visible?(secTumblerRec.visible?parent.width/3:0):(secTumblerRec.visible?parent.width/2:0)
                allTumblerModel:100
                onTumblerIndexChanged: {
                    //secTumblerIndex = secTumblerModel[secTumblerIndex]//secTumbler.model[secTumbler.currentIndex]
                    //totalIndex=parseInt(""+firstTumblerIndex+secTumblerIndex+thirdTumblerIndex)
                    //firstSecThirdTumblerValue(totalIndex)
                    //firstSecThirdTumblerValue(firstTumblerIndex+secTumblerIndex+thirdTumblerIndex)//thirdTumbler.currentIndex
                    console.log("The value is"+firstTumblerIndex+secTumblerIndex+thirdTumblerIndex)//thirdTumbler.currentIndex
                    secondTumblerValue(currentIndex)
                    console.log("The value of the index is"+currentIndex)


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
                //Layout.minimumWidth:thirdTumblerRec.visible?parent.width/3:0
                anchors.left: secTumblerRec.right
                anchors.right: parent.right
                anchors.leftMargin: 10
                onTumblerIndexChanged: {
                    //thirdTumblerIndex = thirdTumbler.model[thirdTumbler.currentIndex]
                    // totalIndex=parseInt(""+firstTumblerIndex+secTumblerIndex+thirdTumblerIndex)
                    // firstSecThirdTumblerValue(totalIndex)
                    //firstSecThirdTumblerValue(firstTumblerIndex+secTumblerIndex+thirdTumblerIndex)
                    thirdTumblerIndex = parseInt( (currentIndex).toLocaleString('en-US', {minimumIntegerDigits: 2, useGrouping:false}))//currentIndex//thirdTumbler.model[thirdTumbler.currentIndex]
                    console.log("The first value is "+firstTumblerModel[firstTumblerIndex]+"the first index is" + firstTumblerIndex)
                    console.log("The second value is"+secTumblerModel[secTumblerIndex]+"the second index is"+secTumblerIndex)
                    console.log("The third tumbler value is"+thirdTumblerModel[thirdTumblerIndex]+"The third index is"+thirdTumblerIndex)
                    console.log("The value is"+firstTumblerIndex+secTumblerIndex+thirdTumblerIndex)
                    thirdTumblerValue(currentIndex)
                    console.log("The value of the index is"+totalIndex)

                }

            }
        }
    }
}

























/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
