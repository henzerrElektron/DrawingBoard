import QtQuick 2.12
import QtQuick.Controls 2.5
import ApplicationConstants 1.0
import "."
import "./common/"
//import "./imports/ApplicationConstants/"
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
//Item {
Rectangle{
    color: "white"
    //    Row{
    //        Text {
    //            id: name
    //            width: 100
    //            height: 100
    //            //text: qsTr("text")
    //            font: {
    //                family:OtherConstants.awefontFamily
    //                pixelsize:42

    //            }
    //            onFontChanged: {
    //                console.log("font loaded")
    //            }

    //            color: "#ffffff"
    //            text: "\uf234"
    //        }
    Grid {
        columns: 3
//        Text {
//            id: name
//            width: 100
//            height: 100
//            //text: qsTr("text")
//            font: {
//                family:OtherConstants.icons
//                pixelsize:42

//            }
//            onFontChanged: {
//                console.log("font loaded")
//            }

//            color: "#ffffff"
//            text: "\uf234"
//        }
        FontAwesomeToolButton {
            width: 100
            height: 100
            text: "\uf234"
            Component.onCompleted: setFontColor("red")
            //fontColor:"blue"
        }
        FontAwesomeToolButton {
            text: "\uf556"
        }
        FontAwesomeToolButton {
            text: "\uf35b"
        }
        FontAwesomeToolButton {
            text: "\uf2bb"
            font.weight: Font.Bold
        }
        FontAwesomeToolButton {
            text: "\uf556"
            font.weight: Font.Bold
        }
        FontAwesomeToolButton {
            text: "\uf35b"
            font.weight: Font.Bold
        }
        FontAwesomeToolButton {
            text: "\uf270"
        }
        FontAwesomeToolButton {
            text: "\uf294"
        }
        FontAwesomeToolButton {
            text: "\uf268"
        }
    }
    // }
}
//}
