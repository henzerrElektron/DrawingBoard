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
import appContstants 1.0
Item {
    GridLayout{
        id:pointPlotter
        anchors.fill: parent
        GridView{
            id:plotPointView
            Layout.fillHeight: true
            Layout.fillWidth: true
            flow:GridView.FlowTopToBottom
            Component{
                id:plotPointDelegate
                 Rectangle{
                     x:
                         function value(xValue)
                         {
                           return  (xValue * plotPointView.width)/10
                         }

                     y:
                     function value(yValue)
                     {
                       return  (yValue * plotPointView.height)/6
                     }
                     width: 5
                     height: 5
                     color: "green"
                 }
            }
            model: PlotPoint.xyPlotPoints
            delegate: plotPointDelegate
        }

    }
}
