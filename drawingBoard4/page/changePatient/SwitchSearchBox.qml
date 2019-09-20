import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Shapes 1.11
import QtQuick.Templates 2.5
import QtQuick.Layouts 1.12
import QtQuick.Extras 1.4
import QtQuick.Dialogs.qml 1.0
import QtQuick.Controls.Universal 2.0
import Qt.labs.calendar 1.0
import QtQuick.Controls.Material 2.0
import QtQuick.Controls 2.3
import Qt.labs.settings 1.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Shapes 1.11
import QtQml.Models 2.12
import "."
import "./../../common/"
import "./../../images/"
//import "./../../imports/"
import "./../newPatient/"
import "./../../models/"
import "./../../delegates/"
import "./../test/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
Rectangle {
    id: searchRec
    anchors.fill: parent
    border.color: StringConstants.actionBtnBackgroundColor
    border.width: 1
    // width: label.width+comboBox.width
    //height:label.height+comboBox.height
    //property alias labelText: label.text
    property alias comboBoxModel: comboBox.comboBoxModel
    property alias  comboBoxTextRole: comboBox.comboBoxTextRole
    property alias comboBoxInputHints: comboBox.comboBoxInputHints
    property alias comboBoxValidator: comboBox.comboBoxValidator
    property alias  comboBoxIndex: comboBox.comboBoxIndex
    property alias  comboBoxText: comboBox.comboBoxText
    property alias  comboBoxRoleOrModelFlag:comboBox.comboBoxRoleOrModelFlag
    property var comboBoxtypes:theExistingPatientsModel.FirstNameRole
    //        function(){
    //        if(comboBoxTextRole === "Surname"){
    //            return model.Surname
    //        }
    //        if(comboBoxTextRole === "FirstName"){
    //            return model.FirstName
    //        }
    //        if(comboBoxTextRole === "MedicalReference"){
    //            return model.MedicalReference
    //        }
    //    }

    signal selectedText(string curText,string role)
    onSelectedText: {
        console.log("The selected Text is"+curText+role)
    }
    // property alias comboText: comboBox.currentText
    //anchors.fill: parent
    color: "transparent"//"black"//
    //height: 125
    //width: 200
    //border.color: "grey"
    //border.width: 2
    GridLayout{
        id:gdLayout
        anchors.fill: parent
        rows: 1
//        Label {
//            id: label
//            text: qsTr("Label")
//            horizontalAlignment: Text.AlignHCenter
//            verticalAlignment: Text.AlignVCenter
//            Layout.fillWidth: true
//            Layout.row: 1
//            Layout.rowSpan: 1
//            Layout.fillHeight: true
//            Layout.minimumHeight: 50
//            Layout.maximumHeight: 50
//            //Layout.minimumWidth: 200
//            //Layout.maximumWidth: 200
//            Layout.alignment: Qt.AlignTop
//            //            anchors.bottom: comboBox.top
//            //            anchors.bottomMargin: 0
//            //            anchors.top: parent.top
//            //            anchors.topMargin: 0
//            //            anchors.right: parent.right
//            //            anchors.rightMargin: 0
//            //            anchors.left: parent.left
//            //            anchors.leftMargin: 0
//            font: OtherConstants.fontFamily
//            //font.pixelSize: 10
//            //font.bold: true
//            color: StringConstants.actionBtnBackgroundColor
//            height: searchRec.height/2
//        }
        Rectangle{
            id:rectangleSub1
            //color: StringConstants.testPage_backgroundColor
            //Layout.column: 1
            //Layout.fillHeight: true
            //Layout.minimumWidth: 50
            Layout.fillWidth: true
            Layout.row: 1
            Layout.rowSpan: 1
            Layout.minimumHeight: 50
            //Layout.maximumHeight: 50
            Layout.alignment: Qt.AlignVCenter
            NewPatientDataTumbler{
                id:comboBox//pageOperators
                anchors.fill: parent
                labelHorizontal:true
                labelText: comboBoxTextRole//StringConstants.lbl_rpSelectOperator
                firstTumblerVisibility: false
                secTumblerVisibility: false
                thirdTumblerVisibility: false
                firstTumblerModel:theExistingPatientsModel
                comboBoxModel: theExistingPatientsModel
                comboBoxRoleOrModelFlag:false
                Component.onCompleted: {
                    comboBox.selectedText.connect(searchRec.selectedText)
                }
            }
        }
        //        ComboBox {
        //            id: comboBox
        //            Layout.fillHeight: true
        //            Layout.fillWidth: true
        //            Layout.row: 2
        //            Layout.rowSpan: 1
        //            Layout.minimumHeight: 50
        //            Layout.maximumHeight: 50
        //            Layout.alignment: Qt.AlignVCenter
        //            editable: true// - label.height - 10
        //            displayText: textRole
        //            model: theExistingPatientsModel//["First", "Second", "Third"]
        //            currentIndex: 0
        //            onCurrentIndexChanged: {
        //                console.log("The current text is"+modelData)
        //            }

        //            //currentText: modelData
        //            //textRole: "Surname"
        //            onActivated: {
        //                console.log("The value of the index is"+textAt(index)+index)
        //                selectedText(textAt(index),textRole)
        //            }
        //            onEditTextChanged: {
        //                selectedText(editText,textRole)
        //            }

        //            delegate: ItemDelegate {
        //                id:itm
        //                width: comboBox.width
        //                height: comboBox.height
        //                contentItem: Text {
        //                    text:comboBox.textRole==="Surname"?model.Surname:comboBox.textRole==="FirstName"?model.FirstName:model.MedicalReference
        //                    color: "blue"//"#21be2b"
        //                    font: comboBox.font
        //                    elide: Text.ElideRight
        //                    verticalAlignment: Text.AlignVCenter
        //                }
        //                highlighted: comboBox.highlightedIndex === index
        //            }


        //            contentItem: Text {
        //                leftPadding: 0
        //                rightPadding: comboBox.indicator.width + comboBox.spacing
        //                text: comboBox.displayText
        //                font: comboBox.font
        //                color: comboBox.pressed ? "#17a81a" : "#21be2b"
        //                verticalAlignment: Text.AlignVCenter
        //                elide: Text.ElideRight
        //            }
        //            background: Rectangle {
        //                implicitWidth: 120
        //                implicitHeight: 40
        //                border.color: comboBox.pressed ? "#17a81a" : "#21be2b"
        //                border.width: comboBox.visualFocus ? 2 : 1
        //                radius: 2
        //            }
        //            popup: Popup {


        //                y: comboBox.height - 1
        //                width: comboBox.width
        //                implicitHeight: contentItem.implicitHeight
        //                padding: 1

        //                contentItem: ListView {
        //                    clip: true

        //                    implicitHeight: contentHeight
        //                    model: comboBox.popup.visible ?comboBox.delegateModel:null //comboBox.delegateModel : null
        //                    onModelChanged: {
        //                        console.log("the model is"+ model)
        //                    }
        //                    currentIndex: comboBox.highlightedIndex

        ////                    section.property: "modelData"
        ////                    section.criteria: ViewSection.FirstCharacter
        ////                    section.delegate: Label {
        ////                        x: 10
        ////                        text: section
        ////                    }
        //                    ScrollIndicator.vertical: ScrollIndicator { }
        //                }

        //                background: Rectangle {
        //                    anchors.fill: parent
        //                    color:StringConstants.actionBtnBackgroundColor
        //                    border.color: StringConstants.actionBtnBackgroundColor
        //                    radius: 2
        //                }
        //            }

        //            //        onAccepted: {
        //            //                if (!(find(editText) === -1))
        //            //                {
        //            //                    selectedText(editText)
        //            //                }
        //            //        }

        //            //        onHighlighted: {
        //            //            console.log("The value of the index is"+index)
        //            //            selectedText(textAt(index))
        //            //        }

        //        }
        //        Component.onCompleted: {
        //            comboBox.popup.visible = false
        //        }

    }
    onComboBoxTextRoleChanged: {console.log("ComboBoxTextRoleChanged")}




}









/*##^## Designer {
    D{i:1;anchors_x:253;anchors_y:111}D{i:2;anchors_x:228}
}
 ##^##*/
