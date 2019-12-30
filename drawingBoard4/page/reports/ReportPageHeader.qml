import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Shapes 1.11
import QtQuick.Templates 2.5
import QtQuick.Layouts 1.12
import QtQuick.Extras 1.4
import QtQuick.Dialogs.qml 1.0
import QtQuick.Controls.Universal 2.0
import Qt.labs.calendar 1.0
import QtQuick.Controls.Material 2.0
import QtQuick.Controls 2.3
import Qt.labs.settings 1.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Shapes 1.11
import QtQml.Models 2.12
import ApplicationConstants 1.0
import "."
import "./../../images/"
//import "./../../imports/"
import "./../../models/"
import "./../../delegates/"
import "./../test/"
import "./../../common/"

Rectangle {
    id: rpHeader
    //border.width: 15
    //border.color: "white"
    color: StringConstants.barBackgroundColor//testPage_backgroundColor
    // property string modelName: StringConstants.modelReportPatientItems
    property alias filterName: rpDateGrid.filterName
    property alias detailFilterName: rpDetailLabelGroup.filterName
    property alias labelText: rpDetailLabelGroup.labelText
    //color: StringConstants.actionBtnBackgroundColor////StringConstants.testPage_backgroundColor//StringConstants.testPage_backgroundColor
    anchors.fill: parent
    signal openBtn1()
    signal openBtn2()
    signal openBtn3()
    signal openBtn4()
    signal openBtn5()
    signal openBtn6()
    signal openDateRange()
    signal invokeSource(var source)
    onOpenBtn5: console.log("OpenBtn5 clicked")
    //    onBtn1Clicked: console.log("Button 1 Report Patient Timeline clicked")
    //    onBtn2Clicked: console.log("Button 2 Report Patient Timeline Clicked")
    //    onBtn3Clicked: console.log("Button 3 Report Patient Timeline clicked")
    //    onBtn4Clicked: console.log("Button 4 Report Patient Timeline Clicked")
    //    onBtn5Clicked: console.log("Button 5 Report Patient Timeline clicked")
    //    onBtn6Clicked: console.log("Button 6 Report Patient Timeline Clicked")
//    function setDetailDateRangeSource(source)
//    {
//        //rpHeader.state = source//"pratice"
//        //console.log("The value of the source is"+source)
//        if(source === "pratice")
//        {
//            //mainLoader.source = "ReportPraticeDateGrid.qml"
//            detailsLoader.source = "ReportPraticeDetails.qml"
//        }
//        else
//        {
//            // mainLoader.source = "ReportPatientDateGrid.qml"
//            detailsLoader.source = "ReportPatientDetails.qml"
//        }

//        mainLoader.update()

//    }
    function recevSignal1()
    {
        console.log("Recevie signal 1")
        rpHeader.btn1Clicked()
    }

    onInvokeSource: {
        console.log("Source invoked"+source)
    }

    signal invokeIndex(int index)
    onInvokeIndex: {
        console.log("Index invoked"+index)
    }
    GridLayout{
        id: mainRow
        anchors.fill: parent
        rows:1//3


        Rectangle {
            id: rectangle2
            color: StringConstants.barBackgroundColor//testPage_backgroundColor
            Layout.fillHeight: true
            Layout.fillWidth: true
            Layout.row: 2
            Layout.rowSpan: 2
            GridLayout{
                id: mainCol
                anchors.fill: parent
                columns: 2
                columnSpacing: 10
                //rows: 3
                Rectangle{
                    id:rectangleSub1
                    color: StringConstants.barBackgroundColor//testPage_backgroundColor
                    Layout.rightMargin: 3//3
                    Layout.bottomMargin: 2
                    Layout.leftMargin: 2
                    Layout.topMargin: 2
                    Layout.row: 1
                    Layout.column: 1
                    Layout.columnSpan: 1
                    //Layout.column: 1
                    //Layout.row: 2
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    //Layout.leftMargin: 10
                    Layout.preferredWidth:parent.width/2 - 10//500//
                    Layout.minimumWidth: parent.width/2 - 10//500//
                    Layout.maximumWidth: parent.width/2 - 10//500//
                    border.width: 3
                    border.color: StringConstants.label_NewPatientLabelBgColor
                    //width: 100
                    //height: 150

                    ReportDetails{
                        id:rpDetailLabelGroup
                        anchors.bottomMargin: 10
                        anchors.rightMargin: 10
                        anchors.leftMargin: 10
                        anchors.fill: parent
                        anchors.margins:5
                    }

                    //                    Loader{
                    //                        id:detailsLoader
                    //                        anchors.fill: parent
                    //                        Connections{
                    //                            target: detailsLoader.item
                    //                        }
                    //                    }
                    //                    ReportPageDateBtnGroup{
                    //                        id:dateGroupBtns
                    //                        group1: modelName//StringConstants.modelReportPatientItems
                    //                        group: modelName//StringConstants.modelReportPatientItems
                    //                        filterName: modelName//.modelReportPatientItems
                    //                        verticalLayoutDirection: Grid.TopToBottom
                    //                        layoutDirection: Qt.LeftToRight
                    //                        flow: Grid.LeftToRight
                    //                        flickableDirection: Flickable.HorizontalAndVerticalFlick
                    //                    }

                }






                Rectangle{
                    id:rectangleSub2
                    color: StringConstants.barBackgroundColor//testPage_backgroundColor
                    Layout.rightMargin: 2
                    Layout.bottomMargin: 2
                    Layout.leftMargin: 2
                    Layout.topMargin: 2
                    Layout.row: 1
                    Layout.column: 2
                    Layout.columnSpan: 1
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    Layout.preferredWidth:parent.width/2 -10//500//
                    Layout.minimumWidth: parent.width/2 - 10//500//
                    Layout.maximumWidth: parent.width/2 - 10//500//
                    border.width: 3
                    border.color: StringConstants.label_NewPatientLabelBgColor
                    //Layout.rightMargin: 10
                    ReportDateGrid{
                        id:rpDateGrid
                        anchors.bottomMargin: 10
                        anchors.rightMargin: 10
                        anchors.leftMargin: 10
                        anchors.fill: parent
                        anchors.margins:5
                        Component.onCompleted: {
                            rpDateGrid.invokeSource.connect(rpHeader.invokeSource)
                            rpDateGrid.invokeIndex.connect(rpHeader.invokeIndex)
                            // homePageLabel.invokeSource.connect(homePage.invokeSource)
                        }
                    }

                    //                    ReportPageDateBtnGroup{
                    //                        id:dateGroupBtns1
                    //                        group1: modelName//StringConstants.modelReportPatientItems
                    //                        group: modelName//StringConstants.modelReportPatientItems
                    //                        filterName: modelName//.modelReportPatientItems
                    //                        verticalLayoutDirection: Grid.TopToBottom
                    //                        layoutDirection: Qt.LeftToRight
                    //                        flow: Grid.LeftToRight
                    //                        flickableDirection: Flickable.HorizontalAndVerticalFlick
                    //                    }
                    //                    Loader{
                    //                        id:mainLoader
                    //                        anchors.fill: parent
                    //                        Connections{
                    //                            target: mainLoader.item
                    //                            onOpenDateRange:rpHeader.openDateRange()
                    //                            onBtn1Clicked:rpHeader.openBtn1()
                    //                            onBtn2Clicked:rpHeader.openBtn2()
                    //                            onBtn3Clicked:rpHeader.openBtn3()
                    //                            onBtn4Clicked:rpHeader.openBtn4()
                    //                            onBtn5Clicked:rpHeader.openBtn5()
                    //                            onBtn6Clicked:rpHeader.openBtn6()
                    //                        }
                    //                    }

                }
            }
        }
        //}

        Component.onCompleted: {
           // setDetailDateRangeSource("Pratice")
        }
    }

}

































































































/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1;anchors_height:200;anchors_width:200;anchors_x:107;anchors_y:66}
}
 ##^##*/
