pragma Singleton
import QtQuick 2.12
//import "."
//import "./../../"
/*!
   \qmltype StringConstants
   \brief This contains all the strings that are used in the application. This need to support translations

  This is used in the most of the front end classes.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of StringConstants is demonstrated below
   \qml
   Rectangle{
    id:ready
    anchors.fill:parent
    border.width: 2px
    border.color: StringConstants.borderColorBlack
    }
   \endqml

*/
QtObject {


    readonly property string icons: fontAwesomeRegular.name
    readonly property string brands: fontAwesomeBrands.name
    readonly property string solidIcons: fontAwesomeSolid.name
    readonly property string label_testTempFrequency: qsTr("Temporal Frquency[HZ]")
    readonly property string label_testMPvalue: qsTr("MP Value")
    readonly property string m_strGreenBlue: qsTr("Green/Blue Ratio [dB]")
    readonly property string m_strCentral: qsTr("Central")
    readonly property string m_strPeripheral: qsTr("Peripheral")
    readonly property string label_NewPatientLabelBgColor: "#4A4A4A"
    readonly property string actionBtnBackgroundColor: "#3A9FA4"
    readonly property string actionBtnBgCompColor: "#a4563a"
    readonly property string actionBtnAlterColor: "#a48b3a"//#713aa4
    readonly property string headerBackgroundColor: "#5EBDC3"//#4d888b
    readonly property string actionBtnBorderColor: "black"
    readonly property string barBackgroundColor: "white"
    readonly property string barBorderColor: "#eeeeee"
    readonly property string readonlyColor: "#aeaeae"
    readonly property string barAlternateColor: "orange"
    readonly property string tabContrastColor: "#2F7373"//"#695461"//"#0104FF"
    readonly property string label_searchQuestion: "You can enter some of the patient's details to veiw matching enteries"
    readonly property string label_searchPatientTitle: qsTr("Please select an existing patient")
    readonly property string label_testPgHeader: qsTr("Patient Testing Screen")
    readonly property string label_newPtPgHeader: qsTr("Please enter the patient's details and select the test icon to proceed to the test Screen")
    readonly property string label_testPgPatient: qsTr("Patient:")
    readonly property string label_switchPatientSurname: qsTr("Surname")
    readonly property string label_switchPatientFirstName: qsTr("FirstName")
    readonly property string label_testPgMedRef: qsTr("Medical Reference:")
    readonly property string label_testPgDOB: qsTr("Birth date:")
    readonly property string label_testPgIOLFitted: qsTr("IOL Fitted(R/L):")
    readonly property string label_testPgIOLAge: qsTr("IOL Age(R/L):")
    readonly property string label_testPgEye: qsTr("Eye:")
    readonly property string label_testPgMode: qsTr("TestMode:")
    readonly property string testPage_backgroundColor:"#5EBDC3" //"#5EBDC3"
    readonly property string testPage_unCheckBtnBgColor: "#C3F1F3"
    readonly property string testPage_checkBtnBgColor: "#218A8F"
    readonly property string testPage_checkBtnBorderBgColor: "#A1ADAD"
    readonly property string testPage_lblFontColor: "#A8E2E6"
    readonly property string testPage_ResultIndexTitleBgColor: "#4A4A4A"
    readonly property string testPage_ResultIndexEyeBgColor: "#774013"




    readonly property string lbl_npContactMobile: qsTr("Mobile")
    readonly property string lbl_npContactAddr: qsTr("Address")
    readonly property string lbl_npContactAddr1: qsTr("Address Line 1")
    readonly property string lbl_npContactAddr2: qsTr("Address Line 2")
    readonly property string lbl_npContactCity: qsTr("City")
    readonly property string lbl_npContactCountry: qsTr("Country")
    readonly property string lbl_npContactEmail: qsTr("Email")
    readonly property string lbl_npContactPostalCode: qsTr("Postal Code")
    readonly property string lbl_npContactCounty: qsTr("County")

    readonly property string lbl_npContactMobileText:"MobileValue"
    readonly property string lbl_npContactAddrText: "AddressValue"
    readonly property string lbl_npContactAddr1Text: "AddressLine1Value"
    readonly property string lbl_npContactAddr2Text: "AddressLine2Value"
    readonly property string lbl_npContactCityText: "CityValue"
    readonly property string lbl_npContactCountryText: "CountryValue"
    readonly property string lbl_npContactEmailText: "EmailValue"
    readonly property string lbl_npContactPostalCodeText: "PostalCodeValue"
    readonly property string lbl_npContactCountyText: "CountyValue"

    readonly property string lbl_npContactMobileValue: " "//qsTr("Mobile")
    readonly property string lbl_npContactAddrValue: " "//qsTr("Address")
    readonly property string lbl_npContactAddr1Value: " "//qsTr("Address Line 1")
    readonly property string lbl_npContactAddr2Value: " "//qsTr("Address Line 2")
    readonly property string lbl_npContactCityValue: " "//qsTr("City")
    readonly property string lbl_npContactCountryValue: " "//qsTr("Country")
    readonly property string lbl_npContactEmailValue: " "//qsTr("Email")
    readonly property string lbl_npContactPostalCodeValue: " "//qsTr("Postal Code")
    readonly property string lbl_npContactCountyValue: " "//qsTr("County")





    readonly property string lbl_npContactMobilePh: qsTr("Please enter a valid mobile number")
    readonly property string lbl_npContactAddr1Ph: qsTr("Please enter Address Line 1")
    readonly property string lbl_npContactAddr2Ph: qsTr("Please enter Address Line 2")
    readonly property string lbl_npContactCityPh: qsTr("Please enter City")
    readonly property string lbl_npContactCountryPh: qsTr("Please enter Country")
    readonly property string lbl_npContactEmailPh: qsTr("Please enter Email address")
    readonly property string lbl_npContactPostalCodePh: qsTr("Please enter Postal Code")
    readonly property string lbl_npContactCountyPh: qsTr("Please enter County")






    readonly property string label_NewPatientQuestion: qsTr("Please enter patient details")
    readonly property string lbl_npRequestSurName: qsTr("Please enter Surname")
    readonly property string lbl_npRequestFirstName: qsTr("Please enter FirstName")
    readonly property string lbl_npRequestMedicalReference: qsTr("Please enter the Medical Reference")
    readonly property string lbl_npSurName: qsTr("Patient Surname")
    readonly property string lbl_npFirstName: qsTr("Patient FirstName")
    readonly property string lbl_npPatientName: qsTr("Patient Name")
    readonly property string lbl_npMedicalReference: qsTr("Medical Reference")
    readonly property string lbl_npPatientTitle: qsTr("Title")
    readonly property string lbl_npPatientGender: qsTr("Gender")
    readonly property string lbl_npPatientAddress: qsTr("Address")
    readonly property string lbl_npPatientAddressLabel: qsTr("Address")
    readonly property string lbl_npPatientAddressText: "AddressValue"
    readonly property string lbl_npPatientAddressValue: ""
    readonly property string lbl_npPatientIOLFitted: qsTr("IOLFitted")
    readonly property string lbl_npPatientIOLFittedLabel: qsTr("IOLFitted")
    readonly property string lbl_npPatientIOLFittedText:"IOLFitted"
    readonly property string lbl_npPatientIOLFittedValue: ""
    readonly property string lbl_npPatientIOLAge: qsTr("IOLAge")
    readonly property string lbl_npPatientIOLAgeLabel: qsTr("IOLAge")
    readonly property string lbl_npPatientIOLAgeText:"IOLAge"
    readonly property string lbl_npPatientIOLAgeValue: ""

    readonly property string lbl_npSurNameText: "PatientSurnameValue"
    readonly property string lbl_npFirstNameText: "PatientFirstNameValue"
    readonly property string lbl_npPatientNameText: "Patient Name"
    readonly property string lbl_npMedicalReferenceText: "MedicalReferenceValue"
    readonly property string lbl_npMedicalReferenceLabel: "MedicalReferenceLabel"
    readonly property string lbl_npPatientTitleText: "TitleValue"
    readonly property string lbl_npPatientGenderText: "GenderValue"
    readonly property string lbl_npBirthDate: qsTr("BirthDate")
    readonly property string lbl_npBirthDateLabel: qsTr("BirthDate")
    readonly property string lbl_npBirthDateText: qsTr("BirthDateValue")
    readonly property string lbl_npBirthDateValue: ""


    readonly property string lbl_npDOB: qsTr("Date Of Birth")
    readonly property string lbl_npDOBLabel: qsTr("Date Of Birth")
    readonly property string lbl_npDOBText: qsTr("Date Of BirthValue")
    readonly property string lbl_npDOBValue: ""

    readonly property string lbl_npDOBDay: qsTr("Day")
    readonly property string lbl_npDOBDayLabel: qsTr("Day")
    readonly property string lbl_npDOBDayText: qsTr("Day")
    readonly property string lbl_npDOBDayValue: ""


    readonly property string lbl_npDOBMonth: qsTr("Month")
    readonly property string lbl_npDOBMonthLabel: qsTr("Month")
    readonly property string lbl_npDOBMonthText: qsTr("MonthValue")
    readonly property string lbl_npDOBMonthValue: ""


    readonly property string lbl_npDOBYear: qsTr("Year")
    readonly property string lbl_npDOBYearLabel: qsTr("Year")
    readonly property string lbl_npDOBYearText: qsTr("YearValue")
    readonly property string lbl_npDOBYearValue: ""

    readonly property string lbl_npDOBAge: qsTr("Age")
    readonly property string lbl_npDOBAgeLabel: qsTr("Age")
    readonly property string lbl_npDOBAgeText: qsTr("AgeValue")
    readonly property string lbl_npDOBAgeValue: ""


    readonly property string lbl_npSurNameValue: ""
    readonly property string lbl_npFirstNameValue: ""
    readonly property string lbl_npPatientNameValue: ""
    readonly property string lbl_npMedicalReferenceValue: ""
    readonly property string lbl_npPatientTitleValue: ""
    readonly property string lbl_npPatientGenderValue: ""
    readonly property string dobYear: qsTr("Year")
    readonly property string dobMonth: qsTr("Month")
    readonly property string dobDay: qsTr("Day")
    readonly property string dobTitle: qsTr("Date of Birth")
    readonly property string borderColorBlack: qsTr("black")


    readonly property string lbl_rpPageHeader: "Patient Report Screen"
    readonly property string lbl_rpReportDetails: "Report Details:"
    readonly property string lbl_rpGenerate: "Generated on:"
    readonly property string lbl_rpGenerateValue: "30/08/2019"
    readonly property string lbl_rpTotalTests: "Total number of tests:"
    readonly property string lbl_rpTotalTestsValue: "167"
    readonly property string lbl_rpNoOfRETests: "Number of RE tests:"
    readonly property string lbl_rpNoOfRETestsValue: "135"
    readonly property string lbl_rpNoOfLETests: "Number of LE tests:"
    readonly property string lbl_rpNoOfLETestsValue: "31"
    readonly property string lbl_rpNoOfCombinedTests: "Number of combined RE + LS tests:"
    readonly property string lbl_rpNoOfCombinedTestsValue: "9"
    readonly property string lbl_rpDetails: "Report Details"
    readonly property string lbl_rpDateRange: "Date Range"
    readonly property string lbl_rpDateRangeInfo: "Please select the start and end date and press ok to search for records"
    readonly property string lbl_rpStartDate: "Start Date:"
    readonly property string lbl_rpStartDateValue: ""
    readonly property string lbl_rpEndDate: "End Date:"
    readonly property string lbl_rpEndDateValue: ""
    readonly property string lbl_rpPraticeTimeline: "Practice Timeline"
    readonly property string lbl_rpPatientTimeline: "Patient Timeline"
    readonly property string lbl_rpSelectOperator: "Select Operator"
    readonly property string lbl_rpOperatorName: "Operator Name"
    readonly property string lbl_rpSelectPatient: "Select Patient"

    readonly property string lbl_ReportForPatient: "Report For Patient:"
    readonly property string lbl_ReportForPratice: "Report For Pratice:"
    readonly property string lbl_ReportFrom: "From"
    readonly property string lbl_reportTo: "To"
    readonly property string lbl_rpPatientName: "Patient Name"
    readonly property string lbl_rpFromDate: "25/09/2019"
    readonly property string lbl_rpToDate: "25/09/2019"



    readonly property string lbl_estimatedMPValue: "Estimated MP Value"
    readonly property string lbl_absoluteMPValue: "Absolute MP value"
    readonly property string lbl_graphAdjustedMPValue: "Graph Adjusted MP Value"
    readonly property string lbl_testResultNO: "Test Result Number"



    readonly property string modelHomeMainItems: "homeMainItems"
    readonly property string modelHomeItems: "homeItems"
    readonly property string modelExistingPtItems: "existingPatientItems"
    readonly property string modelNewPatientItems: "newPatientItems"
    readonly property string modelOperatorPageItems: "operatorPageItems"
    readonly property string modelReportPageItems: "reportPageItems"
    readonly property string modelTestPageItems: "testPageItems"
    readonly property string modelTestPageControlItems: "testPageControlItems"
    readonly property string modelTestPageNavigationItems: "testPageNavigationItems"
    readonly property string modelNavigationItems: "navigationItems"
    readonly property string modelDummy: "dummyModel"
    readonly property string modelAnotherDummy: "dummyAnotherModel"

    readonly property string modelReportPraticeItems: "reportPraticeItems"
    readonly property string modelReportPatientItems: "reportPatientItems"
    //readonly property string modelTestPageNavItems: "testPageNavActionItems"

    readonly property string gridheaderColor: "white"//"#333333"
    readonly property string gridLabelColor: "#333333"//"#aaaaaa"

    readonly property string lbl_leftEyeResults: "LeftEyeResults"
    readonly property string lbl_righEyeResults: "RightEyeResults"
    readonly property string lbl_bothEyeResults: "BothEyeResults"

    readonly property string btn_reportPageDateCustoms: "Custom Dates"
    readonly property string btn_reportPageDateThisYear: "This Year"
    readonly property string btn_reportPageDateSixMonths: "Six months"
    readonly property string btn_reportPageDateThisMonth: "This Month"
    readonly property string btn_reportPageDateThisWeek: "This Week"
    readonly property string btn_reportPageDateToday: "Today"
    readonly property string btn_reportPageOk: "OK"
    readonly property string btn_reportPageCancel: "Cancel"
    readonly property string lbl_npContactDetails: "Contact Details"
    readonly property string color_gbTransparent: "transparent"
    readonly property string lbl_npNotes: "Enter notes relevant to this test session"
    readonly property var txtValidatorNumbersOnly: /^\+?\d+$/
    readonly property var txtValidatorAgeOnly: /\s[0-1]{1}[0-9]{0,2}/
    readonly property var txtValidatorWordsNumbersOnly: /^\w+$/
    readonly property var txtValidatorDobOnly: /^([0-9]{2})\/([0-9]{2})\/([0-9]{4})$/
    readonly property var txtValidatorEmailOnly: /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
    readonly property var txtValidatorWordsOnly: /^[A-Za-z]+$/
    readonly property string  btn_reportAllRecord: "All Records"
    readonly property string btn_reportSixMonth: "6 Months"
    readonly property string btn_oneYear: "1 Year"
    readonly property string btn_twoyear: "2 Year"
    readonly property string btn_threeYear: "3 Year"


    readonly property string lbl_medicalDetails: "Medical Details"
    readonly property string lbl_riskFactors: "Risk Factors"
    readonly property string lbl_otherRiskFactors: "Other Risk Factors"
    readonly property string lbl_notes: "Notes"
    readonly property string lbl_supplementation: "Supplementation"
    readonly property string lbl_supplementHistory: "Patient Supplement History"
    readonly property string lbl_dietAndLifeStyle: "Diet and LifeStyle"

    readonly property string lbl_testTabTestBtn: "Test"
    readonly property string lbl_testTabReportBtn: "Report"
    readonly property string lbl_testTabTimelineBtn: "Timeline"

    readonly property string lbl_testTabResultBtn: "Results"
    readonly property string lbl_testTabNotesBtn: "Notes"
    readonly property string lbl_testTabSupplementationBtn: "Supplmentation"



    readonly property string lbl_AppTitle1: " Macular Pigment Screener"
    readonly property string lbl_AppTitle2: "MPS II"

    readonly property string lbl_CurrentOperator: "Current Operator"
    readonly property string lbl_currentTime: "CurrentTime"
    readonly property string lbl_lastBackedUpon: "Last Backup:"

    readonly property string homePageBodyBorder: "#eeeeee"
    readonly property string homePageBodyColor: "transparent"//"#5EBDC3"

    readonly property string lbl_manageOperator: "Manage Operator"
    readonly property string lbl_manageHeading: "Please select an existing operator or use the Add button to enter a new operator."
    readonly property string lbl_manageNotes: "Note: For auditing purposes, operators cannot be removed, only renamed or deactivated."
    readonly property string lbl_existingOperators: "Existing Operators"
    readonly property string lbl_showInactive: "Show inactive operators"
    readonly property string lbl_editOperator: "Edit Operator"
    readonly property string operatorHeading: "Edit the name and active status of this operator as required"
    readonly property string operatorName: "Operator Name"
    readonly property string operatorNameReq: "Please enter the name of the operator"
    readonly property string operatorActive: "This operator is Active"
    readonly property string currentOperator: "Make this the Current operator"
    readonly property string strOK: "OK"
    readonly property string strCancel: "Cancel"
    readonly property string lbl_adminHeading: "Enter Administrator Password"
    readonly property string lbl_adminText: "Please enter the Administrator password provided with the software."
    readonly property string lbl_password: "Password"
    readonly property string lbl_passwordReq: "please enter the Password"
    readonly property string lbl_submit: "Submit"

    readonly property string lbl_selectOperator: "Select Operator"
    readonly property string lbl_selectOperatorText: "Select the operator you wish to use for this session"
    readonly property string lbl_usePrevOperator: "Always use the operator from the previous session if possible"
    readonly property string lbl_active: "2 active"
    readonly property string lbl_inactive: "0 inactive"
    readonly property string icon_editOperator: "icon_edit_operator"
    readonly property string icon_addOperator: "icon_add_operator"
    readonly property string actionText_Home: "Home"
    readonly property string actionText_Setting: "Setting"
    readonly property string actionText_Help: "Help"
    readonly property string actionText_SwitchPatient: "Switch Patient"
    readonly property string actionText_SavePatient: "Save Patient"
    readonly property string actionText_TestPatient: "Test Patient"
    readonly property string actionText_NewPatient: "New Patient"
    readonly property string actionText_EditPatient: "Edit Patient"
    readonly property string actionText_ExistingPatient: "Existing Patient"
    readonly property string actionText_ViewPatientReport: "Timeline and reports"
    readonly property string actionText_AddOperator: "Add Operator"
    readonly property string actionText_EditOperator: "Edit Operator"
    readonly property string actionText_SwitchOperator: "Switch Operator"
    readonly property string actionText_PlayCentral: "playCentral"
    readonly property string actionText_PlayPeripheral:"playPeripheral"
    readonly property string actionText_pauseAll:"pauseAll"
    readonly property string actionText_stopAll: "stopAll"
    readonly property string actionText_saveAll:"saveAll"
    readonly property string actionText_First:"first"
    readonly property string actionText_Prev:"prev"
    readonly property string actionText_Next:"next"
    readonly property string actionText_Last:"last"




    readonly property string actionIcon_nameHome: "icon_home"
    readonly property string actionIcon_nameSetting: "icon_setting"
    readonly property string actionIcon_nameHelp: "icon_help"
    readonly property string actionIcon_nameSwitch: "icon_switch_patient"
    readonly property string actionIcon_nameSave: "icon_save"
    readonly property string actionIcon_nameTestPatient: "icon_test_patient"
    readonly property string actionIcon_nameNewPatient: "icon_new_patient"
    readonly property string actionIcon_nameEditPatient: "icon_edit_patient"
    readonly property string actionIcon_nameExistingPatient: "icon_existing_patient"
    readonly property string actionIcon_nameViewReport: "icon_patient_timeline"
    readonly property string actionIcon_nameAddOperator: "icon_add_operator"
    readonly property string actionIcon_nameEditOperator: "icon_edit_operator"
    readonly property string actionIcon_nameSwitchOperator: "icon_switch_operator"
    readonly property string actionIcon_PlayCentral: "icon_test_standard"
    readonly property string actionIcon_PlayPeripheral: "icon_play_detailed"
    readonly property string actionIcon_pauseAll: "icon_pause"
    readonly property string actionIcon_stopAll: "icon_stop"
    readonly property string actionIcon_saveAll: "icon_save"
    readonly property string actionIcon_First:"icon_to_first"
    readonly property string actionIcon_Prev:"icon_to_previous"
    readonly property string actionIcon_Next:"icon_to_next"
    readonly property string actionIcon_Last:"icon_to_last"





    readonly property string actionIcon_sourceHome: "qrc:/images/icon_home.png"
    readonly property string actionIcon_sourceSetting: "qrc:/images/icon_setting.png"
    readonly property string actionIcon_sourceHelp: "qrc:/images/icon_help.png"
    readonly property string actionIcon_sourceSwitch: "qrc:/images/icon_switch_patient.png"
    readonly property string actionIcon_sourceSave: "qrc:/images/icon_save.png"
    readonly property string actionIcon_sourceTestPatient: "qrc:/images/icon_test_patient.png"
    readonly property string actionIcon_sourceNewPatient: "qrc:/images/icon_new_patient.png"
    readonly property string actionIcon_sourceEditPatient: "qrc:/images/icon_edit_patient.png"
    readonly property string actionIcon_sourceExistingPatient: "qrc:/images/icon_existing_patient.png"
    readonly property string actionIcon_sourceViewReport: "qrc:/images/icon_patient_timeline.png"
    readonly property string actionIcon_sourceAddOperator: "qrc:/images/icon_add_operator.png"
    readonly property string actionIcon_sourceEditOperator: "qrc:/images/icon_edit_operator.png"
    readonly property string actionIcon_sourceSwitchOperator: "qrc:/images/icon_switch_operator.png"
    readonly property string actionIcon_sourcePlayCentral:"qrc:/images/icon_test_standard.png"
    readonly property string actionIcon_sourcePlayPeripheral:"qrc:/images/icon_play_detailed.png"
    readonly property string actionIcon_sourcePauseAll:"qrc:/images/icon_pause.png"
    readonly property string actionIcon_sourceStopAll:"qrc:/images/icon_stop.png"
    readonly property string actionIcon_sourceSaveAll:"qrc:/images/icon_save.png"
    readonly property string actionIcon_sourceFirst: "qrc:/images/icon_to_first.png"
    readonly property string actionIcon_sourcePrev:"qrc:/images/icon_to_previous.png"
    readonly property string actionIcon_sourceNext:"qrc:/images/icon_to_next.png"
    readonly property string actionIcon_sourceLast: "qrc:/images/icon_to_last.png"






    readonly property string actionIcon_pgSourceHome:"qrc:/page/mainPages/HomePage.qml"
    readonly property string actionIcon_pgSourceSetting: "qrc:/page/mainPages/HomePage.qml"
    readonly property string actionIcon_pgSourceHelp: "qrc:/page/mainPages/HomePage.qml"
    readonly property string actionIcon_pgSourceSwitch: "qrc:/page/mainPages/SwitchPatient.qml"
    readonly property string actionIcon_pgSourceSave: "qrc:/page/mainPages/SwitchPatient.qml"
    readonly property string actionIcon_pgSourceTestPatient: "qrc:/page/mainPages/TestPage.qml"
    readonly property string actionIcon_pgSourceNewPatient: "qrc:/page/mainPages/NewPatientPage.qml"
    readonly property string actionIcon_pgSourceEditPatient: "qrc:/page/mainPages/SwitchPatient.qml"
    readonly property string actionIcon_pgSourceExistingPatient: "qrc:/page/mainPages/SwitchPatient.qml"
    readonly property string actionIcon_pgSourceViewReport: "qrc:/page/mainPages/ReportPage.qml"
    readonly property string actionIcon_pgSourceAddOperator: "qrc:/page/operator/ManageOperator.qml"
    readonly property string actionIcon_pgSourceEditOperator: "qrc:/page/operator/ManageOperator.qml"
    readonly property string actionIcon_pgSourceSwitchOperator: "qrc:/page/operator/ManageOperator.qml"
    readonly property string actionIcon_pgSourcePlayCentral:"qrc:/page/mainPages/TestPage.qml"
    readonly property string actionIcon_pgSourcePlayPeripheral:"qrc:/page/mainPages/TestPage.qml"
    readonly property string actionIcon_pgSourcePauseAll:"qrc:/page/mainPages/TestPage.qml"
    readonly property string actionIcon_pgSourceStopAll:"qrc:/page/mainPages/TestPage.qml"
    readonly property string actionIcon_pgSourceSaveAll:"qrc:/page/mainPages/TestPage.qml"
    readonly property string actionIcon_pgSourceFirst:"qrc:/page/mainPages/TestPage.qml"
    readonly property string actionIcon_pgSourcePrev:"qrc:/page/mainPages/TestPage.qml"
    readonly property string actionIcon_pgSourceNext:"qrc:/page/mainPages/TestPage.qml"
    readonly property string actionIcon_pgSourceLast:"qrc:/page/mainPages/TestPage.qml"

    readonly property string labelItem: "labelItem"
    readonly property string textItem: "textItem"
    readonly property string comboItem: "comboItem"
    readonly property string dobItem: "dobItem"
    readonly property string switchItem: "switchItem"
    readonly property string key: "key"
    readonly property string comboBoxItemModel: "comboBoxItems"
    readonly property string textBoxItemsModel: "textBoxItems"// This is available in all editors.
    readonly property string doBItemModel: "dobItems"
    readonly property string allItem:"allItems"


    readonly property string buttonName_leftEye: "Left Eye"
    readonly property string buttonName_rightEye: "Right Eye"
    readonly property string buttonName_standard: "Standard"
    readonly property string buttonName_detailed: "Detailed"
    readonly property string buttonName_central: "Central only"
    readonly property string buttonName_centralPeripheral: "Central+Peripheral"


    readonly property string sliderDayValue: "Day"
    readonly property string sliderMonthValue: "Month"
    readonly property string sliderYearValue: "Year"

    readonly property string report_PatientDetailModel: "patientDetailedModel"
    readonly property string report_PraticeDetailModel: "praticeDetailedModel"
    readonly property string model_contactLabeLAndText: "newPatientContactLabelAndText"
    readonly property string model_ContactDetailLabel: "newPatientContactDetailLabel"
    readonly property string model_ContactDetailTxt: "newPatientContactDetailText"

    readonly property string np_PersonalDetailExistingPage: "patientPDExistingPage"
    readonly property string np_PersonalDetailTestPage: "patientPDTestPage"

    readonly property string np_pdActionNameWeight: "Weight"
    readonly property string np_pdActionNameHeight: "Height"
    readonly property string np_pdActionNameSmoker: "Smoker"
    readonly property string np_pdActionNameAlcohol: "Alcohol"
    readonly property string np_pdActionNameSupplementName: "Lutein or Zeaxanthin"
    readonly property string np_pdActionNameRightFitted: "Right Fitted"
    readonly property string np_pdActionNameLeftFitted: "Left Fitted"
    readonly property string np_pdActionNameDiabetic: "Diabetic"
    readonly property string np_pdActionNameAmdHistory: "AMD family history"
    readonly property string np_pdActionNameEyeColor: "Eye Color"

    readonly property string np_pdActionTextWeight: "Weight"
    readonly property string np_pdActionTextHeight: "Height"
    readonly property string np_pdActionTextSmoker: "Smoker"
    readonly property string np_pdActionTextAlcohol: "Alcohol"
    readonly property string np_pdActionTextSupplementName: "Lutein or Zeaxanthin"
    readonly property string np_pdActionTextRightFitted: "Right Fitted"
    readonly property string np_pdActionTextLeftFitted: "Left Fitted"
    readonly property string np_pdActionTextDiabetic: "Diabetic"
    readonly property string np_pdActionTextAmdHistory: "AMD family history"

    readonly property string sp_actionNameTitle: "Please enter the supplementation details for this patient"
    readonly property string sp_sdNameLuteinDosageName: "Lutein Dosage"
    readonly property string sp_sdTextLuteinDosageName: "Lutein Dosage"
    readonly property string sp_sdNameIntakePerDay: "Intake per day"
    readonly property string sp_sdTextIntakePerDay: "Intake per day"
    readonly property string sp_sdNameSupplementDescription: "Supplement Description"
    readonly property string sp_sdTextSupplementDescription: ""

    readonly property string lbl_weight: "Weight"
    readonly property string lbl_kg: "Kg"
    readonly property string lbl_lbs: "lbs"

    readonly property string lbl_Height: "Height"
    readonly property string lbl_meter: "m"
    readonly property string lbl_feet: "feet"
    readonly property string lbl_inch: "inch"

    readonly property string lbl_luteinDosageMetric: "mg"
    readonly property string lbl_luteinIntakeDays: "perDay"

    readonly property string lbl_smoker: "Smoker"
    readonly property string lbl_cigPerDay: "Cigarettes per day"

    readonly property string lbl_Alcohol: "Alcohol"
    readonly property string lbl_unitsPerWeek: "units per week"

    readonly property string lbl_supplementName: "Lutein or Zeaxanthin"
    readonly property string lbl_supplementPortions: "portions per day"
    readonly property string lbl_medicalFactors: "Medical Factors"

    readonly property string lbl_amdHistory: "AMD family History"
    readonly property string lbl_eyeColor: "Eye Color"

    readonly property string np_pdAmdHistory: "AMD family History"
    readonly property string np_pdEyeColor: "Eye Color"

    readonly property string lbl_intraocularLens: "Intraocular Lens"
    readonly property string lbl_RightFitted: "Right Fitted"
    readonly property string lbl_yrs: "yrs"
    readonly property string lbl_leftFitted: "Left Fitted"
    readonly property string lbl_diabetic: "Diabetic"

    readonly property string model_supplementationDosageDetails: "supplementationDosageDetails"
    readonly property string model_supplementationDosageNotes: "supplementationDosageNotes"
    readonly property string model_supplementationDetails: "supplementationDetails"
    readonly property string model_supplementDosageNameIntakeDetails: "supplementationDosageDetails"
    readonly property string model_supplementDosageNotesDetails: "SupplementDosageNotesDetails"
    readonly property string model_medicalDetails: "medicalDetailItems"
    readonly property string model_dietAndLifeStyle: "dietItems"
    readonly property string model_medicalFactors: "medicalFactorsItems"
    readonly property string model_supplementationItems: "supplementationItems"
    readonly property string model_otherRiskFactorItems: "otherRiskFactorItems"
    readonly property string objectName_regexpValidatorAgeOnly: "regexpValidatorAgeOnly"
    readonly property string objectName_validators: "validators"
    readonly property string objectName_regexpValidatorDobOnly: "regexpValidatorDobOnly"
    readonly property string objectName_regexpValidatorEmailOnly: "regexpValidatorEmailOnly"
    readonly property string objectName_regexpValidatorNumbersOnly: "regexpValidatorNumbersOnly"
    readonly property string objectName_regexpValidatorWordsNumbersOnly: "regexpValidatorWordsNumbersOnly"
    readonly property string objectName_regexpValidatorWordsOnly: "regexpValidatorWordsOnly"

    readonly property string objectName_rowColTableGrid: "rowColTableGrid"
    readonly property string objecName_commonTableView: "commonTableView"
    readonly property string objectName_commonTableGrid: "commonTableGrid"

    readonly property string objectName_xyRowGridView: "xyRowGridView"
    readonly property string objectName_xyRowFooter: "xyRowFooter"

    readonly property string objectName_xyRowDelegate: "xyRowDelegate"

    readonly property string objectName_reportRowDelegate: "XYReportRowDelegate"
    readonly property string objectName_reportXYRowColFooter: "XYReportColFooter"
    readonly property string objectName_xyPlotter: "xyPlotter"

    readonly property string objectName_xyCrossMouseArea: "xyCrossMouseArea"
    readonly property string objectName_xyCrossGridView: "xyCrossGridView"
    readonly property string objectName_xyColGridView: "xyColGridView"
    readonly property string objectName_xyColFooter: "xyColFooter"
    readonly property string objectName_xyColDelegate: "xyColDelegate"
    readonly property string objectName_testTabs: "testTabs"
    readonly property string objectName_testPlotTabs: "testPlotTabs"
    readonly property string objectName_testPageSwitchButtons: "testPageSwitchButtons"
    readonly property string objectName_testPageSupplementTabPage: "testPageSupplementTabPage"
    readonly property string objectName_testPagePatientResultIndex: "testPagePatientResultIndex"
    readonly property string objectName_testPageNotesTabPage: "testPageNotesTabPage"
    readonly property string objectName_testPageLabel: "testPageLabel"
    readonly property string objectName_testPageButton: "testPageButton"
    readonly property string objectName_testPageAllLabels: "testPageAllLabels"
    readonly property string objectName_testNavItems: "testNavItems"
    readonly property string objectName_testController: "testController"
    readonly property string objectName_resultCommonTableGrids: "resultCommonTableGrids"
    readonly property string objectName_plotTriComponent: "plotTriComponent"
    readonly property string objectName_plotterPointers: "plotterPointers"
    readonly property string objectName_plotRecComponent: "plotRecComponent"
    readonly property string objectName_patientLabel: "patientLabel"
    readonly property string objectName_horizontalLineComponent: "horizontalLineComponent"
    readonly property string objectName_gridCrossDelegate: "gridCrossDelegate"

    readonly property string objectName_reportTabs: "reportTabs"
    readonly property string objectName_reportRangeSlider: "reportRangeSlider"
    readonly property string objectName_reportPraticeTimeline: "reportPraticeTimeline"
    readonly property string objectName_reportPraticeTableGrid: "reportPraticeTableGrid"
    readonly property string objectName_reportPraticeTable: "reportPraticeTable"
    readonly property string objectName_reportPraticeDetails: "reportPraticeDetails"
    readonly property string objectName_reportPraticeDateGrid: "reportPraticeDateGrid"
    readonly property string objectName_reportPatientTimeline: "reportPatientTimeline"
    readonly property string objectName_reportPatientTableGrid: "reportPatientTableGrid"
    readonly property string objectName_reportPatientTable: "reportPatientTable"
    readonly property string objectName_reportPatientRightResult: "reportPatientRightResult"
    readonly property string objectName_reportPatientResultTabs: "reportPatientResultTabs"
    readonly property string objectName_reportPatientLeftRightGraph: "reportPatientLeftRightGraph"
    readonly property string objectName_reportPatientLeftResult: "reportPatientLeftResult"
    readonly property string objectName_reportPatientDetails: "reportPatientDetails"
    readonly property string objectName_reportPatientDateGrid: "reportPatientDateGrid"
    readonly property string objectName_reportPatientBothResult: "reportPatientBothResult"
    readonly property string objectName_reportPageHeader: "reportPageHeader"
    readonly property string objectName_reportDetailDateRange: "reportDetailDateRange"
    readonly property string objectName_reportDateRangeSlider: "reportDateRangeSlider"
    readonly property string objectName_reportDateGrid: "reportDateGrid"
    readonly property string objectName_reportCustomRangeSlider: "reportCustomRangeSlider"

    readonly property string objectName_manageOperator: "manageOperator"
    readonly property string objectName_editOperator: "editOperator"
    readonly property string objectName_adminOperation: "adminOperation"



}
