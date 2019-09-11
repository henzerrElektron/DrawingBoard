import QtQuick 2.12
import QtQuick.Controls 2.5
import QtQuick.Window 2.0
//import QtQml.Models 2.1
import "."
import "./../images/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
ListModel{
    id:actionDelegateModel
    ListElement{
        actionName:"Home";
        homeAction:true;
        newPatientAction:true;
        existingPatientAction:true;
        testPageAction:true;
        reportPageAction:true;
        actionText:"Home"
        actionIconName:"icon_home"
        actionIconSource:"qrc:/images/icon_home.png"
        actionIconColor:"transparent"
        actionImgSource:"qrc:/images/icon_home.png";//icon.name: "timeline_tab_selected"
        source:"qrc:/page/mainPages/HomePage.qml"//"qrc:/page/test/TestPage.qml"//"qrc:/page/home/home.qml"
        index:1;
    }
    ListElement{
        actionName:"Setting";
        homeAction:true;
        newPatientAction:true;
        existingPatientAction:true;
        testPageAction:true;
        actionText:"Setting"
        actionIconName:"icon_setting"
        actionIconSource:"qrc:/images/icon_setting.png"
        actionIconColor:"transparent"
        actionImgSource:"qrc:/images/icon_setting.png";//"../images/icon_new_patient.png";
        source:"qrc:/page/mainPages/HomePage.qml"
        index:2;
    }
    ListElement{
        actionName:"Help";
        homeAction:true;
        newPatientAction:true;
        existingPatientAction:true;
        testPageAction:true;
        actionText:"Help"
        actionIconName:"icon_help"
        actionIconSource:"qrc:/images/icon_help.png"
        actionIconColor:"transparent"
        actionImgSource:"qrc:/images/icon_help.png";//"../images/icon_new_patient.png";
        source:"qrc:/page/mainPages/HomePage.qml"
        index:3;
    }
    ListElement{
        actionName:"changePatient";
        homeAction:false;
        newPatientAction:true;
        //existingPatientAction:true;
        testPageAction:true;
        actionText:"Switch Patient"
        actionIconName:"icon_switch_patient"
        actionIconSource:"qrc:/images/icon_switch_patient.png"
        actionIconColor:"transparent"
        actionImgSource:"qrc:/images/icon_switch_patient.png";//"../images/icon_new_patient.png";
        source:"qrc:/page/mainPages/SwitchPatient.qml"
        index:4;
    }
    ListElement{
        actionName:"savePatient";
        homeAction:false;
        newPatientAction:true;
        //existingPatientAction:true;
        //testPageAction:true;
        actionIconName:"icon_save"
        actionText:"Save Patient"
        actionIconSource:"qrc:/images/icon_save.png"
        actionIconColor:"transparent"
        actionImgSource:"qrc:/images/icon_save.png";//"../images/icon_new_patient.png";
        source:"qrc:/page/mainPages/SwitchPatient.qml"
        index:5;
    }
    ListElement{
        actionName:"testPatient";
        homeAction:false;
        newPatientAction:true;
        existingPatientAction:true;
        //testPageAction:true;
        actionText:"Test Patient"
        actionIconName:"icon_test_patient"
        actionIconSource:"qrc:/images/icon_test_patient.png"
        actionIconColor:"transparent"
        actionImgSource:"qrc:/images/icon_test_patient.png";//"../images/icon_new_patient.png";
        source:"qrc:/page/mainPages/TestPage.qml"
        index:6;
    }
    ListElement{
        actionName:"newPatient";
        homeMainAction:true;
        //homeAction:false;
        //newPatientAction:true;
        existingPatientAction:true;
        //testPageAction:true;
        actionText:"New Patient"
        actionIconName:"icon_new_patient"
        actionIconSource:"qrc:/images/icon_new_patient.png"
        actionIconColor:"transparent"
        actionImgSource:"../images/icon_new_patient.png";
        source:"qrc:/page/mainPages/NewPatientPage.qml"
        index:7;
    }
    ListElement{
        actionName:"editPatient";
        homeMainAction:true;
        //homeAction:false;
        //newPatientAction:true;
        existingPatientAction:true;
        testPageAction:true;
        actionText:"Edit Patient"
        actionIconName:"icon_edit_patient"
        actionIconSource:"qrc:/images/icon_edit_patient.png"
        actionIconColor:"transparent"
        actionImgSource:"../images/icon_new_patient.png";
        source:"qrc:/page/mainPages/SwitchPatient.qml"
        index:8;
    }
    ListElement{
        actionName:"viewPatientReport";
        homeMainAction:true;
        //homeAction:false;
        //newPatientAction:true;
        //existingPatientAction:true;
        testPageAction:true;
        reportPageAction:true;
        actionText:"View Patient Report"
        actionIconName:"icon_view_report"
        actionIconSource:"qrc:/images/icon_view_report.png"
        actionIconColor:"transparent"
        actionImgSource:"qrc:/images/icon_view_report.png";
        source:"qrc:/page/mainPages/ReportPage.qml"
        index:9;
    }
    ListElement{
        actionName:"addOperator";
        //homeAction:false;
        //newPatientAction:true;
        //existingPatientAction:true;
        //testPageAction:true;
        //reportPageAction:true;
        operatorPageAction:true;
        actionText:"Add Operator"
        actionIconName:"icon_add_operator"
        actionIconSource:"qrc:/images/icon_add_operator.png"
        actionIconColor:"transparent"
        actionImgSource:"qrc:/images/icon_add_operator.png";
        source:"qrc:/page/mainPages/HomePage.qml"
        index:10;
    }
    ListElement{
        actionName:"editOperator";
        //homeAction:false;
        //newPatientAction:true;
        //existingPatientAction:true;
        //testPageAction:true;
        //reportPageAction:true;
        operatorPageAction:true;
        actionText:"Edit Operator"
        actionIconName:"icon_edit_operator"
        actionIconSource:"qrc:/images/icon_edit_operator.png"
        actionIconColor:"transparent"
        //actionImgSource:"../images/icon_new_patient.png";
        actionImgSource:"qrc:/images/icon_edit_operator.png";//"../images/icon_new_patient.png";
        source:"qrc:/page/mainPages/HomePage.qml"
        index:11;
    }
    ListElement{
        actionName:"switchOperator";
        //homeAction:false;
        //newPatientAction:true;
        //existingPatientAction:true;
        //testPageAction:true;
        //reportPageAction:true;
        homeMainAction:true;
        operatorPageAction:true;
        actionText:"Switch OPerator"
        actionIconName:"icon_switch_operator"
        actionIconSource:"qrc:/images/icon_switch_operator.png"
        actionIconColor:"transparent"
        //actionImgSource:"../images/icon_new_patient.png";
        actionImgSource:"qrc:/images/icon_switch_operator.png";//"../images/icon_new_patient.png";
        source:"qrc:/page/mainPages/HomePage.qml"
        index:12;
    }
}
