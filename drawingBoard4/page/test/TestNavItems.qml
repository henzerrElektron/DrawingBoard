import QtQuick 2.0
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import "."
import "./../../images/"
import "./../../delegates/"
import "./../../models/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0

GridView{
    id:testItems
    flickableDirection: Flickable.HorizontalFlick
    cellWidth: 50//navToolButton.width
    cellHeight: 50//navToolButton.height
    width: modelCount * cellWidth
    height: cellHeight
    //anchors.fill: parent
    //implicitHeight:100
    //implicitWidth:360
    // layoutDirection:
    model: TestPatientNavigationModel{}
    flow:GridView.LeftToRight
    //spacing: 10
    //height:4* testControlBtn.height
    //Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
    //Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
    delegate:TestNavDelegate{}
    //highlight: Rectangle { color: "lightsteelblue"; radius: 5 }
    flickDeceleration: Flickable.HorizontalFlick
}



/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
