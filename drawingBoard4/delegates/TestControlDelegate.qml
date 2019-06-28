import QtQuick 2.0
import QtQuick.Controls 2.3
import QtQuick.Layouts 1.3
import "."
import "./../images/"
import ApplicationContstants 1.0
Component{
    id:testControlDelegate
    //                Connections{
    //                    target: parent
    //                    onClickedButton:
    //                    {
    //                        console.log("Argument:"+arg)
    //                    }
    //                }
    
    RoundButton {
        id:testControlBtn
        icon.source:btnSource
        width:3* icon.width
        height:3* icon.height
        display: AbstractButton.IconOnly
        radius: 10
        onClicked: {
            console.log("clicked on"+btnName)
            clickedButton(index)
        }
    }
    
}
