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




    Rectangle {
        id: frame
        // padding: 0
        anchors.fill: parent
        color: "transparent"
        anchors.top: parent.top
        anchors.bottom: parent.bottom
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


        /////////////////////////////////////////////////////////////////////
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
        RowLayout {
            id: rowLayout
            anchors.fill: parent

            Row {
                id: row
                Layout.fillHeight: true
                Layout.fillWidth: true
                Label {
                    id: label
                    text: qsTr("Label")
                    height: parent.height/2>50?50:parent.height/2
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    anchors.top: parent.top
                    anchors.topMargin: 0
                }

                ComboBox {
                    id: comboBox1
                     height: parent.height/2>100?100:parent.height/2
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                    anchors.top: label.bottom
                    anchors.topMargin: 5
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                }
            }
        }

        //"red"//"black"//

        //        GridLayout {
        //            id: gridRow
        //            columns: 3
        //            rows: 3
        //            Label {
        //                id:lbl
        //                width: labelHorizontal?(parent.width/4):parent.width
        //                text: ""
        //                font { family: OtherConstants.fontFamily; pixelSize: pixelSize; weight: Font.Bold; capitalization: Font.MixedCase }
        //                background: Rectangle{
        //                    id:bgRec
        //                    color: labelHorizontal?StringConstants.testPage_backgroundColor:"transparent"//StringConstants.testPage_backgroundColor//StringConstants.actionBtnBackgroundColor
        //                }
        //            }

        //            NewPatientDataComboBox  {
        //                id: topTextArea
        //                font { family: OtherConstants.fontFamily; pixelSize: pixelSize; weight: Font.Bold; capitalization: Font.MixedCase }
        //                visible: true
        //                editable: true
        //                //model: firstTumblerModel
        //                Component.onCompleted: {
        //                    topTextArea.comboIndexChange.connect(mainTumbler.comboIndexChange)
        //                    topTextArea.comboCurTextChange.connect(mainTumbler.comboCurTextChange)
        //                    topTextArea.comboDisplayTextChange.connect(mainTumbler.comboDisplayTextChange)
        //                    topTextArea.selectedText.connect(mainTumbler.selectedText)
        //                }

        //            }





        //        }
    }


















































/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:4;anchors_x:155;anchors_y:82}D{i:2;anchors_height:100;anchors_width:100;anchors_x:132;anchors_y:165}
}
 ##^##*/
