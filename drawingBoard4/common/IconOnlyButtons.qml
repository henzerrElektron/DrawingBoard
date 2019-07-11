import QtQuick 2.12
import QtQuick.Controls 2.5
import ApplicationContstants 1.0
import "."
import "./../imports/ApplicationContstants/"
import "."
import "./../images"
import "./../imports/"
import "./../icons/all/"
ToolButton {
    id: iconlOnlyButtons
    implicitWidth:  50
    implicitHeight:  50
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
