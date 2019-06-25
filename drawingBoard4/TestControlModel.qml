import QtQuick 2.0
import "."
import "./images/"
ListModel{
    id:testControlModel
    ListElement{
        btnName:"playCentral"
        index:1
        btnSource:"images/icon_new_patient.png"
    }
    ListElement{
        btnName:"playPeripheral"
        index:2
        btnSource:"images/icon_new_patient.png"
    }
    ListElement{
        btnName:"pauseAll"
        index:3
        btnSource:"images/icon_new_patient.png"
    }
    ListElement{
        btnName:"stopAll"
        index:4
        btnSource:"images/icon_new_patient.png"
    }

}
