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
import "./../../images/"
import "./../../models"
import "./../../delegates"
//import appContstants 1.0
import "./../home/"
import "./../../common/"
import "./../../models"
import "./../../delegates"
import "./../../page"
import "./../mainPages/"
import "./../reports/"
import "./../test/"
import "./../newPatient/"
import "./../changePatient/"
import TestResultModels 0.1
import QtQml.Models 2.12
import Qt.labs.calendar 1.0
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
/*!
   \qmltype NewPatientPage
   \brief This is called in Main and it contains all the main pages of the application.
    This displays the pages in a stack view format and also uses the loader

  This is used in main .
   \image tobeprovided.png

   \section1 Sample usage

   The usage of MainStack is demonstrated below
   \qml
                MainStack {
                    id: mainStack
                    clip: true
                }
   \endqml

*/
StackView{
    id:mainStack
    focus: true
    property var previousIndex: 1;
//    ItemLoader{
//        id:itmLoader
//        anchors.fill: parent
//        Layout.fillHeight: true
//        Layout.fillWidth: true
//        Component.onCompleted: {
//            if(mainStack.previousIndex === 1)
//            {
//                itmLoader.setSource("qrc:/page/mainPages/HomePage.qml")
//                itmLoader.active = true
//                itmLoader.visible = true
//            }
//        }
//        onLoaded: {
//            if(mainStack.previousIndex === 1)
//            {
//                mainStack.initialItem = itmLoader.item
//                //itmLoader.item.anchors.fill=parent
//                //itmLoader.anchors.fill=parent
//                //mainStack.push(ItemLoader.item)
                
//                itmLoader.active = true
//                itmLoader.visible = true
//                itmLoader.item.invokeSource.connect(itmLoader.setSource)
//                mainStack.update()
//                // mainStack.previousIndex = 0
//            }
            
//        }
//    }
    
//    Component.onCompleted: {
//        if(mainStack.previousIndex === 1)
//        {
//            itmLoader.setSource("qrc:/page/mainPages/ReportPage.qml")
//            itmLoader.item.anchors.fill=parent
//            itmLoader.anchors.fill=parent
//            itmLoader.active = true
//            itmLoader.visible = true
//        }
//    }
}
