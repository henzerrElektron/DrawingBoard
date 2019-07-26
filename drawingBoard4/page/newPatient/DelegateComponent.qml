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
    id: delegateComponent
//    Rectangle {
//        id: name

        Label {
            id:lbl
            text: formatText(Tumbler.tumbler.count, modelData)
            opacity: 1.0 - Math.abs(Tumbler.displacement) / (Tumbler.tumbler.visibleItemCount / 2)
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: fontMetrics.font.pixelSize * 1.25
        }

//        Rectangle {
//            anchors.verticalCenter:  Tumbler.tumbler.verticalCenter
//            x: Tumbler.tumbler.width * 0.4
//            height: 40
//            width: 1
//            color: "#21be2b"
//        }

//        Rectangle {
//            anchors.verticalCenter:  Tumbler.tumbler.verticalCenter
//            y: Tumbler.tumbler.width * 0.6
//            height: 40
//            width: 1
//            color: "#21be2b"
//        }
//    }

}
