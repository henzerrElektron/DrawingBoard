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
    readonly property var modelElements:[
        {
            actionName:StringConstants.actionText_Home,//"Home",
            homeAction:true,
            newPatientAction:true,
            existingPatientAction:true,
            testPageAction:true,
            //testPageNavAction:false,
            reportPageAction:true,
            testAll:true,
            actionText:StringConstants.actionText_Home,//"Home"
            actionIconName:StringConstants.actionIcon_nameHome,//"icon_home",
            actionIconSource:StringConstants.actionIcon_sourceHome,//"qrc:/images/icon_home.png",
            actionIconColor:StringConstants.color_gbTransparent,//"transparent",
            actionImgSource:StringConstants.actionIcon_sourceHome,//"qrc:/images/icon_home.png",//icon.name: "timeline_tab_selected"
            source:StringConstants.actionIcon_pgSourceHome,//"qrc:/page/mainPages/HomePage.qml",//"qrc:/page/test/TestPage.qml"//"qrc:/page/home/home.qml"
            index:IntegerConstants.actionIndexHome//1
        },
        {
            actionName:StringConstants.actionText_Setting,//"Setting",
            homeAction:true,
            newPatientAction:true,
            existingPatientAction:true,
            testPageAction:true,
            testAll:true,
            actionText:StringConstants.actionText_Setting,//"Setting"
            actionIconName:StringConstants.actionIcon_nameSetting,//"icon_setting",
            actionIconSource:StringConstants.actionIcon_sourceSetting,//"qrc:/images/icon_setting.png",
            actionIconColor:StringConstants.color_gbTransparent,//"transparent",
            actionImgSource:StringConstants.actionIcon_sourceSetting,//"qrc:/images/icon_setting.png",//"../images/icon_new_patient.png";
            source:StringConstants.actionIcon_pgSourceSetting,//"qrc:/page/mainPages/HomePage.qml",
            index:IntegerConstants.actionIndexSetting//2
        },
        {
            actionName:StringConstants.actionText_Help,//"Help",
            homeAction:true,
            newPatientAction:true,
            existingPatientAction:true,
            testPageAction:true,
            testAll:true,
            actionText:StringConstants.actionText_Help,//"Help"
            actionIconName:StringConstants.actionIcon_nameHelp,//"icon_help",
            actionIconSource:StringConstants.actionIcon_sourceHelp,//"qrc:/images/icon_help.png",
            actionIconColor:StringConstants.color_gbTransparent,//"transparent",
            actionImgSource:StringConstants.actionIcon_sourceHelp,//"qrc:/images/icon_help.png",//"../images/icon_new_patient.png";
            source:StringConstants.actionIcon_pgSourceHelp,//"qrc:/page/mainPages/HomePage.qml",
            index:IntegerConstants.actionIndexHelp//3
        },
        {
            actionName:StringConstants.actionText_SwitchPatient,//"changePatient",
            homeAction:false,
            newPatientAction:true,
            testPageAction:true,
            testAll:true,
            actionText:StringConstants.actionText_SwitchPatient,//"Switch Patient"
            actionIconName:StringConstants.actionIcon_nameSwitch,//"icon_switch_patient",
            actionIconSource:StringConstants.actionIcon_sourceSwitch,//"qrc:/images/icon_switch_patient.png",
            actionIconColor:StringConstants.color_gbTransparent,//"transparent",
            actionImgSource:StringConstants.actionIcon_sourceSwitch,//"qrc:/images/icon_switch_patient.png",//"../images/icon_new_patient.png";
            source:StringConstants.actionIcon_pgSourceSwitch,//"qrc:/page/mainPages/SwitchPatient.qml",
            index:IntegerConstants.actionIndexSwitchPatient//4
        },
        {
            actionName:StringConstants.actionText_SavePatient,//"savePatient",
            homeAction:false,
            newPatientAction:true,
            testAll:true,
            actionIconName:StringConstants.actionIcon_nameSave,//"icon_save",
            actionText:StringConstants.actionText_SavePatient,//"Save Patient"
            actionIconSource:StringConstants.actionIcon_sourceSave,//"qrc:/images/icon_save.png",
            actionIconColor:StringConstants.color_gbTransparent,//"transparent",
            actionImgSource:StringConstants.actionIcon_sourceSave,//"qrc:/images/icon_save.png",//"../images/icon_new_patient.png";
            source:StringConstants.actionIcon_pgSourceSave,//"qrc:/page/mainPages/SwitchPatient.qml",
            index:IntegerConstants.actionIndexSavePatient//5
        },
        {
            actionName:StringConstants.actionText_TestPatient,//"testPatient",
            homeAction:false,
            newPatientAction:true,
            existingPatientAction:true,
            testAll:true,
            actionText:StringConstants.actionText_TestPatient,//"Test Patient"
            actionIconName:StringConstants.actionIcon_nameTestPatient,//"icon_test_patient",
            actionIconSource:StringConstants.actionIcon_sourceTestPatient,//"qrc:/images/icon_test_patient.png",
            actionIconColor:StringConstants.color_gbTransparent,//"transparent",
            actionImgSource:StringConstants.actionIcon_sourceTestPatient,//"qrc:/images/icon_test_patient.png",//"../images/icon_new_patient.png";
            source:StringConstants.actionIcon_pgSourceTestPatient,//"qrc:/page/mainPages/TestPage.qml",
            index:IntegerConstants.actionIndexTestPatient//6
        },
        {
            actionName:StringConstants.actionText_NewPatient,//"newPatient",
            homeMainAction:true,
            existingPatientAction:true,
            testAll:true,
            actionText:StringConstants.actionText_NewPatient,//"New Patient"
            actionIconName:StringConstants.actionIcon_nameNewPatient,//"icon_new_patient",
            actionIconSource:StringConstants.actionIcon_sourceNewPatient,//"qrc:/images/icon_new_patient.png",
            actionIconColor:StringConstants.color_gbTransparent,//"transparent",
            actionImgSource:StringConstants.actionIcon_sourceNewPatient,//"../images/icon_new_patient.png",
            source:StringConstants.actionIcon_pgSourceNewPatient,//"qrc:/page/mainPages/NewPatientPage.qml",
            index:IntegerConstants.actionIndexNewPatient//7
        },
        {
            actionName:StringConstants.actionText_EditPatient,//"editPatient",
            homeMainAction:false,
            existingPatientAction:true,
            testPageAction:true,
            testAll:true,
            actionText:StringConstants.actionText_EditPatient,//"Edit Patient"
            actionIconName:StringConstants.actionIcon_nameEditPatient,//"icon_edit_patient",
            actionIconSource:StringConstants.actionIcon_sourceEditPatient,//:"qrc:/images/icon_edit_patient.png",
            actionIconColor:StringConstants.color_gbTransparent,//"transparent",
            actionImgSource:StringConstants.actionIcon_sourceEditPatient,//"../images/icon_new_patient.png",
            source:StringConstants.actionIcon_pgSourceEditPatient,//"qrc:/page/mainPages/SwitchPatient.qml",
            index:IntegerConstants.actionIndexEditPatient//8
        },
        {
            actionName:StringConstants.actionText_ExistingPatient,//"existingPatient",
            homeMainAction:true,
            existingPatientAction:false,
            testPageAction:true,
            testAll:true,
            actionText:StringConstants.actionText_ExistingPatient,//"Existing Patient"
            actionIconName:StringConstants.actionIcon_nameExistingPatient,//"icon_existing_patient",
            actionIconSource:StringConstants.actionIcon_sourceExistingPatient,//"qrc:/images/icon_existing_patient.png",
            actionIconColor:StringConstants.color_gbTransparent,//"transparent",
            actionImgSource:StringConstants.actionIcon_sourceExistingPatient,//"../images/icon_existing_patient.png",
            source:StringConstants.actionIcon_pgSourceExistingPatient,//"qrc:/page/mainPages/SwitchPatient.qml",
            index:IntegerConstants.actionIndexExistingPatient//13
        },
        {
            actionName:StringConstants.actionText_ViewPatientReport,//"viewPatientReport",
            homeMainAction:true,
            testPageAction:true,
            reportPageAction:true,
            testAll:true,
            actionText:StringConstants.actionText_ViewPatientReport,
            actionIconName:StringConstants.actionIcon_nameViewReport,//"icon_view_report",
            actionIconSource:StringConstants.actionIcon_sourceViewReport,//"qrc:/images/icon_view_report.png",
            actionIconColor:StringConstants.color_gbTransparent,//"transparent",
            actionImgSource:StringConstants.actionIcon_sourceViewReport,//"qrc:/images/icon_view_report.png",
            source:StringConstants.actionIcon_pgSourceViewReport,//"qrc:/page/mainPages/ReportPage.qml",
            index:IntegerConstants.actionIndexViewPatient//9
        },
        {
            actionName:StringConstants.actionText_AddOperator,//"addOperator",
            operatorPageAction:true,
            testAll:true,
            actionText:StringConstants.actionText_AddOperator,
            actionIconName:StringConstants.actionIcon_nameAddOperator,//"icon_add_operator",
            actionIconSource:StringConstants.actionIcon_sourceAddOperator,//"qrc:/images/icon_add_operator.png",
            actionIconColor:StringConstants.color_gbTransparent,//"transparent",
            actionImgSource:StringConstants.actionIcon_sourceAddOperator,//"qrc:/images/icon_add_operator.png",
            source:StringConstants.actionIcon_pgSourceAddOperator,//"qrc:/page/operator/ManageOperator.qml",
            index:IntegerConstants.actionIndexAddOperator//10
        },
        {

            actionName:StringConstants.actionText_EditOperator,//"editOperator",
            //homeAction:false;
            //newPatientAction:true;
            //existingPatientAction:true;
            //testPageAction:true;
            //reportPageAction:true;
            operatorPageAction:true,
            testAll:true,
            //testPageNavAction:false,
            actionText:StringConstants.actionText_EditOperator,//"Edit Operator"
            actionIconName:StringConstants.actionIcon_nameEditOperator,//"icon_edit_operator",
            actionIconSource:StringConstants.actionIcon_sourceEditOperator,//"qrc:/images/icon_edit_operator.png",
            actionIconColor:StringConstants.color_gbTransparent,//"transparent",
            //actionImgSource:"../images/icon_new_patient.png";
            actionImgSource:StringConstants.actionIcon_sourceEditOperator,//"qrc:/images/icon_edit_operator.png",//"../images/icon_new_patient.png";
            source:StringConstants.actionIcon_pgSourceEditOperator,//"qrc:/page/operator/ManageOperator.qml",//"qrc:/page/mainPages/HomePage.qml"
            index:IntegerConstants.actionIndexEditOperator//11
        },
        {
            actionName:StringConstants.actionText_SwitchOperator,//"switchOperator",
            homeMainAction:true,
            testAll:true,
            // testPageNavAction:false,
            actionText:StringConstants.actionText_SwitchOperator,
            actionIconName:StringConstants.actionIcon_nameSwitchOperator,//"icon_switch_operator",
            actionIconSource:StringConstants.actionIcon_sourceSwitchOperator,//"qrc:/images/icon_switch_operator.png",
            actionIconColor:StringConstants.color_gbTransparent,//"transparent",
            actionImgSource:StringConstants.actionIcon_sourceSwitchOperator,//"qrc:/images/icon_switch_operator.png",
            source:StringConstants.actionIcon_pgSourceSwitchOperator,//"qrc:/page/operator/ManageOperator.qml",
            index:IntegerConstants.actionIndexSwitchOperator//12
        },
        {
            actionName:StringConstants.actionText_PlayCentral,
            testPageControlAction:true,
            testAll:true,
            // testPageNavAction:false,
            actionText:StringConstants.actionText_PlayCentral,
            actionIconName:StringConstants.actionIcon_PlayCentral,
            actionIconSource:StringConstants.actionIcon_sourcePlayCentral,
            actionIconColor:StringConstants.color_gbTransparent,
            actionImgSource:StringConstants.actionIcon_sourcePlayCentral,
            source:StringConstants.actionIcon_pgSourcePlayCentral,
            index:IntegerConstants.actionIndexPlayCentral,
        },
        {
            actionName:StringConstants.actionText_PlayPeripheral,
            testPageControlAction:true,
            testAll:true,
            //testPageNavAction:false,
            actionText:StringConstants.actionText_PlayPeripheral,
            actionIconName:StringConstants.actionIcon_PlayPeripheral,
            actionIconSource:StringConstants.actionIcon_sourcePlayPeripheral,
            actionIconColor:StringConstants.color_gbTransparent,
            actionImgSource:StringConstants.actionIcon_sourcePlayPeripheral,
            source:StringConstants.pgSourcePlayPeripheral,
            index:IntegerConstants.actionIndexPlayPeripheral,
        },
        {
            actionName:StringConstants.actionText_pauseAll,
            testPageControlAction:true,
            testAll:true,
            //testPageNavAction:false,
            actionText:StringConstants.actionText_pauseAll,
            actionIconName:StringConstants.actionIcon_pauseAll,
            actionIconSource:StringConstants.actionIcon_pgSourcePauseAll,
            actionIconColor:StringConstants.color_gbTransparent,
            actionImgSource:StringConstants.actionIcon_pgSourcePauseAll,
            source:StringConstants.actionIcon_pgSourcePauseAll,
            index:IntegerConstants.actionIndexPauseAll,
        },
        {
            actionName:StringConstants.actionText_stopAll,
            testPageControlAction:true,
            testAll:true,
            // testPageNavAction:false,
            actionText:StringConstants.actionText_stopAll,
            actionIconName:StringConstants.actionIcon_stopAll,
            actionIconSource:StringConstants.actionIcon_sourceStopAll,
            actionIconColor:StringConstants.color_gbTransparent,
            actionImgSource:StringConstants.actionIcon_sourceStopAll,
            source:StringConstants.actionIcon_pgSourceStopAll,
            index:IntegerConstants.actionIndexStopAll,
        },
        {
            actionName:StringConstants.actionText_saveAll,
            testPageControlAction:true,
            testAll:true,
            actionText:StringConstants.actionText_saveAll,
            actionIconName:StringConstants.actionIcon_saveAll,
            actionIconSource:StringConstants.actionIcon_sourceSaveAll,
            actionIconColor:StringConstants.color_gbTransparent,
            actionImgSource:StringConstants.actionIcon_sourceSaveAll,
            source:StringConstants.actionIcon_pgSourceSaveAll,
            index:IntegerConstants.actionIndexSaveAll,
        },
        {
            actionName:StringConstants.actionText_First,
            testPageNavItem:true,
            testAll:true,
            actionText:StringConstants.actionText_First,
            actionIconName:StringConstants.actionIcon_First,
            actionIconSource:StringConstants.actionIcon_sourceFirst,
            actionIconColor:StringConstants.color_gbTransparent,
            actionImgSource:StringConstants.actionIcon_sourceFirst,
            source:StringConstants.actionIcon_pgSourceFirst,
            index:IntegerConstants.actionIndexFirst,
        },
        {
            actionName:StringConstants.actionText_Prev,
            testPageNavItem:true,
            testAll:true,
            actionText:StringConstants.actionText_Prev,
            actionIconName:StringConstants.actionIcon_Prev,
            actionIconSource:StringConstants.actionIcon_sourcePrev,
            actionIconColor:StringConstants.color_gbTransparent,
            actionImgSource:StringConstants.actionIcon_sourcePrev,
            source:StringConstants.actionIcon_pgSourcePrev,
            index:IntegerConstants.actionIndexPrev,
        },
        {
            actionName:StringConstants.actionText_Next,
            testPageNavItem:true,
            testAll:true,
            actionText:StringConstants.actionText_Next,
            actionIconName:StringConstants.actionIcon_Next,
            actionIconSource:StringConstants.actionIcon_sourceNext,
            actionIconColor:StringConstants.color_gbTransparent,
            actionImgSource:StringConstants.actionIcon_sourceNext,
            source:StringConstants.actionIcon_pgSourceNext,
            index:IntegerConstants.actionIndexNext,
        },
        {
            actionName:StringConstants.actionText_Last,
            testPageNavItem:true,
            testAll:true,
            actionText:StringConstants.actionText_Last,
            actionIconName:StringConstants.actionIcon_Last,
            actionIconSource:StringConstants.actionIcon_sourceLast,
            actionIconColor:StringConstants.color_gbTransparent,
            actionImgSource:StringConstants.actionIcon_sourceLast,
            source:StringConstants.actionIcon_pgSourceLast,
            index:IntegerConstants.actionIndexLast,
        }

    ]
    Component.onCompleted: {
        modelElements.forEach(function(element)
        {
            console.log("The value of the element is"+element.actionName)
            actionDelegateModel.append(element)
        })
    }

    //    ListElement{
    //        actionName:"Home";
    //        homeAction:true;
    //        newPatientAction:true;
    //        existingPatientAction:true;
    //        testPageAction:true;
    //        reportPageAction:true;
    //        //operatorPageAction:false;
    //        actionText:QT_TR_NOOP(StringConstants.actionText_Home)//"Home"
    //        actionIconName:"icon_home"
    //        actionIconSource:"qrc:/images/icon_home.png"
    //        actionIconColor:"transparent"
    //        actionImgSource:"qrc:/images/icon_home.png";//icon.name: "timeline_tab_selected"
    //        source:"qrc:/page/mainPages/HomePage.qml"//"qrc:/page/test/TestPage.qml"//"qrc:/page/home/home.qml"
    //        index:1;
    //    }
    //    ListElement{
    //        actionName:"Setting";
    //        homeAction:true;
    //        newPatientAction:true;
    //        existingPatientAction:true;
    //        testPageAction:true;
    //        //operatorPageAction:false;
    //        actionText:StringConstants.actionText_Setting//"Setting"
    //        actionIconName:"icon_setting"
    //        actionIconSource:"qrc:/images/icon_setting.png"
    //        actionIconColor:"transparent"
    //        actionImgSource:"qrc:/images/icon_setting.png";//"../images/icon_new_patient.png";
    //        source:"qrc:/page/mainPages/HomePage.qml"
    //        index:2;
    //    }
    //    ListElement{
    //        actionName:"Help";
    //        homeAction:true;
    //        newPatientAction:true;
    //        existingPatientAction:true;
    //        testPageAction:true;
    //        //operatorPageAction:false;
    //        actionText:StringConstants.actionText_Help//"Help"
    //        actionIconName:"icon_help"
    //        actionIconSource:"qrc:/images/icon_help.png"
    //        actionIconColor:"transparent"
    //        actionImgSource:"qrc:/images/icon_help.png";//"../images/icon_new_patient.png";
    //        source:"qrc:/page/mainPages/HomePage.qml"
    //        index:3;
    //    }
    //    ListElement{
    //        actionName:"changePatient";
    //        homeAction:false;
    //        newPatientAction:true;
    //        //existingPatientAction:true;
    //        testPageAction:true;
    //        //operatorPageAction:false;
    //        actionText:StringConstants.actionText_SwitchPatient//"Switch Patient"
    //        actionIconName:"icon_switch_patient"
    //        actionIconSource:"qrc:/images/icon_switch_patient.png"
    //        actionIconColor:"transparent"
    //        actionImgSource:"qrc:/images/icon_switch_patient.png";//"../images/icon_new_patient.png";
    //        source:"qrc:/page/mainPages/SwitchPatient.qml"
    //        index:4;
    //    }
    //    ListElement{
    //        actionName:"savePatient";
    //        homeAction:false;
    //        newPatientAction:true;
    //        //operatorPageAction:false;
    //        //existingPatientAction:true;
    //        //testPageAction:true;
    //        actionIconName:"icon_save"
    //        actionText:StringConstants.actionText_SavePatient//"Save Patient"
    //        actionIconSource:"qrc:/images/icon_save.png"
    //        actionIconColor:"transparent"
    //        actionImgSource:"qrc:/images/icon_save.png";//"../images/icon_new_patient.png";
    //        source:"qrc:/page/mainPages/SwitchPatient.qml"
    //        index:5;
    //    }
    //    ListElement{
    //        actionName:"testPatient";
    //        homeAction:false;
    //        newPatientAction:true;
    //        existingPatientAction:true;
    //        //operatorPageAction:false;
    //        //testPageAction:true;
    //        actionText:StringConstants.actionText_TestPatient//"Test Patient"
    //        actionIconName:"icon_test_patient"
    //        actionIconSource:"qrc:/images/icon_test_patient.png"
    //        actionIconColor:"transparent"
    //        actionImgSource:"qrc:/images/icon_test_patient.png";//"../images/icon_new_patient.png";
    //        source:"qrc:/page/mainPages/TestPage.qml"
    //        index:6;
    //    }
    //    ListElement{
    //        actionName:"newPatient";
    //        homeMainAction:true;
    //        //homeAction:false;
    //        //newPatientAction:true;
    //        existingPatientAction:true;
    //        //operatorPageAction:false;
    //        //testPageAction:true;
    //        actionText:StringConstants.actionText_NewPatient//"New Patient"
    //        actionIconName:"icon_new_patient"
    //        actionIconSource:"qrc:/images/icon_new_patient.png"
    //        actionIconColor:"transparent"
    //        actionImgSource:"../images/icon_new_patient.png";
    //        source:"qrc:/page/mainPages/NewPatientPage.qml"
    //        index:7;
    //    }
    //    ListElement{
    //        actionName:"editPatient";
    //        homeMainAction:false;
    //        //homeAction:false;
    //        //newPatientAction:true;
    //        existingPatientAction:true;
    //        testPageAction:true;
    //        //operatorPageAction:false;
    //        actionText:StringConstants.actionText_EditPatient//"Edit Patient"
    //        actionIconName:"icon_edit_patient"
    //        actionIconSource:"qrc:/images/icon_edit_patient.png"
    //        actionIconColor:"transparent"
    //        actionImgSource:"../images/icon_new_patient.png";
    //        source:"qrc:/page/mainPages/SwitchPatient.qml"
    //        index:8;
    //    }
    //    ListElement{
    //        actionName:"existingPatient";
    //        homeMainAction:true;
    //        //homeAction:false;
    //        //newPatientAction:true;
    //        existingPatientAction:false;
    //        testPageAction:true;
    //        //operatorPageAction:false;
    //        actionText:StringConstants.actionText_ExistingPatient//"Existing Patient"
    //        actionIconName:"icon_existing_patient"
    //        actionIconSource:"qrc:/images/icon_existing_patient.png"
    //        actionIconColor:"transparent"
    //        actionImgSource:"../images/icon_existing_patient.png";
    //        source:"qrc:/page/mainPages/SwitchPatient.qml"
    //        index:13;
    //    }
    //    ListElement{
    //        actionName:"viewPatientReport";
    //        homeMainAction:true;
    //        //homeAction:false;
    //        //newPatientAction:true;
    //        //existingPatientAction:true;
    //        testPageAction:true;
    //        reportPageAction:true;
    //        //operatorPageAction:false;
    //        actionText:StringConstants.actionText_ViewPatientReport//"View Patient Report"
    //        actionIconName:"icon_view_report"
    //        actionIconSource:"qrc:/images/icon_view_report.png"
    //        actionIconColor:"transparent"
    //        actionImgSource:"qrc:/images/icon_view_report.png";
    //        source:"qrc:/page/mainPages/ReportPage.qml"
    //        index:9;
    //    }
    //    ListElement{
    //        actionName:"addOperator";
    //        //homeAction:false;
    //        //newPatientAction:true;
    //        //existingPatientAction:true;
    //        //testPageAction:true;
    //        //reportPageAction:true;
    //        operatorPageAction:true;
    //        actionText:StringConstants.actionText_AddOperator//"Add Operator"
    //        actionIconName:"icon_add_operator"
    //        actionIconSource:"qrc:/images/icon_add_operator.png"
    //        actionIconColor:"transparent"
    //        actionImgSource:"qrc:/images/icon_add_operator.png";
    //        source:"qrc:/page/operator/ManageOperator.qml"//"qrc:/page/mainPages/HomePage.qml"
    //        index:10;
    //    }
    //    ListElement{
    //        actionName:"editOperator";
    //        //homeAction:false;
    //        //newPatientAction:true;
    //        //existingPatientAction:true;
    //        //testPageAction:true;
    //        //reportPageAction:true;
    //        operatorPageAction:true;
    //        actionText:StringConstants.actionText_EditOperator//"Edit Operator"
    //        actionIconName:"icon_edit_operator"
    //        actionIconSource:"qrc:/images/icon_edit_operator.png"
    //        actionIconColor:"transparent"
    //        //actionImgSource:"../images/icon_new_patient.png";
    //        actionImgSource:"qrc:/images/icon_edit_operator.png";//"../images/icon_new_patient.png";
    //        source:"qrc:/page/operator/ManageOperator.qml"//"qrc:/page/mainPages/HomePage.qml"
    //        index:11;
    //    }
    //    ListElement{
    //        actionName:"switchOperator";
    //        //homeAction:false;
    //        //newPatientAction:true;
    //        //existingPatientAction:true;
    //        //testPageAction:true;
    //        //reportPageAction:true;
    //        homeMainAction:true;
    //        //operatorPageAction:false;
    //        actionText:StringConstants.actionText_SwitchOperator//"Switch OPerator"
    //        actionIconName:"icon_switch_operator"
    //        actionIconSource:"qrc:/images/icon_switch_operator.png"
    //        actionIconColor:"transparent"
    //        //actionImgSource:"../images/icon_new_patient.png";
    //        actionImgSource:"qrc:/images/icon_switch_operator.png";//"../images/icon_new_patient.png";
    //        source:"qrc:/page/operator/ManageOperator.qml"//"qrc:/page/mainPages/HomePage.qml"
    //        index:12;
    //    }

}
