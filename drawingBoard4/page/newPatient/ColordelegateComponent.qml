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
import "./../../images/"
import "./../../delegates/"
import "./../../models/"
import ApplicationContstants 1.0

Component {
    id: colordelegateComponent
    //Rectangle{
    //    id:lblRec
    //    color: value
    //    width: parent.width/5
        //property alias lblHeight: lbl.height
        Label {
            id:lbl
            //height: 25
            //implicitWidth: 25
            //implicitHeight: 10
            //anchors.fill: parent
            //width: parent.width/Tumbler.tumbler.visibleItemCount//100//
            //height: parent.height
            text:name// formatText(Tumbler.tumbler.count, modelData)
            //color: name==="Brown"?"white":"black"
            opacity: 1.0 - Math.abs(Tumbler.displacement) / (Tumbler.tumbler.visibleItemCount / 2)//- Math.abs(Tumbler.displacement) / (Tumbler.tumbler.visibleItemCount / 2)
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: fontMetrics.font.pixelSize * 1.25

            //            background:
            //                Rectangle{
            //                id:rec
            //               // implicitHeight: 50
            //               // implicitWidth: 50
            //                //border.color: "black"
            //                //border.width: 1
            //                //height: 30
            //                //width: 100
            //                //            width: 10
            //                //            height: 10
            //                //            implicitHeight: 10
            //                //            implicitWidth: 40
            //                //           anchors.fill: parent
            //                color:value// "green"//
            //            }

        }
    //}
}


