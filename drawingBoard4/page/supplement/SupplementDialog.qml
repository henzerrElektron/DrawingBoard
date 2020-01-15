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
import ApplicationConstants 1.0
/*!
   \qmltype SupplementDialog
   \brief Contains Component to draw a single cell in XYCrossGridView

  This Component uses shapes
  This Component is used as a delegate

   \image tobeprovided.png

   \section1 Sample usage

   To draw Component to indicate test results
   \qml
    GridCrossDelegate {
        id: gridCrossDelegate
    }
   \endqml

*/
Dialog {
    id: dialog
    modal: true
    title: StringConstants.lbl_supplementation
    standardButtons: Dialog.Ok | Dialog.Cancel
    Rectangle
    {
        id:mainRec
        anchors.fill: parent
        NewPatientMedicalDetailsRiskFactorGroup{
            id:modelgroup
            filterName: StringConstants.model_supplementationItems
            anchors.fill: parent
            Layout.fillHeight: true
            Layout.fillWidth: true
            verticalLayoutDirection: Grid.TopToBottom
            layoutDirection:Qt.LeftToRight
            flow: Grid.LeftToRight
            flickableDirection: Flickable.HorizontalAndVerticalFlick
            Component.onCompleted: {
                console.log("The process is completed")
            }
        }
    }
}
