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
import QtQuick.Controls 2.5
import "."
import "./../images/"
//import "./../../delegates/"
import "./../models/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0

Component {
    id: colordelegateComponent

    Label {
        id:lbl
        // height: 100
        // width: 200
        //width:pathView.width/(Tumbler.tumbler.visibleItemCount/2)
        text:name// formatText(Tumbler.tumbler.count, modelData)
        color: name==="Brown"?"white":"black"
        opacity: 1.0 - Math.abs(Tumbler.displacement) / (Tumbler.tumbler.visibleItemCount/2)//- Math.abs(Tumbler.displacement) / (Tumbler.tumbler.visibleItemCount / 2)
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: fontMetrics.font.pixelSize * 1.25
        background: Rectangle{
            id:rec1
            width: lbl.width/Tumbler.tumbler.visibleItemCount
            //height: lbl.height
            anchors.centerIn: parent
            opacity: pathView.view.currentItem?1.0:0.2//1.0 - Math.abs(Tumbler.displacement) / (Tumbler.tumbler.visibleItemCount/2)
            color: value
        }
    }
}

