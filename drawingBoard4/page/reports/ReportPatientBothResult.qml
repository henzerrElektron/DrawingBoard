import QtQuick 2.12
import QtQuick.Controls.Universal 2.12
import QtQuick.Controls.Material 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import Qt.labs.settings 1.0
import QtQml.Models 2.12
import ApplicationConstants 1.0
import "."
import "./../../images/"
//import "./../../imports/"
import "./../../models/"
import "./../../delegates/"
import "./../test/"
import "./../../common/"
import "./../../tables/"
import "./../newPatient/"
import "./../changePatient/"

/*!
   \qmltype ReportPatientBothResult
   \brief Contains the report tabs of the table for left eye

  This contains patient results for left eye .
   \image tobeprovided.png

   \section1 Sample usage

   The usage of ReportPatientBothResult is demonstrated below
   \qml
                ReportPatientBothResult{
                    id:leftResult
                    anchors.fill: parent
                }
   \endqml

*/
Rectangle {
    id: mainRec
    color: StringConstants.barBackgroundColor//"white"//StringConstants.testPage_backgroundColor
    property bool leftVisible: true
    property bool rightVisible: true
    anchors.top: parent.top
   // anchors.topMargin: 5
    anchors.left: parent.left
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    //anchors.fill: parent
    signal popupOpen()
    signal popupInvokeIndex(int index)
    signal popupInvokeSource(var source)
    //border.width: 1
    //border.color: StringConstants.label_NewPatientLabelBgColor
    function setState()
    {
        pageHeader.setDetailDateRangeSource("patient")//.state = "patient"
    }
    GridLayout{
        id: mainCol
        anchors.fill: parent
        columns: 2
        // rows:1
        columnSpacing: 10
        //     rowSpacing: 5
        //SplitView {
        //     anchors.fill: parent
        //     orientation: Qt.Horizontal

        Rectangle{
            id:leftRec
            visible: leftVisible
            Layout.fillHeight: true
            Layout.fillWidth: true
            //Layout.row: 1
            //Layout.rowSpan: 3
            //SplitView.minimumWidth:  parent.width/4
            //SplitView.preferredWidth: parent.width/2 - 20
            //SplitView.maximumWidth: parent.width/2
            //Layout.minimumWidth: parent.width/4
            //Layout.preferredWidth: parent.width/2
            // Layout.minimumHeight: parent.height
            Layout.column: 1
            Layout.columnSpan: 1
            GridLayout{
                id:leftGridLayout
                anchors.fill: parent
                rows: 3
                Rectangle{
                    id:rectanglelabel1
                    color: StringConstants.barBackgroundColor//"white"
                    //Layout.column: 1
                    Layout.row: 1
                    visible: leftVisible
                    anchors.top: subRec.bottom
                    anchors.topMargin: 5
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.preferredHeight: 25
                    Layout.minimumHeight: 25
                    Layout.maximumHeight: 25
                    //NewPatientGroupLabel{
                     GroupLabel{
                        text: StringConstants.lbl_leftEyeResults//"LeftEyeResults"
                        font { family: OtherConstants.fontFamily; pixelSize: pixelSize; weight: Font.Bold; capitalization: Font.MixedCase }
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        anchors.fill: parent
                    }
                }
                Rectangle{
                    id:rectangleSub3
                    color: StringConstants.barBackgroundColor//"white"//StringConstants.testPage_backgroundColor//"green"///
                    //Layout.column: 1
                    //Layout.columnSpan:1
                    Layout.row: 2
                    visible: leftVisible
                    Layout.fillHeight: true
                    anchors.top: rectanglelabel1.bottom
                    Layout.fillWidth: true
                    Layout.topMargin: 10

                    XYPlot{
                        id:xyPlotId
                        anchors.fill: parent
                        crossTestOrReport:false
                    }

                }
                Rectangle{
                    id:rectangleSub2
                    color: StringConstants.barBackgroundColor//"white"//StringConstants.testPage_backgroundColor//"green"///
                    //Layout.column: 1
                    //Layout.columnSpan: 1
                    Layout.row: 3
                    visible: leftVisible
                    anchors.top: rectangleSub3.bottom
                    anchors.topMargin: 5
                    anchors.bottom: parent.bottom
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.preferredHeight: parent.height/3
                    Layout.maximumHeight: parent.height/3
                    Rectangle
                    {
                        id:tableRec
                        anchors.fill: parent
                        //anchors.leftMargin: 10
                        //anchors.rightMargin: 10
                        //anchors.bottomMargin: 10
                        //anchors.topMargin: 10
                        //border.width: 3
                        //border.color: StringConstants.actionBtnBackgroundColor
                        CommonTableGrid{
                            id:curTestTabs1
                            anchors.fill: parent
                            anchors.leftMargin: 5//10
                            anchors.rightMargin:5// 10
                            anchors.bottomMargin: 10
                            anchors.topMargin: 10
                            //Layout.fillHeight: true
                            //Layout.fillWidth: true
                            commonTableModel: theLeftPatientResultModel
                            repeaterModel: 6//theLeftPatientResultModel
                            searchRecVisibilty:false
                            proxySoure: theLeftPatientResultModel

                        }
                    }
                }
            }
        }
        Rectangle{
            id:rightRec
            visible: rightVisible
            //SplitView.minimumWidth:  parent.width/4
            //SplitView.preferredWidth: parent.width/2 - 20
            //SplitView.maximumWidth: parent.width/2
            //Layout.minimumWidth: parent.width/4
            //Layout.preferredWidth: parent.width/2
            //Layout.minimumHeight: parent.height
            // Layout.row: 1
            //  Layout.rowSpan: 3
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.column: 2
            Layout.columnSpan: 1
            GridLayout{
                id:rightGridLayout
                anchors.fill: parent
                rows: 3
                Rectangle{
                    id:rectanglelabel2
                    color: StringConstants.barBackgroundColor//"white"
                    anchors.top: subRec.bottom
                    visible: rightVisible
                    anchors.topMargin: 5
                    //Layout.column: 1
                    Layout.row: 1
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.preferredHeight: 25
                    Layout.minimumHeight: 25
                    Layout.maximumHeight: 25
                    //NewPatientGroupLabel{
                     GroupLabel{
                        text: StringConstants.lbl_righEyeResults//"RightEyeResults"
                        font { family: OtherConstants.fontFamily; pixelSize: pixelSize; weight: Font.Bold; capitalization: Font.MixedCase }
                        verticalAlignment: Text.AlignVCenter
                        horizontalAlignment: Text.AlignHCenter
                        anchors.fill: parent
                    }
                }

                Rectangle{
                    id:rectangleSub4
                    color: StringConstants.barBackgroundColor//"white"//StringConstants.testPage_backgroundColor//"green"///
                    //Layout.column: 1
                    //Layout.columnSpan:1
                    Layout.row: 2
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    anchors.top: rectanglelabel2.bottom
                    visible: rightVisible
                    Layout.topMargin: 10

                    XYPlot{
                        id:xyPlotId1
                        anchors.fill: parent
                        crossTestOrReport:false

                    }

                }

                Rectangle{
                    id:rectangleSub5
                    color: StringConstants.barBackgroundColor//"white"//StringConstants.testPage_backgroundColor
                    //Layout.column: 1
                    //Layout.columnSpan: 1
                    Layout.row: 3
                    visible: rightVisible
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.preferredHeight: parent.height/3
                    Layout.maximumHeight: parent.height/3
                    anchors.top: rectangleSub4.bottom
                    anchors.topMargin: 5
                    anchors.bottom: parent.bottom
                    Rectangle
                    {
                        id:tableRec1
                        anchors.fill: parent
                        //anchors.leftMargin: 10
                        //anchors.rightMargin: 10
                        //anchors.bottomMargin: 10
                        //anchors.topMargin: 10
                        //border.width: 3
                        //border.color: StringConstants.actionBtnBackgroundColor
                        CommonTableGrid{
                            id:curTestTabs2
                            anchors.fill: parent
                            anchors.leftMargin:5// 10
                            anchors.rightMargin:5// 10
                            anchors.bottomMargin: 10
                            anchors.topMargin: 10
                            commonTableModel: theRightPatientResultModel
                            repeaterModel: 6//theRightPatientResultModel
                            searchRecVisibilty:false
                            proxySoure: theRightPatientResultModel
                        }
                    }
                }
            }
        }


        //}
    }
}



/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
