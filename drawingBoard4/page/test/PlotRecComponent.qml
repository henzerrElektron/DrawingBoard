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
import QtQuick.Controls.Styles 1.4
import QtQuick.Shapes 1.11
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
/*!
   \qmltype PlotRecComponent
   \brief Contains Component to indicate which test result belong to which mode(Standard/Detailed)

  This Component uses shape and shape path to draw the indicator shape(Rectangle)
  This Component is similar to plotTriComponent.It is used in XYCrossMouseArea
   \image tobeprovided.png

   \section1 Sample usage

   To draw Component to indicate test results
   \qml
            PlotRecComponent {        id: plotRecComponent    }
   \endqml

*/
Component{
    id: plotRecComponent;
    Rectangle{
        id:sqRec
        width: 10
        height: 10
        x:0
        y:0
        color: "blue"
    }
    //Component.onDestruction: { cleanup()    }
    //function init() { console.log("INIT "+Component.objectName)    }
    //function cleanup() {  console.log("CLEANUP "+Component.objectName) }
}
