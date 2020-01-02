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
import "./../images/"
//import "./../../imports/"
import "./../models/"
import "./../delegates/"
import "./../page/test/"
import "./../page/home/"
import "./../page/newPatient/"
import ApplicationConstants 1.0
/*!
   \qmltype ReportPageBtn
   \brief This provides a text only tool button.

  This is used mainly in ReportPage classes,specifically in ReportPageDateBtnGroup,ReportOKCancelGroup,ReportPatientDateGrid,ReportPraticeDateGrid and ReportDateGrid.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of ReportPageBtn is demonstrated below
   \qml
            ReportPageBtn{
                id:reportBtn
                height: GridView.view.cellHeight/2//parent.height/4
                width: parent.width/4
                text: actionName
                Package.name: filterName
                Component.onCompleted: {
                    invokeSource.connect(theListView.invokeSource)
                    invokeIndex.connect(theListView.invokeIndex)
                    test.connect(theListView.tested)
                }
            }
   \endqml

*/
ToolButton {
    id: control
    //text: qsTr("Button")
    property alias backRecHeight: backRec.height
    signal invokeSource(string source)
    signal invokeIndex(int index)
    signal test()
    onTest: console.log("I am tested")
    font { family: OtherConstants.fontFamily; pixelSize: pixelSize; weight: Font.Bold; capitalization: Font.MixedCase }
    display: AbstractButton.TextOnly
    text: actionText
    contentItem: Text {
        text: control.text
        font: control.font
        opacity: enabled ? 1.0 : 0.3
        color: control.down ? "blue" : "white"//"#17a81a":"#21be2b"
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        elide: Text.ElideRight
    }

    background: Rectangle {
        id:backRec
        implicitWidth: 120
        implicitHeight: 50
        //opacity: enabled ? 1 : 0.3
        color: control.down ? StringConstants.actionBtnBackgroundColor:StringConstants.headerBackgroundColor//
        border.color: control.down ? StringConstants.actionBtnBackgroundColor:StringConstants.headerBackgroundColor//"#17a81a" : "#21be2b"
        border.width: 1
        radius: 2
    }
    onClicked: {
        console.log("clicked on"+actionName)
        console.log("The source is"+actionName)
        console.log("The index is"+index)
        invokeSource(actionName)
        invokeIndex(index)
        test()
        //clickedButton(index)
    }
}
