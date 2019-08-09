import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Window 2.0
import "."
import "./../images/"
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
ListModel{
    id:navDelegateModel
    ListElement{
        navName:"first";
        iconName: "icon_to_first"
        iconSource: "qrc:/images/icon_to_first.png"
        iconColor: "transparent"
        index:1;
    }
    ListElement{
        navName:"prev";
        iconName:"icon_to_previous"
        iconSource:"qrc:/images/icon_to_previous.png"
        iconColor: "transparent"
        index:2;
    }
    ListElement{
        actionName:"next";
        iconName:"icon_to_next"
        iconSource:"qrc:/images/icon_to_next.png"
        iconColor: "transparent"
        index:3;
    }
    ListElement{
        actionName:"last";
        //homeAction:false;
        newPatientAction:true;
        //existingPatientAction:true;
        testPageAction:true;
        iconName: "icon_to_last"
        iconSource: "qrc:/images/icon_to_last.png"
        iconColor: "transparent"
        index:4;
    }

}
