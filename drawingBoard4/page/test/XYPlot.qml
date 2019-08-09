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
Item {
    id:xyplotter
    property Rectangle item_horizontal : null;
    property Rectangle item_Vertical : null;
    property Rectangle item_mouseClick: null;
    property int numGridRow: 6
    property int numGridCol: 10
    property alias mouseAreaWidth: mouseArea.width
    property alias mouseAreaHeight: mouseArea.height
    property real itemMouseX: 0
    property real itemMouseY: 0
    //property alias mouseAreaX: mouseArea.X
    //property alias mouseAreaY: mouseArea.Y
    RowLayout {
        id: row
        width: parent.width/20
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: column.top
        anchors.bottomMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        GridView {
            id: gridRowView
            Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
            Layout.fillHeight: true
            Layout.fillWidth: true
            flow: GridView.FlowTopToBottom
            rotation: 180
            footer: footerItem
            cellWidth: gridRowView.width/2; cellHeight: gridRowView.height/numGridRow
            Component{
                id:footerItem
                GridLayout{
                    id: footerGrid
                    height:row.height
                    width: row.width/2//30//row.width
                    Rectangle {
                        //anchors.fill: parent
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        id:rowRec
                        //color: "yellow"
                        Label{
                            id: headerLabel
                            //width: row.width/3
                            anchors.centerIn: parent
                            color: "black"
                            Layout.alignment: Qt.AlignLeft
                            text: "Temporal Frequency[HZ]"
                            rotation: 90
                        }
                    }
                }
            }
            Component {
                id:rowDelegate
                Rectangle {
                    id:rowRec
                    //color: "blue"
                    width: gridRowView.cellWidth; height: gridRowView.cellHeight
                    Shape {
                        id:rowShape
                        height: rowRec.height/numGridRow
                        property int repeaterIndex: index
                        onRepeaterIndexChanged: {
                        }
                        ShapePath {
                            strokeWidth: 4
                            strokeColor: "black"
                            fillColor: "transparent" // ignored with the gradient set
                            //strokeStyle: ShapePath.DashLine
                            // dashPattern: [ 1, 4 ]
                            startX: 0; startY: 0
                            PathLine { x: (width - name.width); y: 0 }
                            PathLine { x: 0; y: 0 }
                            PathLine { x: 0; y: height }
                            PathLine { x: (width - name.width); y: height }
                            PathLine { x: 0; y: height }
                            PathLine { x: 0; y: height/2 }
                            //PathLine { x: (width- name.width)/2; y: height/2 }
                            //PathLine { x: 0; y: height/2 }
                            PathLine { x: 0; y: height/5*(1) }
                            PathLine { x: (width- name.width)/2; y: height/5*(1) }
                            PathLine { x: 0; y: height/5*(1) }
                            PathLine { x: 0; y: height/5*(2) }
                            PathLine { x: (width- name.width)/2; y: height/5*(2) }
                            PathLine { x: 0; y: height/5*(2) }
                            PathLine { x: 0; y: height/5*(3) }
                            PathLine { x: (width- name.width)/2; y: height/5*(3) }
                            PathLine { x: 0; y: height/5*(3) }
                            PathLine { x: 0; y: height/5*(4) }
                            PathLine { x: (width- name.width)/2; y: height/5*(4) }
                            PathLine { x: 0; y: height/5*(4) }
                            PathLine { x: 0; y: height/5*(5) }
                            PathLine { x: (width- name.width)/2; y: height/5*(5) }
                            PathLine { x: 0; y: height/5*(5) }
                            PathLine { x: 0; y: height/5 }
                        }
                        Text {
                            id: name
                            //                                anchors.left: parent.left
                            //                                anchors.leftMargin:20//rowShape.width/2//20
                            //                                anchors.top: parent.top
                            //                                anchors.topMargin:-3
                            //width:20
                            height:10
                            x: (rowRec.width)//rowRec.width - 40//5*width
                            y: rowShape.y - height/4
                            text: index * 10
                            rotation: 180
                        }
                        Text {
                            id: name2
                            //width:20
                            height:10
                            //                            anchors.left: parent.left
                            //                            anchors.leftMargin:20//rowShape.width/2//20
                            x: (rowRec.width)//rowRec.width - 40//5*width
                            y: rowRec.height - 10
                            text:{
                                if(index == (numGridRow-1))
                                {
                                    (index+1) * 10
                                }
                            }
                            rotation: 180
                        }


                    }

                }
            }
            model: numGridRow*1
            delegate:rowDelegate
        }

    }
    ColumnLayout {
        id: column
        y: 410
        height: 70
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: row.right
        anchors.leftMargin: 0
        GridView {
            id: gridColView
            Layout.fillHeight: true
            Layout.fillWidth: true
            anchors.rightMargin: 0
            anchors.leftMargin: 0
            anchors.bottomMargin: 0
            anchors.topMargin: 0
            //rotation: 180
            //rows: 1
            //columns: numGridCol
            cellWidth: gridColView.width/(numGridCol); cellHeight: gridColView.height/2
            footer: footerItem1
            Component{
                id:footerItem1
                GridLayout{
                    id: footerGrid
                    height:column.height/2
                    width: column.width///30//row.width
                    rotation: 0
                    Layout.alignment: Qt.AlignHCenter
                    //anchors.centerIn: parent
                    Rectangle {
                        //anchors.fill: parent
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        id:colRec
                        //color: "yellow"
                        CheckBox {
                            id: checkBox
                            //Layout.alignment: Qt.AlignLeft| Qt.AlignBottom
                            //Layout.leftMargin: footerGrid.width/5
                            anchors.left: parent.left
                            anchors.leftMargin: colRec.width/4
                            text: qsTr("Centeral")
                        }
                        Label{
                            //Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            anchors.centerIn: parent
                            //anchors.topMargin:checkBox.height/3
                            ///anchors.bottom: parent.bottom
                            //anchors.bottomMargin:-300
                            // Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
                            color: "black"
                            //width: footerGrid.width/4
                            //height: 30
                            id: headerLabel
                            text: "Green/Blue Ratio[db]"

                        }
                        CheckBox {
                            id: checkBox1
                            //Layout.alignment: Qt.AlignRight| Qt.AlignBottom
                            //Layout.rightMargin: footerGrid.width/5
                            anchors.right: parent.right
                            anchors.rightMargin: colRec.width/4
                            text: qsTr("Peripheral")
                        }
                    }
                }
            }
            Component {
                id: colDelegate
                //Repeater {
                //    model: 1*numGridCol
                Rectangle {
                    id:colRec
                    //color: "blue"
                    width: gridColView.width/numGridCol; height: gridColView.height/2
                    Shape {
                        id:colShape
                        //height: rowRec.height/6
                        width: colRec.width/numGridCol
                        property int repeaterIndex: index
                        onRepeaterIndexChanged: {

                        }
                        ShapePath {
                            strokeWidth: 4
                            strokeColor: "black"
                            fillColor: "transparent" // ignored with the gradient set
                            //strokeStyle: ShapePath.DashLine
                            // dashPattern: [ 1, 4 ]
                            startX: 0; startY: 0
                            PathLine { x: 0; y: (height  - xName.height)/2 }
                            PathLine { x: 0; y: 0 }
                            PathLine { x: width; y: 0 }
                            PathLine { x: width; y: (height  - xName.height)/2 }
                            PathLine { x: width; y: 0 }
                            PathLine { x: width/2; y: 0 }
                            PathLine { x: width/2; y: (height- xName.height)/4 }
                            PathLine { x: width/2; y:0  }
                        }
                        Text {
                            id: xName
                            //width:20
                            height:10
                            x: colShape.x //rowRec.width - width
                            y: colRec.height/2//rowShape.y
                            text: index
                            //rotation: 180
                        }
                        Text {
                            id: widthName
                            width:20
                            height:10
                            x: colRec.width -10//rowRec.width - width
                            y: colRec.height/2//colRec.height - height//rowRec.height - 10
                            text:
                            {
                                if(index == (numGridCol-1))//
                                {
                                    index+1
                                }
                            }
                            //rotation: 180
                        }

                    }

                }

            }
            model: 1*numGridCol
            delegate: colDelegate
            focus: true
        }
    }

    GridLayout {
        id: grid
        anchors.bottom: column.top
        anchors.bottomMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: row.right
        anchors.leftMargin: 0
        GridView {
            id: gridView
            anchors.fill: parent
            Layout.fillHeight: true
            Layout.fillWidth: true
            interactive: false
            cellWidth: gridView.width/numGridCol; cellHeight:gridView.height/numGridRow
            //rows: 6
            // columns: 10
            // Repeater {
            //     model: 6*10
            Component {
                id: gridCrossDelegate
                Rectangle {
                    //color: "lightGray"
                    width: gridView.width/10; height: gridView.height/6
                    Shape {

                        anchors.fill: parent
                        ShapePath {
                            strokeWidth: 1
                            strokeColor: "#D3D3D3"
                            fillColor: "transparent" // ignored with the gradient set
                            strokeStyle: ShapePath.DashLine
                            dashPattern: [ 1, 4 ]
                            startX: 0; startY: 0
                            PathLine { x: 0; y: height }
                            PathLine { x: width; y: height }
                            PathLine { x: width; y: 0 }
                            PathLine { x: 0; y: 0 }
                        }
                    }
                }
            }
            model:numGridRow*numGridCol
            delegate: gridCrossDelegate
            focus: true
        }

        MouseArea {
            id: mouseArea
            property real mousePressedX: 0
            property real mousePressedY: 0
            property real mouseReleasedX: 0
            property real mouseReleasedY: 0
            property real pressedWidth: 0
            property real pressedHeight: 0
            property real currentMouseX: 0
            property real currentMouseY: 0
            anchors.fill: parent
            propagateComposedEvents: true

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
    }


    PlotRecComponent {        id: plotRecComponent    }
    PlotTriComponent {        id: plotTriComponent    }
    HorizontalLineComponent { id: lineItem }
}
