import QtQuick 2.2
import QtQuick.Controls 1.1
import QtQuick.Window 2.0
//import QtQml.Models 2.1
import "."
import "./../images/"
ListModel{
    id:actionDelegateModel
    ListElement{
        actionName:"Home";
        homeAction:true;
        newPatientAction:true;
        existingPatientAction:true;
        testPageAction:true;
        actionImgSource:"../images/icon_new_patient.png";
        index:1;
    }
    ListElement{
        actionName:"Setting";
        homeAction:true;
        newPatientAction:true;
        existingPatientAction:true;
        testPageAction:true;
        actionImgSource:"../images/icon_new_patient.png";
        index:2;
    }
    ListElement{
        actionName:"Help";
        homeAction:true;
        newPatientAction:true;
        existingPatientAction:true;
        testPageAction:true;
        actionImgSource:"../images/icon_new_patient.png";
        index:3;
    }
    ListElement{
        actionName:"changePatient";
        //homeAction:false;
        newPatientAction:true;
        //existingPatientAction:true;
        testPageAction:true;
        actionImgSource:"../images/icon_new_patient.png";
        index:4;
    }
    ListElement{
        actionName:"savePatient";
        //homeAction:false;
        newPatientAction:true;
        //existingPatientAction:true;
        //testPageAction:true;
        actionImgSource:"../images/icon_new_patient.png";
        index:5;
    }
    ListElement{
        actionName:"testPatient";
        //homeAction:false;
        newPatientAction:true;
        existingPatientAction:true;
        //testPageAction:true;
        actionImgSource:"../images/icon_new_patient.png";
        index:6;
    }
    ListElement{
        actionName:"newPatient";
        //homeAction:false;
        //newPatientAction:true;
        existingPatientAction:true;
        //testPageAction:true;
        actionImgSource:"../images/icon_new_patient.png";
        index:7;
    }
    ListElement{
        actionName:"editPatient";
        //homeAction:false;
        //newPatientAction:true;
        existingPatientAction:true;
        testPageAction:true;
        actionImgSource:"../images/icon_new_patient.png";
        index:8;
    }
    ListElement{
        actionName:"viewPatientReport";
        //homeAction:false;
        //newPatientAction:true;
        //existingPatientAction:true;
        testPageAction:true;
        reportPageAction:true;
        actionImgSource:"../images/icon_new_patient.png";
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
        actionImgSource:"../images/icon_new_patient.png";
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
        actionImgSource:"../images/icon_new_patient.png";
        index:11;
    }
}
