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
Component{
    id: plotTriComponent;
    Rectangle{
        id:sqTriangle
        width: 10
        height: 10
        x:0
        y:0
        //color: "blue"
        Shape{
            id:sqShape
            anchors.fill: parent
            ShapePath{
                strokeWidth: 1
                strokeColor: "blue"
                strokeStyle: ShapePath.SolidLine
                startX: 0; startY:0
                PathLine{x:sqTriangle.width;y:0}
                PathLine{x:sqTriangle.width/2;y:sqTriangle.height}
                PathLine{x:0;y:0}
                
            }
        }
    }
}
