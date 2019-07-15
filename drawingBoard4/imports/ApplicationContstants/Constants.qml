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
import "."
import "./../../"
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
    readonly property string actionBtnBackgroundColor: "#3A9FA4"
    readonly property string headerBackgroundColor: "#5EBDC3"
    readonly property string actionBtnBorderColor: "black"
    readonly property string label_searchQuestion: "You can enter some of the patient's details to veiw matching enteries"
    readonly property string label_searchPatientTitle: qsTr("Please select an existing patient")
    readonly property string label_testPgHeader: qsTr("Patient Testing Screen")
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
}
