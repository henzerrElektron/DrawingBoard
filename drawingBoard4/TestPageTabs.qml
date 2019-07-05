import QtQuick 2.12
import QtQuick.Controls 2.5
import ApplicationContstants 1.0
import "."
import "./common/"
import "./imports/ApplicationContstants/"
//Item {
Rectangle{
    color: "green"
    //    Row{
    //        Text {
    //            id: name
    //            width: 100
    //            height: 100
    //            //text: qsTr("text")
    //            font: {
    //                family:Constants.awefontFamily
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
//                family:Constants.icons
//                pixelsize:42

//            }
//            onFontChanged: {
//                console.log("font loaded")
//            }

//            color: "#ffffff"
//            text: "\uf234"
//        }
        FontAwesomeToolButton {
            //width: 100
            //height: 100
            text: "\uf234"
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
