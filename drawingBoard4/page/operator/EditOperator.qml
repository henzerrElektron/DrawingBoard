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
import ApplicationConstants 1.0
/*!
   \qmltype EditOperator
   \brief Contains the dialog box to edit  operators

  This is used in ManageOperator .
   \image tobeprovided.png

   \section1 Sample usage

   The usage of EditOperator is demonstrated below
   \qml
       EditOperator{
           id:opManage
           width: parent.width - 2* (parent.width/10)
           height: parent.height - 2*(parent.height/10)
           anchors.centerIn: parent
       }
   \endqml

*/
Dialog {
    id: dialog
    modal: true
    title: StringConstants.lbl_editOperator
    standardButtons: Dialog.Ok | Dialog.Cancel
    Rectangle{
        id:mainRec
        anchors.fill: parent

        Label {
            id: label
            text:StringConstants.operatorHeading //qsTr("Label")
            height: 50
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.bottomMargin: 10
        }

       // GridLayout{
        Grid{
            anchors.top: label.bottom
           // anchors.fill: parent
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom:parent.bottom
            rows: 3
            columns: 2
            //                        NewPatientLabelWithText{
            //                            id:oneLabel
            //                            Layout.row: IntegerConstants.rowCount1
            //                            Layout.rowSpan: IntegerConstants.rowSpan1
            //                            Layout.column: IntegerConstants.columnCount1
            //                            Layout.columnSpan: IntegerConstants.columnSpan3
            //                            //Layout.fillHeight: true
            //                            Layout.fillWidth: true
            //                            height: 45
            //                            Layout.alignment: Qt.AlignLeft | Qt.AlignTop
            //                            Layout.topMargin: 10
            //                            Layout.rightMargin: 10
            //                            labelOnTop: false
            //                            labelText:StringConstants.operatorName
            //                            tfReadOnly:false
            //                            tfPlaceHolderText:StringConstants.operatorNameReq
            //                            textValidator:RegExpValidator{regExp:StringConstants.txtValidatorWordsOnly}///^\+?\d+$/
            //                            lblValueVisible: false
            //                            textAlignLeftOrCenter:false
            //                            lblLeftPadding:75
            //                            txtVisible:true
            //                            itemVisible: true
            //                            commonColor: StringConstants.label_NewPatientLabelBgColor
            //                        }
            Label{
                id:opLabel
                anchors.left: currentOpLabel.left
               // Layout.row: IntegerConstants.rowCount1
              //  Layout.rowSpan: IntegerConstants.rowSpan1
              //  Layout.column: IntegerConstants.columnCount1
              //  Layout.columnSpan: IntegerConstants.columnSpan1
                height:opText.height //45
                text:StringConstants.operatorName
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter

               // Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
            }
            TextField{
                id:opText
                width: parent.width/4
                anchors.left: opLabel.right
                anchors.right: parent.right
                anchors.leftMargin: parent.width/4
               // Layout.row: IntegerConstants.rowCount1
              //  Layout.rowSpan: IntegerConstants.rowSpan1
              //  Layout.column: IntegerConstants.columnCount2
              //  Layout.columnSpan: IntegerConstants.columnSpan1
                placeholderText:StringConstants.operatorNameReq
                validator:RegExpValidator{regExp:StringConstants.txtValidatorWordsOnly}///^\+?\d+$/
                font.bold: true
             //   Layout.minimumWidth: parent.width/2
                font.pixelSize:15// Constants.testPage_lblFontSize//25
                font.weight: Font.ExtraBold
                renderType: Text.QtRendering
                color: StringConstants.actionBtnBackgroundColor//
            }

            Label {
                id: activeLabel
                anchors.left: currentOpLabel.left
                anchors.top: opLabel.bottom
                text:StringConstants.operatorActive
                //anchors.horizontalCenter: parent.horizontalCenter
                anchors.verticalCenter: checkBox.verticalCenter
               // Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter //qsTr("Label")
               // Layout.row: IntegerConstants.rowCount2
               // Layout.rowSpan: IntegerConstants.rowSpan1
              //  Layout.column: IntegerConstants.columnCount1
              //  Layout.columnSpan: IntegerConstants.columnSpan1
                //Layout.minimumWidth: parent.width/3
            }

            CheckBox {
                id: checkBox
                anchors.left: opText.left
                anchors.right: opText.right
                anchors.top: opText.bottom
                //Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
               // Layout.row: IntegerConstants.rowCount2
               // Layout.rowSpan: IntegerConstants.rowSpan1
               // Layout.column: IntegerConstants.columnCount2
               // Layout.columnSpan: IntegerConstants.columnSpan1
                //text: qsTr("Check Box")
                display: AbstractButton.IconOnly
            }

            Label {
                id: currentOpLabel
               // anchors.top: checkBox.bottom
                anchors.verticalCenter: checkBox1.verticalCenter
                text:StringConstants.currentOperator
                //Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter //qsTr("Label")
                //Layout.row: IntegerConstants.rowCount3
                //Layout.rowSpan: IntegerConstants.rowSpan1
                //Layout.column: IntegerConstants.columnCount1
                //Layout.columnSpan: IntegerConstants.columnSpan1
            }


            CheckBox {
                id: checkBox1
                anchors.left: opText.left
                anchors.right: opText.right
                anchors.top: checkBox.bottom
                Layout.alignment: Qt.AlignRight | Qt.AlignVCenter
                //text: qsTr("Check Box")
                display: AbstractButton.IconOnly
               // Layout.row: IntegerConstants.rowCount3
               // Layout.rowSpan: IntegerConstants.rowSpan1
               // Layout.column: IntegerConstants.columnCount2
              //  Layout.columnSpan: IntegerConstants.columnSpan1
            }
        }



    }

    onAccepted: console.log("Ok clicked")
    onRejected: console.log("Cancel clicked")
}





















/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1;anchors_x:301;anchors_y:25}
}
 ##^##*/
