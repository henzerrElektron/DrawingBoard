import QtQuick 2.12
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
   \brief Contains the dialog box to allow operators to perform admin operations

  This is used in ManageOperator .
   \image tobeprovided.png

   \section1 Sample usage

   The usage of AdminOperation is demonstrated below
   \qml
    AdminOperation{
        id:adminDialog
        width: parent.width - 100
        height: parent.height - 100
        anchors.centerIn: parent
        Component.onCompleted: {
            openEdit.connect(dialog.openEditDialog)
        }
   \endqml

*/
Dialog {
    id: dialog
    modal: true
    title: StringConstants.lbl_adminHeading
    standardButtons: Dialog.Ok | Dialog.Cancel
    signal openEdit()
onAccepted: {
    openEdit()
    dialog.close()
}

    //height: mainRec.height
    Rectangle{
        id:mainRec
        anchors.fill: parent
        Label {
            id: label
            text:StringConstants.lbl_adminText //qsTr("Label")
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 10
        }
        GridLayout{
            anchors.top: label.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.bottom:parent.bottom
            rows: 4
            columns: 3
            //NewPatientLabelWithText{
            LabelWithText{
                id:oneLabel
                Layout.row: IntegerConstants.rowCount1
                Layout.rowSpan: IntegerConstants.rowSpan1
                Layout.column: IntegerConstants.columnCount1
                Layout.columnSpan: IntegerConstants.columnSpan3
                //Layout.fillHeight: true
                Layout.fillWidth: true
                height: 45
                Layout.alignment: Qt.AlignLeft | Qt.AlignTop
                Layout.topMargin: 10
                Layout.rightMargin: 10
                labelOnTop: false
                labelText:StringConstants.lbl_password
                tfReadOnly:false
                tfPlaceHolderText:StringConstants.lbl_passwordReq
                textValidator:RegExpValidator{regExp:StringConstants.txtValidatorWordsOnly}///^\+?\d+$/
                lblValueVisible: false
                textEchoMode:TextInput.Password
                textAlignLeftOrCenter:false
                lblLeftPadding:75
                txtVisible:true
                itemVisible: true
                commonColor: StringConstants.label_NewPatientLabelBgColor
            }
        }

    }
}
