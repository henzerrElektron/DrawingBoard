import QtQuick 2.0
import "."
import "./../images/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
ListModel{
    id:testControlModel
    ListElement{
        btnName:"playCentral"
        index:1
        btnIconName:"icon_test_standard"
        btnIconSource:"qrc:/images/icon_test_standard.png";//"images/icon_new_patient.png"
        btnIconColor:"transparent"
    }
    ListElement{
        btnName:"playPeripheral"
        index:2
        btnIconName:"icon_play_detailed"
        btnIconSource:"qrc:/images/icon_play_detailed.png";//"images/icon_new_patient.png"
        btnIconColor:"transparent"
    }
    ListElement{
        btnName:"pauseAll"
        index:3
        btnIconName:"icon_pause"
        btnIconSource:"qrc:/images/icon_pause.png";//"images/icon_new_patient.png"
        btnIconColor:"transparent"

    }
    ListElement{
        btnName:"stopAll"
        index:4
        btnIconName:"icon_stop"
        btnIconSource:"qrc:/images/icon_stop.png";//"images/icon_new_patient.png"
        btnIconColor:"transparent"
    }
    ListElement{
        btnName:"saveAll"
        index:5
        btnIconName:"icon_save"
        btnIconSource:"qrc:/images/icon_save.png";//"images/icon_new_patient.png"
        btnIconColor:"transparent"
    }
}
