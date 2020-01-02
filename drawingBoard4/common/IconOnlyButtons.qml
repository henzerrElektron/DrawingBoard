import QtQuick 2.12
import QtQuick.Controls 2.5
import ApplicationConstants 1.0
import "."
//import "./../imports/ApplicationConstants/"
import "."
import "./../images"
//import "./../imports/"
import "./../icons/all/"
/*!
   \qmltype IconlOnlyButtons
   \brief This provides a tool buttons without text.

  This is used in the RiskFactorHeaderDelegate.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of IconlOnlyButtons is demonstrated below
   \qml
    IconOnlyButtons{
        id:addSupplement
        visible: true
        anchors.fill:parent
        icon.name:   "add_supplement"
        icon.source:   "qrc:/images/add_supplement.png"
        icon.color:  "transparent"
    }
   \endqml

*/
ToolButton {
    id: iconlOnlyButtons
    implicitWidth:  50
    implicitHeight:  50
    //property alias iconName: iconlOnlyButtons.icon.name//icon.name
   // property alias iconSource: iconlOnlyButtons.icon.source
    //property alias iconOnlyName: icon.name
    //property alias iconOnlySource: icon.source
    //property alias iconOnlyColor: icon.color
    //width: 60
    //height: 60
    //text: qsTr("Tool Button")
    background: Rectangle{
        color: "transparent"
    }
    //autoExclusive: true
    icon.width: 50
    icon.height: 50
    width:50
    height: 50
    icon.name: "icon_to_last"
    icon.source: "qrc:/images/icon_to_last.png"
    icon.color: "transparent"
    display: AbstractButton.IconOnly
}
