/****************************************************************************
**
** Copyright (C) 2017 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the examples of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:BSD$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** BSD License Usage
** Alternatively, you may use this file under the terms of the BSD license
** as follows:
**
** "Redistribution and use in source and binary forms, with or without
** modification, are permitted provided that the following conditions are
** met:
**   * Redistributions of source code must retain the above copyright
**     notice, this list of conditions and the following disclaimer.
**   * Redistributions in binary form must reproduce the above copyright
**     notice, this list of conditions and the following disclaimer in
**     the documentation and/or other materials provided with the
**     distribution.
**   * Neither the name of The Qt Company Ltd nor the names of its
**     contributors may be used to endorse or promote products derived
**     from this software without specific prior written permission.
**
**
** THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
** "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
** LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
** A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT
** OWNER OR CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
** SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
** LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE,
** DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY
** THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
** (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE
** OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE."
**
** $QT_END_LICENSE$
**
****************************************************************************/


pragma Singleton
import QtQuick 2.12
//import "."
//import "./../../"
/*!
   \qmltype Constants
   \brief This contains all the constants(integer and string) and this needs to be removed.


  None of the classes use this and can be removed in the future.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of DateAndLocaleConstants is demonstrated below
   \qml
   Rectangle{
    id:ready
    anchors.fill:parent
    border.width: 2px
    border.color: Constants.borderColorBlack
    }
   \endqml

*/
QtObject {
    property FontLoader fontLoader: FontLoader {
        id: fontLoader
        source: "SegoeFonts/segoeui.ttf"
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
    readonly property alias fontFamily: fontLoader.name
    readonly property alias awefontFamily: fontLoader1.name
    readonly property string icons: fontAwesomeRegular.name
    readonly property string brands: fontAwesomeBrands.name
    readonly property string solidIcons: fontAwesomeSolid.name
    readonly property int width: 1024
    readonly property int height: 768
    readonly property int leftSideBarWidth: 366

    readonly property color backgroundColor: "#443224"
    readonly property int defaultMargin: 8
    readonly property string m_strTempFrequency: qsTr("Temporal Frquency[HZ]")
    readonly property string m_strGreenBlue: qsTr("Green/Blue Ratio [dB]")
    readonly property string m_strCentral: qsTr("Central")
    readonly property string m_strPeripheral: qsTr("Peripheral")
    readonly property int m_intChkFontSize: 10
    readonly property int m_intLblFontSize: 12
    readonly property int actionBtnWidth: 75
    readonly property int actionBtnHeight: 75
    readonly property string label_NewPatientLabelBgColor: "#4A4A4A"
    readonly property string actionBtnBackgroundColor: "#3A9FA4"
    readonly property string headerBackgroundColor: "#5EBDC3"
    readonly property string actionBtnBorderColor: "black"
    readonly property string label_searchQuestion: "You can enter some of the patient's details to veiw matching enteries"
    readonly property string label_searchPatientTitle: qsTr("Please select an existing patient")
    readonly property string label_testPgHeader: qsTr("Patient Testing Screen")
    readonly property string label_newPtPgHeader: qsTr("New Patient Screen")
    readonly property string label_testPgPatient: qsTr("Patient:")
    readonly property string label_switchPatientSurname: qsTr("Surname")
    readonly property string label_switchPatientFirstName: qsTr("FirstName")
    readonly property string label_testPgMedRef: qsTr("Medical Reference:")
    readonly property string label_testPgDOB: qsTr("Birth date:")
    readonly property string label_testPgIOLFitted: qsTr("IOL Fitted(R/L):")
    readonly property string label_testPgIOLAge: qsTr("IOL Age(R/L):")
    readonly property string label_testPgEye: qsTr("Eye:")
    readonly property string label_testPgMode: qsTr("TestMode:")
    readonly property int testPage_lblHeight: 25
    readonly property int testPage_lblWidth: 200
    readonly property int testPage_bottomMargin: -2 *20// testPage_lblHeight
    readonly property int testPage_rightMargin: -200
    readonly property string testPage_backgroundColor: "#5EBDC3"
    readonly property string testPage_unCheckBtnBgColor: "#C3F1F3"
    readonly property string testPage_checkBtnBgColor: "#218A8F"
    readonly property string testPage_checkBtnBorderBgColor: "#A1ADAD"
    readonly property string testPage_lblFontColor: "#A8E2E6"
    readonly property string testPage_ResultIndexTitleBgColor: "#4A4A4A"
    readonly property string testPage_ResultIndexEyeBgColor: "#774013"
    readonly property int testPage_lblFontSize: 20//25
    readonly property int page_fontSize: 25
    readonly property string lbl_npContactMobile: qsTr("Mobile")
    readonly property string lbl_npContactAddr1: qsTr("Address Line 1")
    readonly property string lbl_npContactAddr2: qsTr("Address Line 2")
    readonly property string lbl_npContactCity: qsTr("City")
    readonly property string lbl_npContactCountry: qsTr("Country")
    readonly property string lbl_npContactEmail: qsTr("Email")
    readonly property string lbl_npContactPostalCode: qsTr("Postal Code")
    readonly property string lbl_npContactCounty: qsTr("County")
    readonly property string lbl_npContactMobilePh: qsTr("Please enter a valid mobile number")
    readonly property string lbl_npContactAddr1Ph: qsTr("Please enter Address Line 1")
    readonly property string lbl_npContactAddr2Ph: qsTr("Please enter Address Line 2")
    readonly property string lbl_npContactCityPh: qsTr("Please enter City")
    readonly property string lbl_npContactCountryPh: qsTr("Please enter Country")
    readonly property string lbl_npContactEmailPh: qsTr("Please enter Email address")
    readonly property string lbl_npContactPostalCodePh: qsTr("Please enter Postal Code")
    readonly property string lbl_npContactCountyPh: qsTr("Please enter County")
    readonly property string label_NewPatientQuestion: qsTr("Please enter patient details")


    readonly property string lbl_npSurName: qsTr("Surname")
    readonly property string lbl_npFirstName: qsTr("FirstName")
    readonly property string lbl_npMedicalReference: qsTr("Medical Reference")

    readonly property string lbl_npRequestSurName: qsTr("Please enter Surname")
    readonly property string lbl_npRequestFirstName: qsTr("Please enter FirstName")
    readonly property string lbl_npRequestMedicalReference: qsTr("Please enter the Medical Reference")

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
    readonly property int dobCalNoOfDays: 32
    readonly property int dobCalTumblerWidth: 100
    readonly property int dobCalTumblerHeight: 200


    readonly property string lbl_npPatientTitle: "Title"
    readonly property var modelTitle: ["Mr","Mrs","Dr","Other"]

    readonly property string lbl_npPatientGender: "Gender"
    readonly property var modelGender: ["Male","Female","Other"]




    readonly property string dobYear: "Year"
    readonly property string dobMonth: "Month"
    readonly property string dobDay: "Day"
    readonly property string dobTitle: "Date of Birth"

    readonly property var dobCalAllMonths: ["January","Febuary","March","April","May","June","July","August","September","October","November","December"]

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

    readonly property string borderColorBlack: "black"



}
