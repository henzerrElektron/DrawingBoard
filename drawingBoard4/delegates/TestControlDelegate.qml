import QtQuick 2.0
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import "."
import "./../images/"
import ApplicationContstants 1.0
//Component{
//    id:testControlDelegate
//    Connections{
//        target: parent
//        onClickedButton:
//        {
//            console.log("Argument:"+arg)
//        }
//    }
//ToolButton{
//    id:testControlDelegate
//    icon.name:   "icon_play_detailed"
//    icon.source: "qrc:/images/icon_play_detailed.png"
//    icon.color: "transparent"
//    display: AbstractButton.IconOnly
//    width: 50
//    height: 50
//    //icon.width: 50
//    //icon.height: 50
//}

RoundButton {
    id:testControlDelegate
    //icon.name:btnSource
    icon.name: btnIconName  //"icon_play_detailed"
    icon.source:btnIconSource //"qrc:/images/icon_play_detailed.png"
    icon.color: btnIconColor//"transparent"//btnSource//"Test"//
    //icon.color: Constants.actionBtnBackgroundColor
        background: Rectangle{
            color: "white"
        }

    icon.width: 50
    icon.height: 50
    //width: icon.width
    //height: icon.height
    //width:3* icon.width
    //height:3* icon.height
    display: AbstractButton.IconOnly
    //radius: 2
    //    onClicked: {
    //        console.log("clicked on"+btnName)
    //        clickedButton(index)
    //    }
}

//}
