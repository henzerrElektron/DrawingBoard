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
import QtQuick.Controls 2.5
import Qt.labs.settings 1.0
import QtQuick.Controls.Styles 1.4
//import QtQuick.Controls 1.4
import QtQuick.Shapes 1.11
import "."
import "./../images"
import "./../imports/"
import "./../icons/all/"
import ApplicationContstants 1.0
ToolButton {
    id: navToolButton
    //width: 60
    //height: 60
    //text: qsTr("Tool Button")
    background: Rectangle{
        color: "white"
    }
    autoExclusive: true
    icon.width: 50
    icon.height: 50
    width:50
    height: 50
    icon.name: iconName//"icon_to_last"
    icon.source: iconSource//"qrc:/images/icon_to_last.png"
    icon.color: iconColor//"transparent"
    display: AbstractButton.IconOnly
}
