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
import "./models"
import "./delegates"
import "./page"
import "./page/test/"
import "./page/newPatient/"
import "./page/changePatient/"
import TestResultModels 0.1
Window {
    id: window
    visible: true
    width: 640
    height:480
    title: qsTr("Hello World")


    property Rectangle highlightItem : null;
    property Rectangle highlightItem1 : null;
    property int numGridRow: 6
    property int numGridCol: 10
    GridLayout{
        id:mainGrid
        anchors.fill: parent
//        StackView {
//            id: stackView
//            anchors.fill: parent

//            initialItem: Pane {
//                id: pane

//                Image {
//                    id: logo
//                    width: pane.availableWidth / 2
//                    height: pane.availableHeight / 2
//                    anchors.centerIn: parent
//                    anchors.verticalCenterOffset: -50
//                    fillMode: Image.PreserveAspectFit
//                    source: "qrc:/images/icon_eet.png"
//                }

//                Label {
//                    text: "Qt Quick Controls 2 provides a set of controls that can be used to build complete interfaces in Qt Quick."
//                    anchors.margins: 20
//                    anchors.top: logo.bottom
//                    anchors.left: parent.left
//                    anchors.right: parent.right
//                    anchors.bottom: arrow.top
//                    horizontalAlignment: Label.AlignHCenter
//                    verticalAlignment: Label.AlignVCenter
//                    wrapMode: Label.Wrap
//                }
//                TestPageActionButtons{
//                    id:testbuttons
//                    anchors.fill: parent
//                    group:"homeItems"
//                    onComponentTriggered: {
//                        stackView.push(name)
//                    }
//                }

//                //                Image {
//                //                    id: arrow
//                //                    source: "qrc:/images/icon_eet.png"
//                //                    anchors.left: parent.left
//                //                    anchors.bottom: parent.bottom
//                //                }
//            }
//        }
//        NewPatientContactDetails{
//            id:newpatientLabel
//            Layout.fillHeight: true
//            Layout.fillWidth: true
//        }
//            NewPatientRiskFactorSwitchSlide{
//                id:newPatientLabelSwitchSlide
//                Layout.fillHeight: true
//                Layout.fillWidth: true
//            }
        NewPatientRecommendations{
            id:newPatientRecon
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

//        SwitchPatient{
//            id:homeTPage
//            Layout.fillWidth: true
//            Layout.fillHeight: true
//        }
//           SwitchPatient{
//              id:switchPage
//              Layout.fillHeight: true
//              Layout.fillWidth: true

//           }

//                  HomePageLabel{
//                      id:homeTitle
//                      //width: parent.width
//                      //height: 200
//                      Layout.fillHeight: true
//                      Layout.fillWidth: true
//                  }

        //        PlotterPointers{
        //            id:sample
        //            // anchors.fill: parent
        //            width: 500
        //            height: 500

        //        }
        //        TestPageNotesTabPage{
        //            Layout.fillWidth: true
        //            Layout.fillHeight: true
        //        }

        //        TestPage{
        //            Layout.fillHeight: true
        //            Layout.fillWidth: true
        //            Connections {
        //                        target: testControlBtn
        //                        onInvokeSoure:  { console.log("Hello by Comp 2") }
        //                        onTest:{console.log("Testing")}
        //                    }
        //        }
        //        TestPageSupplementTabPage{
        //            Layout.fillHeight: true
        //            Layout.fillWidth: true
        //        }

        //        TestPagePatientResultIndex{
        //            Layout.fillHeight: true
        //            Layout.fillWidth: true
        //        }
        //        TestPlotTabs{
        //            Layout.fillHeight: true
        //            Layout.fillWidth: true
        //        }

        //                TestController{
        //                    //anchors.fill: parent
        //                    Layout.fillHeight: true
        //                    Layout.fillWidth: true
        //                }
        //                ResultTableGrid {
        //                    id: grid1
        //                }
        //                ResultOldStyleTableGrid {
        //                    id: grid2
        //                }
        //                TestPageTabs{
        //                    Layout.fillHeight: true
        //                    Layout.fillWidth: true
        //                }

        //                        TestingAllPageHeaderActions{
        //                            Layout.fillHeight: true
        //                            Layout.fillWidth: true
        //                        }

        //                XYPlot{
        //                    id:xyplotgrid
        //                    width: 500
        //                    height: 500
        //                    //anchors.fill: parent
        //                    anchors.left: mainGrid.left
        //                    anchors.right: columnLayout.left
        //                    anchors.top: mainGrid.top
        //                    anchors.bottom: mainGrid.bottom
        //                }
        //                ColumnLayout {
        //                    id: columnLayout
        //                    width: 100
        //                    height: 100
        //                    Layout.alignment: Qt.AlignRight|Qt.AlignVCenter
        //                    //anchors.left: xyplotgrid.right
        //                    anchors.right: mainGrid.right
        //                    anchors.top: parent.top
        //                    anchors.bottom: parent.bottom
        //                    MpodDisplayer{
        //                        id:displayMpod
        //                        anchors.fill: parent
        //                    }
        //                }
    }
}

//        RowLayout {
//            id: row
//            width: parent.width/20
//            anchors.left: parent.left
//            anchors.leftMargin: 0
//            anchors.bottom: column.top
//            anchors.bottomMargin: 0
//            anchors.top: parent.top
//            anchors.topMargin: 0
//            GridView {
//                id: gridRowView
//                Layout.alignment: Qt.AlignLeft | Qt.AlignBottom
//                Layout.fillHeight: true
//                Layout.fillWidth: true
//                flow: GridView.FlowTopToBottom
//                rotation: 180
//                footer: footerItem
//                cellWidth: gridRowView.width/2; cellHeight: gridRowView.height/numGridRow
//                Component{
//                    id:footerItem
//                    GridLayout{
//                        id: footerGrid
//                        height:row.height
//                        width: row.width/2//30//row.width
//                        Rectangle {
//                            //anchors.fill: parent
//                            Layout.fillHeight: true
//                            Layout.fillWidth: true
//                            id:rowRec
//                            //color: "yellow"
//                            Label{
//                                id: headerLabel
//                                //width: row.width/3
//                                anchors.centerIn: parent
//                                color: "black"
//                                Layout.alignment: Qt.AlignLeft
//                                text: "Temporal Frequency[HZ]"
//                                rotation: 90
//                            }
//                        }
//                    }
//                }
//                Component {
//                    id:rowDelegate
//                    Rectangle {
//                        id:rowRec
//                        //color: "blue"
//                        width: gridRowView.cellWidth; height: gridRowView.cellHeight
//                        Shape {
//                            id:rowShape
//                            height: rowRec.height/numGridRow
//                            property int repeaterIndex: index
//                            onRepeaterIndexChanged: {
//                            }
//                            ShapePath {
//                                strokeWidth: 1
//                                strokeColor: "black"
//                                fillColor: "transparent" // ignored with the gradient set
//                                //strokeStyle: ShapePath.DashLine
//                                // dashPattern: [ 1, 4 ]
//                                startX: 0; startY: 0
//                                PathLine { x: (width - name.width); y: 0 }
//                                PathLine { x: 0; y: 0 }
//                                PathLine { x: 0; y: height }
//                                PathLine { x: (width - name.width); y: height }
//                                PathLine { x: 0; y: height }
//                                PathLine { x: 0; y: height/2 }
//                                //PathLine { x: (width- name.width)/2; y: height/2 }
//                                //PathLine { x: 0; y: height/2 }
//                                PathLine { x: 0; y: height/5*(1) }
//                                PathLine { x: (width- name.width)/2; y: height/5*(1) }
//                                PathLine { x: 0; y: height/5*(1) }
//                                PathLine { x: 0; y: height/5*(2) }
//                                PathLine { x: (width- name.width)/2; y: height/5*(2) }
//                                PathLine { x: 0; y: height/5*(2) }
//                                PathLine { x: 0; y: height/5*(3) }
//                                PathLine { x: (width- name.width)/2; y: height/5*(3) }
//                                PathLine { x: 0; y: height/5*(3) }
//                                PathLine { x: 0; y: height/5*(4) }
//                                PathLine { x: (width- name.width)/2; y: height/5*(4) }
//                                PathLine { x: 0; y: height/5*(4) }
//                                PathLine { x: 0; y: height/5*(5) }
//                                PathLine { x: (width- name.width)/2; y: height/5*(5) }
//                                PathLine { x: 0; y: height/5*(5) }
//                                PathLine { x: 0; y: height/5 }
//                            }
//                            Text {
//                                id: name
//                                //                                anchors.left: parent.left
//                                //                                anchors.leftMargin:20//rowShape.width/2//20
//                                //                                anchors.top: parent.top
//                                //                                anchors.topMargin:-3
//                                //width:20
//                                height:10
//                                x: (rowRec.width)//rowRec.width - 40//5*width
//                                y: rowShape.y - height/4
//                                text: index
//                                rotation: 180
//                            }
//                            Text {
//                                id: name2
//                                //width:20
//                                height:10
//                                //                            anchors.left: parent.left
//                                //                            anchors.leftMargin:20//rowShape.width/2//20
//                                x: (rowRec.width)//rowRec.width - 40//5*width
//                                y: rowRec.height - 10
//                                text:{
//                                    if(index == (numGridRow-1))
//                                    {
//                                        index+1
//                                    }
//                                }
//                                rotation: 180
//                            }


//                        }

//                    }
//                }
//                model: numGridRow*1
//                delegate:rowDelegate
//            }

//        }
//        ColumnLayout {
//            id: column
//            y: 410
//            height: 70
//            anchors.bottom: parent.bottom
//            anchors.bottomMargin: 0
//            anchors.right: parent.right
//            anchors.rightMargin: 0
//            anchors.left: row.right
//            anchors.leftMargin: 0
//            GridView {
//                id: gridColView
//                Layout.fillHeight: true
//                Layout.fillWidth: true
//                anchors.rightMargin: 0
//                anchors.leftMargin: 0
//                anchors.bottomMargin: 0
//                anchors.topMargin: 0
//                //rotation: 180
//                //rows: 1
//                //columns: numGridCol
//                cellWidth: gridColView.width/(numGridCol); cellHeight: gridColView.height/2
//                footer: footerItem1
//                Component{
//                    id:footerItem1
//                    GridLayout{
//                        id: footerGrid
//                        height:column.height/2
//                        width: column.width///30//row.width
//                        rotation: 0
//                        Layout.alignment: Qt.AlignHCenter
//                        //anchors.centerIn: parent
//                        Rectangle {
//                            //anchors.fill: parent
//                            Layout.fillHeight: true
//                            Layout.fillWidth: true
//                            id:colRec
//                            //color: "yellow"
//                            CheckBox {
//                                id: checkBox
//                                //Layout.alignment: Qt.AlignLeft| Qt.AlignBottom
//                                //Layout.leftMargin: footerGrid.width/5
//                                anchors.left: parent.left
//                                anchors.leftMargin: colRec.width/4
//                                text: qsTr("Centeral")
//                            }
//                            Label{
//                                //Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
//                                anchors.centerIn: parent
//                                //anchors.topMargin:checkBox.height/3
//                                ///anchors.bottom: parent.bottom
//                                //anchors.bottomMargin:-300
//                                // Layout.alignment: Qt.AlignHCenter | Qt.AlignVCenter
//                                color: "red"
//                                //width: footerGrid.width/4
//                                //height: 30
//                                id: headerLabel
//                                text: "Green/Blue Ratio[db]"

//                            }
//                            CheckBox {
//                                id: checkBox1
//                                //Layout.alignment: Qt.AlignRight| Qt.AlignBottom
//                                //Layout.rightMargin: footerGrid.width/5
//                                anchors.right: parent.right
//                                anchors.rightMargin: colRec.width/4
//                                text: qsTr("Peripheral")
//                            }
//                        }
//                    }
//                }
//                Component {
//                    id: colDelegate
//                    //Repeater {
//                    //    model: 1*numGridCol
//                    Rectangle {
//                        id:colRec
//                        //color: "blue"
//                        width: gridColView.width/numGridCol; height: gridColView.height/2
//                        Shape {
//                            id:colShape
//                            //height: rowRec.height/6
//                            width: colRec.width/numGridCol
//                            property int repeaterIndex: index
//                            onRepeaterIndexChanged: {

//                            }
//                            ShapePath {
//                                strokeWidth: 1
//                                strokeColor: "black"
//                                fillColor: "transparent" // ignored with the gradient set
//                                //strokeStyle: ShapePath.DashLine
//                                // dashPattern: [ 1, 4 ]
//                                startX: 0; startY: 0
//                                PathLine { x: 0; y: (height  - xName.height)/2 }
//                                PathLine { x: 0; y: 0 }
//                                PathLine { x: width; y: 0 }
//                                PathLine { x: width; y: (height  - xName.height)/2 }
//                                PathLine { x: width; y: 0 }
//                                PathLine { x: width/2; y: 0 }
//                                PathLine { x: width/2; y: (height- xName.height)/4 }
//                                PathLine { x: width/2; y:0  }
//                            }
//                            Text {
//                                id: xName
//                                //width:20
//                                height:10
//                                x: colShape.x //rowRec.width - width
//                                y: colRec.height/2//rowShape.y
//                                text: index
//                                //rotation: 180
//                            }
//                            Text {
//                                id: widthName
//                                width:20
//                                height:10
//                                x: colRec.width -10//rowRec.width - width
//                                y: colRec.height/2//colRec.height - height//rowRec.height - 10
//                                text:
//                                {
//                                    if(index == (numGridCol-1))//
//                                    {
//                                        index+1
//                                    }
//                                }
//                                //rotation: 180
//                            }

//                        }

//                    }

//                }
//                model: 1*numGridCol
//                delegate: colDelegate
//                focus: true
//            }
//        }

//        GridLayout {
//            id: grid
//            anchors.bottom: column.top
//            anchors.bottomMargin: 0
//            anchors.top: parent.top
//            anchors.topMargin: 0
//            anchors.right: parent.right
//            anchors.rightMargin: 0
//            anchors.left: row.right
//            anchors.leftMargin: 0
//            GridView {
//                id: gridView
//                anchors.fill: parent
//                Layout.fillHeight: true
//                Layout.fillWidth: true
//                interactive: false
//                cellWidth: gridView.width/numGridCol; cellHeight:gridView.height/numGridRow
//                //rows: 6
//                // columns: 10
//                // Repeater {
//                //     model: 6*10
//                Component {
//                    id: gridCrossDelegate
//                    Rectangle {
//                        //color: "lightGray"
//                        width: gridView.width/10; height: gridView.height/6
//                        Shape {

//                            anchors.fill: parent
//                            ShapePath {
//                                strokeWidth: 4
//                                strokeColor: "black"
//                                fillColor: "transparent" // ignored with the gradient set
//                                strokeStyle: ShapePath.DashLine
//                                dashPattern: [ 1, 4 ]
//                                startX: 0; startY: 0
//                                PathLine { x: 0; y: height }
//                                PathLine { x: width; y: height }
//                                PathLine { x: width; y: 0 }
//                                PathLine { x: 0; y: 0 }
//                            }
//                        }
//                    }
//                }
//                model:numGridRow*numGridCol
//                delegate: gridCrossDelegate
//                focus: true
//            }
//            MouseArea {
//                id: mouseArea
//                anchors.fill: parent
//                //        anchors.bottom: grid.top
//                //        anchors.bottomMargin: 0
//                //        anchors.top: grid.bottom
//                //        anchors.topMargin: 0
//                //        anchors.right: parent.right
//                //        anchors.rightMargin: 0
//                //        anchors.left: grid.left
//                //        anchors.leftMargin: 0
//                property int mousePressedX: 0
//                property int mousePressedY: 0
//                property int mouseReleasedX: 0
//                property int mouseReleasedY: 0
//                onPressed: {
//                    if (highlightItem !== null) {
//                        highlightItem.destroy ();
//                    }
//                    if (highlightItem1 !== null) {
//                        highlightItem1.destroy ();
//                    }
//                    var pt = Qt.point(mouse.x,mouse.y)
//                    //var newPt = mapToGlobal(pt);
//                    if(mouseArea.contains(Qt.point(mouse.x,mouse.y)))
//                    {

//                    }
//                    else
//                    {
//                        return;
//                    }

//                    if ( mouse.x >= mouseArea.x && mouse.x < mouseArea.width &&
//                            mouse.y >= mouseArea.y && mouse.y < mouseArea.height)
//                    {
//                        highlightItem = highlightComponent.createObject (mouseArea, {
//                                                                             "x" : (mouse.x),
//                                                                             "y" : (0)
//                                                                         });
//                        highlightItem1 = highlightComponent1.createObject (mouseArea, {
//                                                                               "x" : (0),
//                                                                               "y" : (mouse.y)
//                                                                           });
//                    }



//                }
//                onPositionChanged: {
//                    if ( mouse.x >= mouseArea.x && mouse.x < mouseArea.width &&
//                            mouse.y >= mouseArea.y && mouse.y < mouseArea.height)
//                    {
//                        var value5 = mouse.x * (numGridCol)/mouseArea.width;
//                        var value6 = mouse.y * (numGridRow)/mouseArea.height;
//                        var value7 = ((numGridRow) - value6);
//                        console.log("The value5 will b"+value5);
//                        console.log("The value6 will b"+value6);
//                        console.log("The value7 will b"+value7);
//                        if (highlightItem !== null)
//                        {
//                            highlightItem.x = ((mouse.x));
//                            highlightItem.y =0
//                        }
//                        if (highlightItem1 !== null) {
//                            highlightItem1.x = ((0));
//                            highlightItem1.y =mouse.y
//                        }}

//                }
//            }
//        }


//        Component{
//            id: plotRecComponent;
//            Rectangle{
//                id:sqRec
//                width: 10
//                height: 10
//                x:0
//                y:0
//                color: "blue"
//            }
//        }
//        Component{
//            id: plotTriComponent;
//            Rectangle{
//                id:sqTriangle
//                width: 10
//                height: 10
//                x:0
//                y:0
//                //color: "blue"
//                Shape{
//                    id:sqShape
//                    anchors.fill: parent
//                    ShapePath{
//                        strokeWidth: 1
//                        strokeColor: "blue"
//                        strokeStyle: ShapePath.SolidLine
//                        startX: 0; startY:0
//                        PathLine{x:sqTriangle.width;y:0}
//                        PathLine{x:sqTriangle.width/2;y:sqTriangle.height}
//                        PathLine{x:0;y:0}

//                    }
//                }
//            }
//        }
//        Component {
//            id: highlightComponent;

//            Rectangle {
//                id: highlightRec
//                width: 10
//                height: mouseArea.height
//                color: "transparent"//"transparent"
//                Shape {
//                    id: highlightShape
//                    anchors.fill: parent
//                    ShapePath {
//                        strokeWidth: 1
//                        strokeColor: "black"
//                        strokeStyle: ShapePath.DashLine
//                        dashPattern: [ 1, 4 ]
//                        startX: 0;startY:(0)
//                        PathLine{x:0; y: mouseArea.height}
//                        //PathLine{x:0; y: 0}
//                        // PathLine{x:0; y: gdView.y}
//                    }
//                    onXChanged: console.log("The highlight shape x is"+highlightShape.x)
//                }
//            }
//        }
//        Component {
//            id: highlightComponent1;

//            Rectangle {
//                id: highlightRec1
//                width: mouseArea.width
//                height: 10
//                color: "transparent"//"transparent"
//                Shape {
//                    id: highlightShape1
//                    anchors.fill: parent
//                    ShapePath {
//                        strokeWidth: 1
//                        strokeColor: "black"
//                        strokeStyle: ShapePath.DashLine
//                        dashPattern: [ 1, 4 ]
//                        startX: 0;startY:0
//                        PathLine{x:mouseArea.width; y: 0}
//                    }
//                    onXChanged: console.log("The highlight shape x is"+highlightShape.x)
//                }
//            }
//        }

//}



































/*##^## Designer {
    D{i:2;anchors_width:200;anchors_x:220}D{i:1;anchors_height:400;anchors_width:70;anchors_x:0;anchors_y:0}
}
 ##^##*/
