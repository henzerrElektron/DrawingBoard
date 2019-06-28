import QtQuick 2.0
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import "."
import "./../../images/"
import "./../../delegates/"
import "./../../models/"
import ApplicationContstants 1.0
ListView{
    id:testItems
    //anchors.fill: parent
    implicitHeight:100
    implicitWidth:360
    model: TestControlModel{}
    spacing: 10
    //height:4* testControlBtn.height
    Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
    //Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
    delegate:TestControlDelegate{}
    //highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
    flickDeceleration: Flickable.VerticalFlick
}
