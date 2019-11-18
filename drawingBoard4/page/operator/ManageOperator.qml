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
import QtQuick.Controls 2.5
import Qt.labs.settings 1.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Shapes 1.11
import QtQml.Models 2.12
import "."
import "./../../common/"
import "./../../images/"
//import "./../../imports/"
import "./../../models/"
import "./../../delegates/"
import "./../test/"
import "./../home/"
import "./../newPatient/"
import "./../../tables/"
import ApplicationConstants 1.0

Dialog {
    id: dialog
    modal: true
    title: StringConstants.lbl_manageOperator
    standardButtons: Dialog.Ok | Dialog.Cancel
    Rectangle
    {
        id:mainRec
        anchors.fill: parent

        Rectangle{
            id:subRec
            anchors.top: parent.top//label.bottom
            anchors.topMargin: 10
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            height: 100
            Row{
                id:subRowLayer
                anchors.fill: parent
                Label {
                    id: label
                    text:StringConstants.lbl_manageHeading //qsTr("Label")
                    anchors.top: parent.top
                    anchors.topMargin: 30
                    //anchors.right: parent.right
                    //anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignLeft
                    height: 30
                }
                Label {
                    id: labelNotes
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    //anchors.right: rec2.left
                    text:StringConstants.lbl_manageNotes
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                    anchors.top: label.bottom//parent.top
                    anchors.topMargin: 0
                    verticalAlignment: Text.AlignTop
                    horizontalAlignment: Text.AlignLeft
                    //verticalAlignment: Text.AlignVCenter
                    //horizontalAlignment: Text.AlignHCenter
                    //qsTr("Label")
                    //anchors.leftMargin: 10
                    color: StringConstants.readonlyColor
                }
                Rectangle{
                    id:rec2
                    anchors.right: parent.right
                    anchors.top: parent.top
                    anchors.bottom: parent.bottom
                    anchors.left: label.right
                    anchors.verticalCenter: label.verticalCenter
                    width: 200//parent.width - labelNotes.width
                    color: "transparent"
                    anchors.leftMargin: 10
                    PageActionsButtons{
                        id:image2
                        anchors.horizontalCenter: parent.horizontalCenter
                        anchors.verticalCenter: parent.verticalCenter
                        //delegateRecColor:"transparent"
                        group1:""
                        group: "operatorPageItems"
                        filterName:"operatorPageItems"
                        verticalLayoutDirection: Grid.TopToBottom
                        layoutDirection: Qt.LeftToRight
                        flow: Grid.LeftToRight
                        //flickableDirection: Flickable.HorizontalAndVerticalFlick
                        actionOrHome: true//false
                        onComponentTriggered: {
                            console.log("I am reaching here")
                        }
                        onInvokeSource: {
                            console.log("I am reaching here"+source)

                        }
                        onInvokeIndex: {
                            console.log("Invoke index value is"+index)
                            adminDialog.open()
                        }
                        Component.onCompleted: {
                            image2.invokeSource.connect(homePage.invokeSource)
                            //image2.invokeSoure.connect(homePage.invokeSource)
                            image2.invokeIndex.connect(homePage.invokeIndex)
                        }
                    }
                }
            }
        }
        GridLayout{
            id:gridLayout
            anchors.top: subRec.bottom
            anchors.topMargin: 1
            //anchors.leftMargin: 10
            anchors.left: subRec.left
            anchors.right: subRec.right
            anchors.bottom:parent.bottom
            rows: 4
            columns: 3
            NewPatientGroupLabel{
                id:operatorLabel
                text: StringConstants.lbl_existingOperators
                //color: StringConstants.actionBtnBackgroundColor
                Layout.alignment: Qt.AlignTop |Qt.AlignLeft
                font { family: OtherConstants.fontFamily; pixelSize: pixelSize; weight: Font.Bold; capitalization: Font.MixedCase }
                //anchors.left: parent.left
                //anchors.right: parent.right
                Layout.fillWidth: true
                //Layout.column: 1
                //Layout.columnSpan: 3
                Layout.rowSpan: 1
                Layout.row: 1
                Layout.minimumHeight: 30
                //height: 50
            }
            Rectangle{
                id:rectangle2
                color: "transparent"
                anchors.top: operatorLabel.bottom
                anchors.left: parent.left
                anchors.right: parent.right
                //anchors.bottom: parent.bottom//rectangle6.top
                Layout.column: 1
                Layout.columnSpan: 3
                Layout.fillHeight: true
                Layout.fillWidth: true
                Layout.row: 2
                Layout.preferredHeight: parent.height - operatorLabel.height - 50
                Layout.minimumHeight: parent.height - operatorLabel.height - 50
                Layout.maximumHeight:  parent.height - operatorLabel.height  -50
                Layout.minimumWidth: parent.width//parent.width/2 + parent.width/4
                Layout.bottomMargin: 50
                Rectangle
                {
                    id:tableRec
                    anchors.fill: parent
                    //anchors.leftMargin: 10
                    //anchors.rightMargin: 10
                    //anchors.bottomMargin: 10
                    //anchors.topMargin: 10
                    //border.width: 3
                    //border.color: StringConstants.actionBtnBackgroundColor
                    CommonTableGrid{
                        id:curTestTabs1
                        anchors.fill: parent
                        //anchors.leftMargin: 10
                        //anchors.rightMargin: 10
                        //anchors.bottomMargin: 10
                        //anchors.topMargin: 10
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        commonTableModel: theOperatorModel
                        repeaterModel: 3//theOperatorModel
                        //tableModel: theExistingPatientsModel
                        proxySoure: theOperatorModel
                        searchRecVisibilty: false
                    }
                }

            }
            Rectangle{
                id:rectangle3
                color: "transparent"
                anchors.top: rectangle2.bottom
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.bottom: parent.bottom
                Layout.row: 3
                Layout.rowSpan: 1
                Layout.column: 1
                Layout.columnSpan: 3
                Row{
                    id:subRowlayout
                    anchors.fill: parent
                    Label {
                        id: labelActive
                        text:StringConstants.lbl_active
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 0
                        anchors.top: parent.top
                        anchors.topMargin: 0
                        anchors.left: parent.left
                        anchors.leftMargin: 10 //qsTr("Label")
                        color: StringConstants.readonlyColor
                    }
                    Label {
                        id: labelInactive
                        text:StringConstants.lbl_inactive
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        anchors.left: labelActive.right
                        anchors.leftMargin: 10
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 0
                        anchors.top: parent.top
                        anchors.topMargin: 0 //qsTr("Label")
                        color: StringConstants.readonlyColor
                    }
                    Label {
                        id: labelShowInactive
                        text:StringConstants.lbl_showInactive
                        anchors.leftMargin: 0
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignRight
                        anchors.left: labelInactive.right
                        //anchors.leftMargin: 10
                        anchors.right: chk_inactive.left
                        anchors.rightMargin: 10
                        anchors.bottom: parent.bottom
                        anchors.bottomMargin: 0
                        anchors.top: parent.top
                        width: 40
                        anchors.topMargin: 0 //qsTr("Label")
                        //color: StringConstants.readonlyColor
                    }
                    CheckBox{
                        id:chk_inactive
                        anchors.verticalCenter: parent.verticalCenter
                        display: AbstractButton.IconOnly
                        anchors.right: parent.right
                        anchors.rightMargin: 10
                    }
                }

            }

        }

    }
    function openEditDialog()
    {
        editDialog.open()
        console.log("I was invoked to open a dialog")
    }

    AdminOperation{
        id:adminDialog
        width: parent.width - 100
        height: parent.height - 100
        anchors.centerIn: parent
        Component.onCompleted: {
            openEdit.connect(dialog.openEditDialog)
        }


    }
    EditOperator{
        id:editDialog
        anchors.centerIn: parent
        width: parent.width - 50
        height:  parent.height - 50
    }
}













































/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
