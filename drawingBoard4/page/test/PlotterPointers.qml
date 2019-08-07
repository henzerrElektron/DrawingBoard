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
import ApplicationIntegerConstants 1.0
import ApplicationStringConstants 1.0
import ApplicationOtherConstants 1.0
//import appContstants 1.0
Item {
    id:root
    anchors.fill: parent
    property Rectangle plotShapeRecItem : null;
    property Rectangle item_point_horizontal : null;
    property Rectangle item_point_vertical : null;

    //Flow {
    //    id: element
    //    anchors.fill: parent
    //    PathView{
    //        anchors.fill: parent
    //        model: PlotPoint.trackPointVec
    //        path: Path{
    //            startX: model.modelData.xyPoint1.x; startY: model.modelData.xyPoint1.y
    //            PathQuad { x: model.modelData.xyPoint2.x; y: model.modelData.xyPoint2.y }
    //        }
    //    }
    function xvalues(n){
        var xItem = 0;
        xItem =  (n * mouseAreaWidth)/numGridCol
        console.log(xItem+"Width"+mouseAreaWidth+"col"+numGridCol)
        return xItem;
    }
    function yvalues(n){
        var yItem = 0;
        var tempItem = 0;
        var h = 0;
        h = ((numGridRow * 10) - n);
        console.log("The value of n was"+n+"The value of h is"+h)
        tempItem =  (h * mouseAreaHeight)/(numGridRow*10)
        //yItem = qAbs((numGridRow * 10) - tempItem);
        console.log(tempItem+"yitem"+yItem+"height"+mouseAreaWidth+"row"+numGridRow)
        return tempItem;
    }
    GridLayout
    {
        id:gridCurrent
        anchors.fill: parent
//        HorizontalLineComponent{
//            id:component_horizontalLineComponent
//        }
//        VerticalLineComponent{
//            id:component_verticalLineComponent
//        }
        Rectangle {
            id: gridRec
            //anchors.fill: parent
            Layout.fillHeight: true
            Layout.fillWidth: true
            //width: 500
            //height: 500
            color: "transparent"
            //property var PathLine;
            Repeater{
                anchors.fill: parent
                model: PlotPoint.trackPointVec
                Rectangle{
                    id:rec
                    width: 8
                    height: 8
                    color: "transparent"
                    border.color: "blue"
                    border.width: 1
                    x: xvalues(model.modelData.xyPoint2.x) - width/2
                    y:yvalues(model.modelData.xyPoint2.y) - height/2
                    property int repeaterIndex: index
                    property real mappedX: 0
                    property real mappedY: 0
                    property point mappedXY: Qt.point(0,0)
                    property point mappedItem1XY: Qt.point(0,0)
                    property real mappedItem1X: 0
                    property real mappedItem1Y: 0
                    property point mappedItem2XY: Qt.point(0,0)
                    property real mappedItem2X: 0
                    property real mappedItem2Y: 0

                    onRepeaterIndexChanged:
                    {
                        mappedItem1XY = mapToItem(root,model.modelData.xyPoint2.x,model.modelData.xyPoint2.y)
                        mappedItem1X = mappedItem1XY.x
                        mappedItem1Y = mappedItem1XY.y
                        mappedItem2XY = mapToItem(root,model.modelData.xyPoint2.x,model.modelData.xyPoint2.y)
                        mappedItem2X = mappedItem2XY.x
                        mappedItem2Y = mappedItem2XY.y
                        mappedXY = mapFromGlobal(model.modelData.xyPoint2.x,model.modelData.xyPoint2.y)
                        mappedX =  mappedXY.x
                        mappedY = mappedXY.y
                        console.log("rootwidth"+root.width+"height"+root.height+"XValues"+xvalues(model.modelData.xyPoint2.x)+yvalues(model.modelData.xyPoint2.y))
                        //console.log("x"+mappedItem1X+"y"+mappedItem1Y+mappedItem1XY+"confused"+model.modelData.xyPoint2.x+model.modelData.xyPoint2.y+"tested"+mappedX,mappedY,mappedXY)
                    }
                    // x: mappedItem1X//model.modelData.xyPoint2.x
                    //  y: mappedItem1Y//model.modelData.xyPoint2.y



                    //                    Text {
                    //                        id: curtest
                    //                        text:model.modelData.Count+"-"+model.modelData.xyPoint1.x+"-"+model.modelData.xyPoint1.y+
                    //                             "-2-"+model.modelData.xyPoint2.x+""+model.modelData.xyPoint2.y
                    //                        // width: 100
                    //                        // height: 100

                    //                        color: "red"
                    //                    }

                }
            }
            Repeater{
                model: PlotPoint.trackPointVec
                anchors.fill: parent
                Rectangle{
                    id:rec2
                    color: "transparent"
                    //                    x: xvalues(model.modelData.xyPoint2.x);
                    //                    y:root.y//yvalues(model.modelData.xyPoint2.y)
                    //                    width: xvalues(model.modelData.xyPoint2.x) - xvalues(model.modelData.xyPoint1.x)
                    //                    height: mouseAreaHeight
                    property int repeaterIndex: index
                    //                onRepeaterIndexChanged: {

                    //                    //                //var item_pos = map.fromCoordinate(map_item.coordinate, false)
                    //                    var PathLine = Qt.createQmlObject('import QtQuick 2.12; PathLine {}',
                    //                                                      pather);
                    //                    PathLine.x = model.modelData.xyPoint2.x //- item_pos.x
                    //                    PathLine.y = model.modelData.xyPoint2.y //- item_pos.y
                    //                    pather.pathElements.push(PathLine)

                    //                }

                    Shape {
                        id:shqp
                        anchors.fill: parent
                        //property var PointerArray: []
                        ShapePath {
                            id:pather
                            strokeWidth: 2
                            strokeColor: "black"
                            fillColor: "transparent" // ignored with the gradient set
                            strokeStyle: ShapePath.DashLine
                            dashPattern: [ 1, 4 ]
                            //startX: rec.mappedItem1X;startY: rec.mappedItem1Y
                            //PathLine{x:rec.mappedItem2X;y:rec.mappedItem2Y}
                            startX: xvalues(model.modelData.xyPoint1.x) ; startY:yvalues( model.modelData.xyPoint1.y)
                            //PathLine { x: rec.x+ rec.width; y: rec.y + rec.height }
                            // PathLine { x: model.modelData.xyPoint2.x; y: model.modelData.xyPoint2.y}
                            PathLine{
                                x: xvalues(model.modelData.xyPoint2.x);
                                y:yvalues(model.modelData.xyPoint2.y)

                            }
                        }


                    }
                    MouseArea{
                        //anchors.fill: root
                        id:rec2MouseArea
                        anchors.fill: rec2
                        //height: mouseAreaHeight
                        //width: 100
                        //propagateComposedEvents: true
                        //                        Rectangle{
                        //                            id:tempRec
                        //                            color: "red"
                        //                            width:  5
                        //                            height: 5
                        //                        }

                        onPressed: {
                            console.log("I am pressed")
                            if(plotShapeRecItem != null)
                            {
                                plotShapeRecItem.destroy();
                            }
                            var pt = Qt.point(mouse.x,mouse.y)
                            plotShapeRecItem = plotRecComponent.createObject(rec2,{"x": (mouse.x) ,"y":(mouse.y)});
                        }
                    }


                }
            }
        }
    }
    Component{
        id: plotShapeRecComponent;
        Rectangle{
            id:sqRec
            width: 10
            height: 10
            x:0
            y:0
            color: "blue"
        }
    }
    //        MouseArea {
    //            id: mousearea
    //            anchors.fill: grid
    //            onClicked: {
    //                //var item_pos = map.fromCoordinate(map_item.coordinate, false)
    //                var PathLine = Qt.createQmlObject('import QtQuick 2.12; PathLine {}',
    //                                                   pather);
    //                PathLine.x = mouse.x //- item_pos.x
    //                PathLine.y = mouse.y //- item_pos.y
    //                pather.pathElements.push(PathLine)
    //            }
    //        }

    //        GridView{
    //            id:plotPointView
    //            Layout.fillHeight: true
    //            Layout.fillWidth: true
    //            flow:GridView.FlowTopToBottom
    //            Component{
    //                id:plotPointDelegate
    //                 Rectangle{
    //                     x: model.modelData.xValue
    //                     y: model.modelData.yValue
    //                     //width: 5
    //                     //height: 5
    //                   //  color: "transparent"
    //                     border.color: "black"
    //                     border.width: 1
    //                     Text {
    //                         id: curtest
    //                         text:model.modelData.Count
    //                        // width: 100
    //                        // height: 100
    //                         color: "red"
    //                     }
    //                     Shape {

    //                         anchors.fill: plotPointView
    //                         ShapePath {
    //                             strokeWidth: 5
    //                             strokeColor: "#D3D3D3"
    //                             fillColor: "transparent" // ignored with the gradient set
    //                             strokeStyle: ShapePath.DashLine
    //                             dashPattern: [ 1, 4 ]
    //                             startX: model.modelData.prevXvalue; startY: model.modelData.prevYvalue
    //                             //PathLine { x: model.modelData.prevXvalue; y: model.modelData.prevYvalue }
    //                             PathLine { x: model.modelData.xValue; y: model.modelData.yValue }

    //                         }
    //                     }
    //                 }


    //            }
    //            model: PlotPoint.trackPointVec
    //            delegate: plotPointDelegate
    //        }

}






/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
