pragma Singleton
import QtQuick 2.12
//import "."
//import "./../../"
/*!
   \qmltype OtherConstants
   \brief This contains all the other Constants and fonts that are used in the application.

  This is used in the most of the front end classes.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of OtherConstants is demonstrated below
   \qml
   Rectangle{
    id:ready
    anchors.fill:parent
    border.width: 2px
    border.color: OtherConstants.backgroundColor
    }
   \endqml

*/
QtObject {

    property FontLoader segoeuiFL: FontLoader{
        id: segoeuiFL//segoeuiFontLoader
        source: "SegoeFonts/segoeui.ttf"
    }
    readonly property alias segoeuiFont: segoeuiFL.name
    property FontLoader segoeuibFL: FontLoader{
        id: segoeuibFL//segoeuibFontLoader
        source: "SegoeFonts/segoeuib.ttf"
    }
    readonly property alias segoeuiBoldFont:segoeuibFL.name
    property FontLoader segoeuiiFL: FontLoader{
        id: segoeuiiFL//segoeuiiFontLoader
        source: "SegoeFonts/segoeuii.ttf"
    }
     readonly property alias segoeuiItalicsFont: segoeuiiFL.name
    property FontLoader segoeuilFL: FontLoader{
        id: segoeuilFL//segoeuilFontLoader
        source: "SegoeFonts/segoeuil.ttf"
    }
     readonly property alias segoeuiLightFont: segoeuilFL.name
    property FontLoader segoeuislFL: FontLoader{
        id: segoeuislFL//segoeuislFontLoader
        source: "SegoeFonts/segoeuisl.ttf"
    }
      readonly property alias segoeuiSemiLightFont: segoeuislFL.name
    property FontLoader segoeuizFL: FontLoader{
        id: segoeuizFL//segoeuizFontLoader
        source: "SegoeFonts/segoeuiz.ttf"
    }
      readonly property alias segoeuiBoldLightFont: segoeuizFL.name
    property FontLoader seguiblFL: FontLoader{
        id: seguiblFL//seguibluiFontLoader
        source: "SegoeFonts/seguibl.ttf"
    }
     readonly property alias segoeuiBlackFont: seguiblFL.name
    property FontLoader seguibliFL: FontLoader{
        id: seguibliFL//seguibliuiFontLoader
        source: "SegoeFonts/seguibli.ttf"
    }
    readonly property alias segoeuiBlackItalicFont: seguibliFL.name
    property FontLoader seguihisFL: FontLoader{
        id: seguihisFL//seguihisFontLoader
        source: "SegoeFonts/seguihis.ttf"
    }
     readonly property alias segoeuiHistoricFont: seguihisFL.name
    property FontLoader seguiliFL: FontLoader{
        id: seguiliFL//seguiliuiFontLoader
        source: "SegoeFonts/seguili.ttf"
    }
    readonly property alias segoeuiLightItalicFont: seguiliFL.name
    property FontLoader seguisbFL: FontLoader{
        id: seguisbFL//seguisbuiFontLoader
        source: "SegoeFonts/seguisb.ttf"
    }
    readonly property alias segoeuiSemiBoldFont: seguisbFL.name
    property FontLoader seguisbiFL: FontLoader{
        id: seguisbiFL//seguisbiuiFontLoader
        source: "SegoeFonts/seguisbi.ttf"
    }
    readonly property alias segoeuiSemiBoldItalicFont: seguisbiFL.name
    property FontLoader seguisliFL: FontLoader{
        id: seguisliFL//seguisliuiFontLoader
        source: "SegoeFonts/seguisli.ttf"
    }
    readonly property alias segoeuiSemiLightItalicFont: seguisliFL.name
    property FontLoader fontLoader: FontLoader {
        id: fontLoader
        source: "SegoeFonts/segoeui.ttf"


    }
    property FontLoader fontLoader2: FontLoader{
        id:fontLoader2
        source: "SegoeFonts/seguisli.ttf"
    }

    property FontLoader fontLoader1: FontLoader {
        id: fontLoader1
        source: "qrc:/imports/ApplicationContstants/fontAwesome/fontawesome-webfont.ttf"
    }
    property FontLoader fontAwesomeRegular: FontLoader {
        source: "qrc:/imports/ApplicationContstants/fontAwesome/Font Awesome 5 Free-Regular-400.otf"
    }
    property FontLoader fontAwesomeSolid: FontLoader {
        source: "qrc:/imports/ApplicationContstants/fontAwesome/Font Awesome 5 Free-Solid-900.otf"
    }
    property FontLoader fontAwesomeBrands: FontLoader {
        source: "qrc:/imports/ApplicationContstants/fontAwesome/Font Awesome 5 Brands-Regular-400.otf"
    }
    readonly property alias segoeHistoric: fontLoader2.name
    readonly property alias fontFamily: fontLoader.name
    readonly property alias awefontFamily: fontLoader1.name
    readonly property color backgroundColor: "#443224"
    readonly property var modelPraticeOperators:ListModel {
        ListElement { key: "All Operators"; }
        ListElement { key:"Default Operators"; }
    }
       // ["All Operators","Default Operators"]
    readonly property string regExPraticeOperators: "(All Operators|Default Operators)"
    readonly property var modelSamplePatients: ["APatient","BPatient","CPatient","DPatient","EPatient","FPatient","GPatient","HPatient","IPatient","JPatient","kPatient","LPatient","MPatient","NPatient","OPatient","Patient","QPatient","RPatient","SPatient","TPatient","UPatient","VPatient","WPatient","XPatient","YPatient","ZPatient"]
    readonly property var modelTitle:ListModel {
        ListElement { key: "Mr"; }
        ListElement { key:"Mrs"; }
        ListElement { key:"Dr"; }
        ListElement { key:"Other"; }
    }
    readonly property string regexTitle: "(Mr|Mrs|Dr|Other)"
    readonly property var modelGender:ListModel {
        ListElement { key: "Male"; }
        ListElement { key:"Female"; }
        ListElement { key:"Other"; }
    }
       // ["Male","Female","Other"]
    readonly property string regexGender: "(Male|Female|Other)"
    readonly property var dobCalAllMonths: ["January","Febuary","March","April","May","June","July","August","September","October","November","December"]
    readonly property string regexCalAllMonths: "(January|Febuary|March|April|May|June|July|August|September|October|November|December)"
    readonly property int fullMonth:32// [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31]
    readonly property int oneDayLessMonth:31// [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30]
    readonly property int twoDayLessMonth: 30//[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29]
    readonly property int threeDayLessMonth: 29//[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28]
    readonly property string icons: fontAwesomeRegular.name
    readonly property string brands: fontAwesomeBrands.name
    readonly property string solidIcons: fontAwesomeSolid.name
    property var modelToRegext: function(modelRg){
        var strStart = "\"("
        var strEnd = ")\""
        var completeStr =""

        for(var i = 0; i< modelRg.length;++i){
            if(i === (modelRg.length - 1))
            {
                completeStr+=  modelRg[i]
            }
            else
            {
                completeStr+=  modelRg[i]+"|"
            }
        }
        console.log("The complete list of strings are"+strStart+completeStr+strEnd)
        return strStart+completeStr+strEnd
    }

//    property var navigationModel:
//        [
//        {
//            "actionName":"Home",
//            "homeAction":true,
//            "newPatientAction":true,
//            "existingPatientAction":true,
//            "testPageAction":true,
//            "reportPageAction":true,
//            "actionText":"Home",
//            "actionIconName":"icon_home",
//            "actionIconSource":"qrc:/images/icon_home.png",
//            "actionIconColor":"transparent",
//            "actionImgSource":"qrc:/images/icon_home.png",
//            "source":"qrc:/page/mainPages/HomePage.qml",
//            "index":1
//        },
//        {
//            "actionName":"changePatient",
//            "newPatientAction":true,
//            "testPageAction":true,
//            "actionText":"Switch Patient",
//            "actionIconName":"icon_switch_patient",
//            "actionIconSource":"qrc:/images/icon_switch_patient.png",
//            "actionIconColor":"transparent",
//            "actionImgSource":"qrc:/images/icon_switch_patient.png",
//            "source":"qrc:/page/mainPages/SwitchPatient.qml",
//            "index":4
//        },
//        {
//            "actionName":"testPatient",
//            "newPatientAction":true,
//            "existingPatientAction":true,
//            "actionText":"Test Patient",
//            "actionIconName":"icon_test_patient",
//            "actionIconSource":"qrc:/images/icon_test_patient.png",
//            "actionIconColor":"transparent",
//            "actionImgSource":"qrc:/images/icon_test_patient.png",
//            "source":"qrc:/page/mainPages/TestPage.qml",
//            "index":6
//        },
//        {
//            "actionName":"newPatient",
//            "homeMainAction":true,
//            "existingPatientAction":true,
//            "actionText":"New Patient",
//            "actionIconName":"icon_new_patient",
//            "actionIconSource":"qrc:/images/icon_new_patient.png",
//            "actionIconColor":"transparent",
//            "actionImgSource":"../images/icon_new_patient.png",
//            "source":"qrc:/page/mainPages/NewPatientPage.qml",
//            "index":7
//        },
//        {
//            "actionName":"editPatient",
//            "homeMainAction":true,
//            "existingPatientAction":true,
//            "testPageAction":true,
//            "actionText":"Edit Patient",
//            "actionIconName":"icon_edit_patient",
//            "actionIconSource":"qrc:/images/icon_edit_patient.png",
//            "actionIconColor":"transparent",
//            "actionImgSource":"../images/icon_new_patient.png",
//            "source":"qrc:/page/mainPages/SwitchPatient.qml",
//            "index":8
//        },
//        {
//            "actionName":"viewPatientReport",
//            "homeMainAction":true,
//            "testPageAction":true,
//            "reportPageAction":true,
//            "actionText":"View Patient Report",
//            "actionIconName":"icon_view_report",
//            "actionIconSource":"qrc:/images/icon_view_report.png",
//            "actionIconColor":"transparent",
//            "actionImgSource":"qrc:/images/icon_view_report.png",
//            "source":"qrc:/page/mainPages/ReportPage.qml",
//            "index":9
//        },
//        {
//            "actionName":"Setting",
//            "homeAction":true,
//            "newPatientAction":true,
//            "existingPatientAction":true,
//            "testPageAction":true,
//            "actionText":"Setting",
//            "actionIconName":"icon_setting",
//            "actionIconSource":"qrc:/images/icon_setting.png",
//            "actionIconColor":"transparent",
//            "actionImgSource":"qrc:/images/icon_setting.png",
//            "source":"qrc:/page/mainPages/HomePage.qml",
//            "index":2 },
//        {
//            "actionName":"Help",
//            "homeAction":true,
//            "newPatientAction":true,
//            "existingPatientAction":true,
//            "testPageAction":true,
//            "actionText":"Help",
//            "actionIconName":"icon_help",
//            "actionIconSource":"qrc:/images/icon_help.png",
//            "actionIconColor":"transparent",
//            "actionImgSource":"qrc:/images/icon_help.png",
//            "source":"qrc:/page/mainPages/HomePage.qml",
//            "index":3
//        },
//        {
//            "actionName":"savePatient",
//            "newPatientAction":true,
//            "actionIconName":"icon_save",
//            "actionText":"Save Patient",
//            "actionIconSource":"qrc:/images/icon_save.png",
//            "actionIconColor":"transparent",
//            "actionImgSource":"qrc:/images/icon_save.png",
//            "source":"qrc:/page/mainPages/HomePage.qml",
//            "index":5
//        },
//        {
//            "actionName":"addOperator",
//            "operatorPageAction":true,
//            "actionText":"Add Operator",
//            "actionIconName":"icon_add_operator",
//            "actionIconSource":"qrc:/images/icon_add_operator.png",
//            "actionIconColor":"transparent",
//            "actionImgSource":"qrc:/images/icon_add_operator.png",
//            "source":"qrc:/page/mainPages/HomePage.qml",
//            "index":10
//        },
//        {
//            "actionName":"editOperator",
//            "operatorPageAction":true,
//            "actionText":"Edit Operator",
//            "actionIconName":"icon_edit_operator",
//            "actionIconSource":"qrc:/images/icon_edit_operator.png",
//            "actionIconColor":"transparent",
//            "actionImgSource":"qrc:/images/icon_edit_operator.png",
//            "source":"qrc:/page/mainPages/HomePage.qml",
//            "index":11
//        },
//        {
//            "actionName":"switchOperator",
//            "homeMainAction":true,
//            "operatorPageAction":true,
//            "actionText":"Switch OPerator",
//            "actionIconName":"icon_switch_operator",
//            "actionIconSource":"qrc:/images/icon_switch_operator.png",
//            "actionIconColor":"transparent",
//            "actionImgSource":"qrc:/images/icon_switch_operator.png",
//            "source":"qrc:/page/mainPages/HomePage.qml",
//            "index":12
//        }

//    ]

    readonly property string homeActionIconName: value
    readonly property string homeActionIconSource: value
    readonly property string homeActionIconColor: value
    readonly property string homeActionImgSource: value
    readonly property string homesource: value
    readonly property int homeIndex: value

    readonly property string settingActionIconName: value
    readonly property string settingActionIconSource: value
    readonly property string settingActionIconColor: value
    readonly property string settingActionImgSource: value
    readonly property string settingsource: value
    readonly property int settingIndex: value

    readonly property string helpActionIconName: value
    readonly property string helpActionIconSource: value
    readonly property string helpActionIconColor: value
    readonly property string helpActionImgSource: value
    readonly property string helpsource: value
    readonly property int helpIndex: value

    readonly property string changePatientActionIconName: value
    readonly property string changePatientActionIconSource: value
    readonly property string changePatientActionIconColor: value
    readonly property string changePatientActionImgSource: value
    readonly property string changePatientsource: value
    readonly property int changePatientIndex: value

    readonly property string savePatientActionIconName: value
    readonly property string savePatientActionIconSource: value
    readonly property string savePatientActionIconColor: value
    readonly property string savePatientActionImgSource: value
    readonly property string savePatientsource: value
    readonly property int savePatientIndex: value

    readonly property string testPatientActionIconName: value
    readonly property string testPatientActionIconSource: value
    readonly property string testPatientActionIconColor: value
    readonly property string testPatientActionImgSource: value
    readonly property string testPatientsource: value
    readonly property int testPatientIndex: value


    readonly property string newPatientActionIconName: value
    readonly property string newPatientActionIconSource: value
    readonly property string newPatientActionIconColor: value
    readonly property string newPatientActionImgSource: value
    readonly property string newPatientsource: value
    readonly property int newPatientIndex: value


    readonly property string editPatientActionIconName: value
    readonly property string editPatientActionIconSource: value
    readonly property string editPatientActionIconColor: value
    readonly property string editPatientActionImgSource: value
    readonly property string editPatientsource: value
    readonly property int editPatientIndex: value


    readonly property string existingPatientActionIconName: value
    readonly property string existingPatientActionIconSource: value
    readonly property string existingPatientActionIconColor: value
    readonly property string existingPatientActionImgSource: value
    readonly property string existingPatientsource: value
    readonly property int existingPatientIndex: value


    readonly property string viewReportActionIconName: value
    readonly property string viewReportActionIconSource: value
    readonly property string viewReportActionIconColor: value
    readonly property string viewReportActionImgSource: value
    readonly property string viewReportsource: value
    readonly property int viewReportIndex: value


    readonly property string addOperatorActionIconName: value
    readonly property string addOperatorActionIconSource: value
    readonly property string addOperatorActionIconColor: value
    readonly property string addOperatorActionImgSource: value
    readonly property string addOperatorsource: value
    readonly property int addOperatorIndex: value

    readonly property string switchOperatorActionIconName: value
    readonly property string switchOperatorActionIconSource: value
    readonly property string switchOperatorActionIconColor: value
    readonly property string switchOperatorActionImgSource: value
    readonly property string switchOperatorsource: value
    readonly property int switchOperatorIndex: value





}
