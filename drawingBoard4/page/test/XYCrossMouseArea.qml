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
import "."
import "./../../images/"
import "./../../delegates/"
import "./../../models/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
MouseArea {
    id: mouseArea
    property Rectangle item_horizontal : null;
    property Rectangle item_Vertical : null;
    property Rectangle item_mouseClick: null;
    property real mousePressedX: 0
    property real mousePressedY: 0
    property real mouseReleasedX: 0
    property real mouseReleasedY: 0
    property real pressedWidth: 0
    property real pressedHeight: 0
    property real currentMouseX: 0
    property real currentMouseY: 0
    property real itemMouseX: 0
    property real itemMouseY: 0
    PlotterPointers{
        id: sample
        anchors.fill: parent
    }
    
    onClicked:
    {
        
        var pt = Qt.point(mouse.x,mouse.y)
        //var newPt = mapToGlobal(pt);
        if(mouseArea.contains(Qt.point(mouse.x,mouse.y)))
        {
            
        }
        else
        {
            return;
        }
        
        if ( mouse.x >= mouseArea.x && mouse.x < mouseArea.width &&
                mouse.y >= mouseArea.y && mouse.y < mouseArea.height)
        {
            if (item_horizontal !== null) {
                item_horizontal.destroy ();
            }
            if (item_Vertical !== null) {
                item_Vertical.destroy ();
            }
            var horizontal_options = {
                "x" : (mouse.x),
                "y" : (1),
                "height":mouseArea.height,
                "ver":1
            }
            var vertical_options = {
                "x" : (1),
                "y" : (mouse.y),
                "width":(mouseArea.width),
                "hor":1
                
            }
            
            item_horizontal = lineItem.horVerLine.createObject (mouseArea, horizontal_options);
            item_horizontal.lineColor = "red"
            item_Vertical = lineItem.horVerLine.createObject (mouseArea,vertical_options);
            item_Vertical.lineColor = "red"
            //item_Vertical = mouseArea.width
            //item_horizontal = mouseArea.height
            mouseArea.mousePressedX = mouse.x
            mouseArea.mousePressedY = mouse.y
            item_horizontal.lastX = mouse.x//mouseArea.mousePressedX
            item_horizontal.lastY  = mouse.y//mouseArea.mousePressedY
            item_horizontal.lastWidth = mouseArea.width
            item_horizontal.lastHeight = mouseArea.height
            
            
            item_Vertical.lastX = mouse.x//mouseArea.mousePressedX
            item_Vertical.lastY  = mouse.y//mouseArea.mousePressedY
            item_Vertical.lastWidth = mouseArea.width
            item_Vertical.lastHeight = mouseArea.height
            
            console.log("The mouse pressed is"+mousePressedX+"The mouse released"+mousePressedY)
            //component_horizontalLineComponent.internalSettings.color ="blue"
            
        }
        var value5 = mouse.x * (numGridCol)/mouseArea.width;
        var value6 = mouse.y * (numGridRow)/mouseArea.height;
        var value8 = 1 * (numGridRow)/mouseArea.height;
        var value7 = ((numGridRow) - value6);
        var value9 = numGridRow - value8;
        var startPoint = Qt.point(value5,1);//(value7*10)
        var endPoint = Qt.point(value5,numGridRow*10);//(value7*10)
        console.log("The start and end point is"+ startPoint+ "then end point is"+endPoint)
        var plottingPoint =  PlotPoint.intersectionPoint(startPoint,endPoint);
        if(PlotPoint.containsIntersection)
        {
            var value1reverse = numGridRow - ((plottingPoint.y)/10);
            var value5reverse = plottingPoint.x * mouseArea.width/numGridCol;
            var value6reverse = value1reverse * mouseArea.height/numGridRow;
            console.log("Intersection point"+plottingPoint)
            if(item_mouseClick !== null)
            {
                item_mouseClick.destroy();
            }
            item_mouseClick = plotRecComponent.createObject (mouseArea,{"x": value5reverse-5,
                                                                 "y": value6reverse-5});
            mouseAreaWidth = mouseArea.width;
            mouseAreaHeight = mouseArea.height;
            itemMouseX = plottingPoint.x;//value5reverse-5;
            itemMouseY= plottingPoint.y//value6reverse-5;
            //var value1reverse = numGridRow - ((plottingPoint.y)/10);
            //var value5reverse = plottingPoint.x * mouseArea.width/numGridCol;
            //var value6reverse = value1reverse * mouseArea.height/numGridRow;
        }
        console.log("The width are"+mouseAreaWidth+"height are"+mouseAreaHeight+"itemX"+itemMouseX+"itemY"+itemMouseY+"px"+plottingPoint.x+"py"+plottingPoint.y)
    }
    onPositionChanged: {
        if ( mouse.x >= mouseArea.x && mouse.x < mouseArea.width &&
                mouse.y >= mouseArea.y && mouse.y < mouseArea.height)
        {
            mouseArea.mousePressedX = mouse.x
            mouseArea.mousePressedY = mouse.y
            console.log("The mouse pressed is"+mousePressedX+"The mouse released"+mousePressedY)
            var value5 = mouse.x * (numGridCol)/mouseArea.width;
            var value6 = mouse.y * (numGridRow)/mouseArea.height;
            var value7 = ((numGridRow) - value6);
            console.log("The value5 will b"+value5);
            console.log("The value6 will b"+value6);
            console.log("The value7 will b"+value7);
            if (item_horizontal !== null)
            {
                item_horizontal.x = ((mouse.x));
                item_horizontal.height = mouseArea.height
                item_horizontal.y =0
                
                item_horizontal.lastX = mouseArea.mousePressedX
                item_horizontal.lastY  = mouseArea.mousePressedY
                item_horizontal.lastWidth = mouseArea.width
                item_horizontal.lastHeight = mouseArea.height
                
                
                
            }
            if (item_Vertical !== null)
            {
                item_Vertical.x = ((0));
                item_Vertical.y =mouse.y
                item_Vertical.width = mouseArea.width
                
                item_Vertical.lastX = mouseArea.mousePressedX
                item_Vertical.lastY  = mouseArea.mousePressedY
                item_Vertical.lastWidth = mouseArea.width
                item_Vertical.lastHeight = mouseArea.height
            }
        }
        
    }
    
    onWidthChanged: widthHeightChanged();
    onHeightChanged:widthHeightChanged();
    
    function widthHeightChanged(){
        item_horizontal.lastX = (item_horizontal.lastX/item_horizontal.lastWidth)*mouseArea.width
        item_horizontal.lastY = (item_horizontal.lastY/item_horizontal.lastHeight)*mouseArea.height
        item_horizontal.lastWidth = mouseArea.width
        item_horizontal.lastHeight = mouseArea.height
        item_Vertical.lastX = (item_Vertical.lastX/item_Vertical.lastWidth)*mouseArea.width
        item_Vertical.lastY = (item_Vertical.lastY/item_Vertical.lastHeight)*mouseArea.height
        item_Vertical.lastWidth = mouseArea.width
        item_Vertical.lastHeight = mouseArea.height
        console.log("item_horizontal are on"+  item_horizontal.lastX+"next"+ item_horizontal.lastY+"aagain" +item_horizontal.lastWidth+item_horizontal.lastHeight)
        console.log("item_Vertical are on"+  item_Vertical.lastX+"next"+ item_Vertical.lastY+"aagain" +item_Vertical.lastWidth+item_Vertical.lastHeight)
        if (item_horizontal !== null)
        {
            item_horizontal.x = ((item_horizontal.lastX));
            item_horizontal.height = mouseArea.height
        }
        if (item_Vertical !== null)
        {
            item_Vertical.y =item_Vertical.lastY
            item_Vertical.width = mouseArea.width
        }
        var value1reverse = numGridRow - ((itemMouseY)/10);
        var value5reverse =itemMouseX * mouseArea.width/numGridCol;
        var value6reverse = value1reverse * mouseArea.height/numGridRow;
        if(item_mouseClick !== null)
        {
            item_mouseClick.destroy();
        }
        item_mouseClick = plotRecComponent.createObject (mouseArea,{"x": value5reverse-5,
                                                             "y": value6reverse-5});
    }
}
