import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Shapes 1.11
import QtQuick.Templates 2.5
import QtQuick.Layouts 1.3
import QtQuick.Extras 1.4
import QtQuick.Dialogs.qml 1.0
import QtQuick.Controls.Universal 2.0
import Qt.labs.calendar 1.0
import QtQuick.Controls.Material 2.0
import QtQuick.Controls 2.3
import Qt.labs.settings 1.0
import QtQuick 2.1
import QtQuick.Controls 1.0
import QtQuick.Controls.Styles 1.2
//import QtQuick.Controls.Styles 1.4
import QtQuick.Shapes 1.11
import "."
import "./images/"
import "models"
import "page"
import "delegates"
//import appContstants 1.0
import "./page/home/"
import "./common/"
import "./models"
import "./delegates"
import "./page"
import "./page/mainPages/"
import "./page/reports/"
import "./page/test/"
import "./page/newPatient/"
import "./page/changePatient/"
import TestResultModels 0.1
import QtQml.Models 2.12
import Qt.labs.calendar 1.0
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
Window {
    id: window
    visible: true
    width: 640
    height:480
    title: qsTr("Hello World")


    property Rectangle highlightItem : null;
    property Rectangle highlightItem1 : null;
    //property int numGridRow: 6
    //property int numGridCol: 10
    GridLayout{
        id:mainGrid
        anchors.fill: parent
        //        ReportPage{
        //            id:rpPage
        //            anchors.fill: parent
        //        }

        MainSwipe {
            id: mainStack
            Layout.fillHeight: true
            Layout.fillWidth: true
            anchors.fill: parent
            clip: true
        }
        //no longer needed for this anymore
        //            Repeater{
        //                id:allPages
        //                model:OtherConstants.navigationModel
        //                ItemLoader{
        //                    id:pageLoader
        //                    anchors.fill: parent
        //                    onPgInvokeIndex: {
        //                        mainStack.previousIndex = index
        //                        mainStack.replaceDestination(pageLoader)
        //                    }

        //                    onPgLoad: {
        //                        console.log("Page Loaded")
        //                        mainStack.replaceDestination(pageLoader)
        //                    }
        //                    onLoaded: {
        //                        console.log("All loaded")
        //                        if(modelData.index === 1)
        //                        {
        //                            visible = true
        //                            active = true
        //                            mainStack.initialItem = item
        //                        }
        //                    }
        //                }
        //                Component.onCompleted:{
        //                    mainStack.previousIndex = 1
        //                    var prevItemLoader= allPages.itemAt(1)
        //                     mainStack.initialItem = prevItemLoader
        //                    ///mainStack.replace(prevItemLoader)
        //                }

        //           }

        //            function replaceDestination(pageLoader){
        //                //var previousIndex = mainStack.currentItem.index
        //                var prevItemLoader
        //                if(previousIndex >= 0)
        //                {
        //                    prevItemLoader = allPages.itemAt(previousIndex)
        //                }
        //                if(previousIndex >= 0)
        //                {
        //                    allPages.itemAt(previousIndex).active = true
        //                    allPages.itemAt(previousIndex).visible = true
        //                }
        //                mainStack.replace(prevItemLoader.item)

        //            }
        // }


    }
}

































/*##^## Designer {
    D{i:2;anchors_width:200;anchors_x:220}D{i:1;anchors_height:400;anchors_width:70;anchors_x:0;anchors_y:0}
}
 ##^##*/
