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

//import appContstants 1.0

import TestResultModels 0.1
TableView {
    id:tv
    //anchors.fill: parent
    TableViewColumn {title: "Confidence Level"; role: "TestResults"; width: 70 }
    TableViewColumn {title: "Left"; role: "Left"; width: 70   }
    TableViewColumn {title: "Right"; role: "Right"; width: 70 }
    style: TableViewStyle {
        
        
        headerDelegate: Rectangle {
            height: textItem.implicitHeight * 1.2
            width: textItem.implicitWidth
            color: "lightsteelblue"
            Text {
                id: textItem
                anchors.fill: parent
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: styleData.textAlignment
                anchors.leftMargin: 12
                text: styleData.value
                elide: Text.ElideRight
                color: textColor
                renderType: Text.NativeRendering
            }
            Rectangle {
                anchors.right: parent.right
                anchors.top: parent.top
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 1
                anchors.topMargin: 1
                width: 1
                color: "#ccc"
            }
        }
        ///
        rowDelegate: Rectangle {
            property int sizeOpen: 60
            property int sizeClosed: 20
            
            id: rowDelegate
            color:  "transparent"//styleData.alternate ? "#666666" : "#555555"
            height: getSize() // styleData.selected? sizeOpen : sizeClosed
            
            function getSize()
            {
                if(!tv.selection.contains(styleData.row))
                {
                    doClose.start();
                    return sizeClosed;
                }
                
                return sizeOpen;
            }
            
            MouseArea {
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.right: parent.right
                height: sizeClosed
                propagateComposedEvents: true
                preventStealing: true
                acceptedButtons: Qt.LeftButton | Qt.RightButton
                
                onClicked: {
                    if(rowDelegate.sizeOpen == rowDelegate.height)
                    {
                        tv.selection.deselect(styleData.row);
                        doClose.start()
                    }
                    else
                    {
                        tv.selection.clear();
                        tv.selection.select(styleData.row);
                        doOpen.start();
                    }
                }
            }
            
            ParallelAnimation {
                id: doOpen
                running: false
                NumberAnimation { target: rowDelegate; easing.type: Easing.OutSine; property: "height"; to: sizeOpen; duration: 100 }
            }
            ParallelAnimation {
                id: doClose
                running: false
                NumberAnimation { target: rowDelegate; easing.type: Easing.OutSine; property: "height"; to: sizeClosed; duration: 100; }
            }
        }
        itemDelegate: Rectangle {
            width: 200
            height: 200
            
            color: "black"
            
            Rectangle {
                anchors.fill: parent
                anchors.rightMargin: 1
                
                color: "white"
                
                Text {
                    id: textItem1
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: styleData.textAlignment
                    anchors.leftMargin: 12
                    text: styleData.value
                    elide: Text.ElideRight
                    color: textColor
                    renderType: Text.NativeRendering
                }
            }
        }
    }
}
//           itemDelegate: Item {
//               Text {
//                   anchors.verticalCenter: parent.verticalCenter
//                   color: "green"//styleData.textColor
//                   elide: styleData.elideMode
//                   text: styleData.value
//               }
//           }
//            rowDelegate: Item  {
//                Rectangle {
//                    id: rowDel
//                    color: "blue"
//                    height: 60

//                    readonly property int modelRow: styleData.row ? styleData.row : 0

//                    MouseArea {
//                        anchors.fill: parent
//                        onClicked: {
//                            console.log("[!] log: " + modelRow);
//                        }
//                    }
//                }
//            }
