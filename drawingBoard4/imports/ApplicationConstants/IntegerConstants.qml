pragma Singleton
import QtQuick 2.12
//import "."
//import "./../../"
/*!
   \qmltype IntegerConstants
   \brief This contains all the integer Constants that are used in the application.

  This is used in the most of the front end classes.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of IntegerConstants is demonstrated below
   \qml
   Rectangle{
    id:ready
    anchors.fill:parent
    border.width: IntegerConstants.page_fontSize
    border.color: OtherConstants.backgroundColor
    }
   \endqml

*/
QtObject {

    readonly property int width: 1024
    readonly property int height: 768
    readonly property int leftSideBarWidth: 366
    readonly property int defaultMargin: 8
    readonly property int m_intChkFontSize: 10
    readonly property int m_intLblFontSize: 12
    readonly property int actionBtnWidth: 75
    readonly property int actionBtnHeight: 75
    readonly property int testPage_lblHeight: 25
    readonly property int testPage_lblWidth: 200
    readonly property int testPage_bottomMargin: -2 *20// testPage_lblHeight
    readonly property int testPage_rightMargin: -200
    readonly property int testPage_lblFontSize: 20//25



    readonly property int columnSpacingTen: 10
    readonly property int rowSpacingTen: 10
    readonly property int columnCount1: 1
    readonly property int columnCount2:2
    readonly property int columnCount3: 3
    readonly property int columnCount4: 4
    readonly property int columnCount5: 5
    readonly property int columnCount6: 6
    readonly property int columnCount7: 7
    readonly property int columnCount8: 8
    readonly property int columnCount9: 9
    readonly property int columnCount10:10


    readonly property int columnSpan1: 1
    readonly property int columnSpan2:2
    readonly property int columnSpan3: 3
    readonly property int columnSpan4: 4
    readonly property int columnSpan5: 5
    readonly property int columnSpan6: 6
    readonly property int columnSpan7: 7
    readonly property int columnSpan8: 8
    readonly property int columnSpan9: 9
    readonly property int columnSpan10:10


    readonly property int rowCount1: 1
    readonly property int rowCount2:2
    readonly property int rowCount3: 3
    readonly property int rowCount4: 4
    readonly property int rowCount5: 5
    readonly property int rowCount6: 6
    readonly property int rowCount7: 7
    readonly property int rowCount8: 8
    readonly property int rowCount9: 9
    readonly property int rowCount10:10

    readonly property int rowSpan1: 1
    readonly property int rowSpan2:2
    readonly property int rowSpan3: 3
    readonly property int rowSpan4: 4
    readonly property int rowSpan5: 5
    readonly property int rowSpan6: 6
    readonly property int rowSpan7: 7
    readonly property int rowSpan8: 8
    readonly property int rowSpan9: 9
    readonly property int rowSpan10:10



    readonly property int margin5: 5
    readonly property int margin10: 10
    readonly property int margin15: 15
    readonly property int margin20: 20
    readonly property int margin25: 25
    readonly property int margin30: 30
    readonly property int margin35: 35
    readonly property int margin40: 40
    readonly property int margin45: 45
    readonly property int margin50: 50
    readonly property int margin55: 55
    readonly property int margin60: 60
    readonly property int margin65: 65
    readonly property int margin70: 70
    readonly property int margin75: 75
    readonly property int margin80: 80
    readonly property int margin85: 85
    readonly property int margin90: 90
    readonly property int margin95: 95
    readonly property int margin100: 100

    readonly property int spacing5: 5
    readonly property int spacing10: 10
    readonly property int spacing15: 15
    readonly property int spacing20: 20
    readonly property int spacing25: 25
    readonly property int spacing30: 30
    readonly property int spacing35: 35
    readonly property int spacing40: 40
    readonly property int spacing45: 45
    readonly property int spacing50: 50
    readonly property int spacing55: 55
    readonly property int spacing60: 60
    readonly property int spacing65: 65
    readonly property int spacing70: 70
    readonly property int spacing75: 75
    readonly property int spacing80: 80
    readonly property int spacing85: 85
    readonly property int spacing90: 90
    readonly property int spacing95: 95
    readonly property int spacing100: 100

    readonly property int dobStartDate: 1900
    readonly property int dobEndDate: 2019
    readonly property int dobLeapYearMinDays: 28
    readonly property int dobLeapYearMaxDays: 29
    readonly property int dobCalNoOfDays: 31
    readonly property int dobCalTumblerWidth: 100
    readonly property int dobCalTumblerHeight: 200
    readonly property int borderWidth1: 1
    readonly property int borderWidth2: 2
    readonly property int borderWidth3: 3
    readonly property int borderWidth4: 4
    readonly property int borderWidth5: 5
    readonly property int borderWidth6: 6
    readonly property int borderWidth7: 7
    readonly property int borderWidth8: 8
    readonly property int borderWidth9: 9
    readonly property int borderWidth10: 10


    readonly property int numGridRow: 6
    readonly property int numGridCol: 5//10//20//10
    readonly property int numReportGridCol: 7
    readonly property int numReportGridRow: 5

    readonly property int page_fontSize: 25

    readonly property int homePageBodyBtnHeight: 175
    readonly property int homePageBodyBtnwidth: 175


    readonly property int actionIndexHome: 1
    readonly property int actionIndexSetting: 2
    readonly property int actionIndexHelp: 3
    readonly property int actionIndexSwitchPatient: 4
    readonly property int actionIndexSavePatient: 5
    readonly property int actionIndexTestPatient: 6
    readonly property int actionIndexNewPatient: 7
    readonly property int actionIndexEditPatient: 8
    readonly property int actionIndexExistingPatient: 13
    readonly property int actionIndexViewPatient: 9
    readonly property int actionIndexAddOperator: 10
    readonly property int actionIndexEditOperator: 11
    readonly property int actionIndexSwitchOperator: 12
    readonly property int actionIndexPlayCentral:13
    readonly property int actionIndexPlayPeripheral:14
    readonly property int actionIndexPauseAll:15
    readonly property int actionIndexStopAll:16
    readonly property int actionIndexSaveAll:17

    readonly property int actionIndexFirst: 18
    readonly property int actionIndexPrev: 19
    readonly property int actionIndexNext: 20
    readonly property int actionIndexLast: 21

    readonly property int actionIndexAllRecord: 1
    readonly property int actionIndexToday: 2
    readonly property int actionIndexThisWeek: 3
    readonly property int actionIndexThisMonth: 4
    readonly property int actionIndexSixMonth: 5
    readonly property int actionIndexThisYear: 6
    readonly property int actionIndexOneYear: 7
    readonly property int actionIndexTwoYear: 8
    readonly property int actionIndexThreeYear: 9
    readonly property int actionIndexCustom: 10

    readonly property int actionIndexPatientNameLabel: 1
    readonly property int actionIndexPatientNameText: 2
    readonly property int actionIndexMedRefLabel: 3
    readonly property int actionIndexMedRefText: 4
    readonly property int actionIndexAddressLabel: 5
    readonly property int actionIndexAddressText: 6
    readonly property int actionIndexBirthDateLabel: 7
    readonly property int actionIndexBirthDateText: 8
    readonly property int actionIndexPatientIolFittedLabel: 9
    readonly property int actionIndexPatientIolFittedText: 10
    readonly property int actionIndexPatientIolAgeLabel: 11
    readonly property int actionIndexPatientIolAgeText: 12



    readonly property int lbl_ReportForPatient: 1
    readonly property int lbl_rpPatientName: 2
    readonly property int lbl_ReportFrom: 3
    readonly property int lbl_rpFromDate: 4
    readonly property int lbl_reportTo: 5
    readonly property int lbl_rpToDate: 6
    readonly property int lbl_rpGenerate: 7
    readonly property int lbl_rpGenerateValue: 8
    readonly property int lbl_rpNoOfRETests: 9
    readonly property int lbl_rpNoOfRETestsValue: 10
    readonly property int lbl_rpNoOfLETests: 11
    readonly property int lbl_rpNoOfLETestsValue: 12
    readonly property int lbl_rpTotalTests: 13
    readonly property int lbl_rpTotalTestsValue: 14
    readonly property int lbl_rpNoOfCombinedTests: 15
    readonly property int lbl_rpNoOfCombinedTestsValue: 16


    readonly property int numberOnly: 1
    readonly property int numberWordOnly: 2
    readonly property int dobOnly: 3
    readonly property int ageOnly: 4
    readonly property int emailOnly: 5
    readonly property int wordOnly: 6


    readonly property int numberZero: 0
    readonly property int numberOne: 1
    readonly property int numberTwo: 2
    readonly property int numberThree: 3
    readonly property int numberFour: 4
    readonly property int numberFive: 5
    readonly property int numberSix: 6
    readonly property int numberSeven: 7
    readonly property int numberEight: 8
    readonly property int numberNine: 9
    readonly property int numberTen: 10

    readonly property int switchOn: 0
    readonly property int switchOff: 1

    readonly property int minAge: 0
    readonly property int minWeightMetricOFF: 10
    readonly property int minWeightMetricON: 22
    readonly property int minHeightMetricOFF: 1
    readonly property int minHeightMetricON: 3
    readonly property int minHeightSubMetricON: 3
    readonly property int minCigPerDay: 0
    readonly property int minAlcholPerDay: 0
    readonly property int minPortionsPerDay: 0

    readonly property int luteinDosageMinIntake: 1
    readonly property int luteinDosageMaxIntake: 10
    readonly property int luteinIntakeMin: 1
    readonly property int luteinIntakeMax: 10


    readonly property int maxAge: 100
    readonly property int maxWeightMetricOFF: 100
    readonly property int maxWeightMetricON: 220
    readonly property int maxHeightMetricOFF: 3
    //readonly property int minHeightMetricON: 0
    readonly property int maxHeightMetricON: 9
    readonly property int maxHeightSubMetricON: 10
    readonly property int maxCigPerDay: 100
    readonly property int maxAlcholPerDay: 100
    readonly property int maxPortionsPerDay: 100


}
