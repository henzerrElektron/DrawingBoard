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
import "."
import "./../images/"
import "./../delegates/"
//import "./../../models/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
/*!
   \qmltype ColorModel
   \brief This contains the model of the color of the eyes

  This is used in the NewPatientDataDial which is also used by NewPatientMedicalRiskFactors.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of AllPageModel is demonstrated below
   \qml
    AllPageModel {
        id: allPageModel
    }
   \endqml

*/
ListModel {
    id: colorModel
    //ListElement{name:"Unknown";value:"white"}
    ListElement {name: "Amber";value:"#ffbf00"}
    ListElement {name: "Black";value:"#B4B4B4"}
    ListElement {name: "Blue";value:"#a1caf1"}
    ListElement {name: "Brown";value:"#38101c"}
    ListElement {name: "Green";value:"#6ca580"}
    ListElement {name: "Grey";value:"#c5d7db"}
    ListElement {name: "Hazel";value:"#d0c383"}
    ListElement{name:"Other";value:"white"}
}
