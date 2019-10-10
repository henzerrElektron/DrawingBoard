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
import QtQuick.Extras 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls 2.5
import "."
import "./../../images/"
import "./../../delegates/"
import "./../../models/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0

Rectangle {
    //width: //frame.implicitWidth + 10
    //height: frame.implicitHeight + 10
    //anchors.fill: parent
    //color: "red"
    anchors.left: parent.left
    anchors.right: parent.right
    height: frame.height//150
    property alias firstTumblerModel: firstTumbler.model
    property alias firstTumblerDelegate: firstTumbler.delegate
    property alias secTumblerModel: secTumbler.model
    property alias thirdTumblerModel: thirdTumbler.model
    property alias firstTumblerVisibility: firstTumberRec.visible
    property alias secTumblerVisibility: secTumblerRec.visible
    property alias thirdTumblerVisibility: thirdTumblerRec.visible
    property bool numberOrColorDelegate: false
    signal firstTumblerValue(int index)
    signal firstDialValue(int index)
    signal firstSliderValue(int value)
    onFirstDialValue: {
        firstTumbler.currentIndex = index
    }
    onFirstSliderValue: {
        console.log("The value is"+value)
        firstTumbler.currentIndex = value
    }

    signal secTumblerValue(int index)
    signal secDialValue(int index)
    signal secSliderValue(int index)

    signal firstSecTumblerValue(int index)
    onSecDialValue: {
        secTumbler.currentIndex = index
    }
    onSecSliderValue: {
        console.log("The value is"+index)
        secTumbler.currentIndex = index
    }

    //    onSecSliderValue: {
    //        console.log("The value is"+value)
    //        secTumbler.currentIndex = value
    //    }

    signal thirdTumblerValue(int index)
    signal thirdDialValue(int index)
    signal thirdSliderValue(int index)
    onThirdDialValue: {
        thirdTumbler.currentIndex = index
    }
    onThirdSliderValue: {
        console.log("The value is"+value)
        thirdTumbler.currentIndex = index
    }

    function formatText(count, modelData) {
        //var data = count === 12 ? modelData + 1 : modelData;
        ///var newData = name
        //console.log("NewData"+newData)
        var data = count === 12 ? modelData + 1 : modelData;
        return data.toString().length < 2 ? "0" + data : data;
    }

    FontMetrics {
        id: fontMetrics
    }

    DelegateComponent {
        id: delegateComponent
    }
    ColordelegateComponent {
        id: colordelegateComponent
    }

    //Frame {
    Rectangle{
        id: frame
        anchors.fill: parent
        //visible: firstTumblerVisibility?true:secTumblerVisibility?true:thirdTumblerVisibility?true:false
        //Layout.fillWidth: true
        //width: parent.width
        //anchors.horizontalCenter: parent.horizontalCenter
        //    anchors.fill: parent
        //height: 1.2*(firstTumbler.height+secTumbler.height+thirdTumbler.height)//+thirdTumbler.height
        //height: 2*(firstTumberRec.height)+8*(secTumblerRec.height)+2*(thirdTumblerRec.height)
        GridLayout {
            id: row
            rows: 3
            anchors.fill: parent
            Layout.minimumHeight:secTumblerVisibility?120:30
            Layout.maximumHeight:120
            Rectangle{
                id:firstTumberRec
                Layout.alignment: Qt.AlignTop
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.row: 1
                Layout.rowSpan: 1
                Layout.minimumHeight: 25
                Layout.maximumHeight: 50
                //                Label {
                //                    id:lbl
                //                    anchors.verticalCenter: parent.verticalCenter
                //                    text: "Title"
                //                }
                //height: 50
                //color: "green"
                //border.width: 1
                //border.color: "black"
                Tumbler {
                    id: firstTumbler
                    anchors.fill: parent
                    //                    background: Rectangle{
                    //                        anchors.fill: parent
                    //                        color:"pink"
                    //                    }
                    model: 100
                    delegate: numberOrColorDelegate?colordelegateComponent:delegateComponent
                    visibleItemCount: count%2 === 0?visibleItemCount+1:visibleItemCount
                    wheelEnabled: true
                    onModelChanged: {
                        console.log("The model has changed")
                    }
                    onCurrentIndexChanged: {
                        console.log("The index is"+currentIndex+model[currentIndex])
                        firstTumblerValue(currentIndex)
                    }
//                    Component {
//                            id: appHighlight
//                            Rectangle { anchors.horizontalCenter: firstTumbler.horizontalCenter
//                                width: 10
//                                height: 10
//                                color: "lightsteelblue" }
//                        }
                    contentItem: PathView {
                        id: pathView
                        width: firstTumbler.width
                        height: firstTumbler.height
                        model: firstTumbler.model
                        delegate: firstTumbler.delegate
                        //highlight: appHighlight
//                        highlight:
//                            Rectangle {
//                            //anchors.horizontalCenter: firstTumbler.horizontalCenter
//                            x: firstTumbler.width/2/// * 0.4
//                            height : firstTumbler.height
//                            width: 40//(firstTumbler.width * 0.6) - (firstTumbler.width * 0.4)
//                            border.color: "black"
//                            border.width: 1
//                            color: "#21be2b"
//                            radius: 20
//                            opacity: 0.5
//                        }


                        clip: true
                        pathItemCount: firstTumbler.visibleItemCount + 1
                        preferredHighlightBegin: 0.5
                        preferredHighlightEnd: 0.5
                        dragMargin: width / 2

                        path: Path {
                            startX: -pathView.delegateWidth / 2//pathView.width / 2
                            startY: pathView.height / 4//-pathView.delegateHeight / 2
                            PathLine {
                                x: pathView.pathItemCount * pathView.delegateWidth - pathView.delegateWidth / 2//pathView.width / 2
                                y: pathView.height / 4//pathView.pathItemCount * pathView.delegateHeight - pathView.delegateHeight / 2
                            }
                        }

                        property real delegateHeight: firstTumbler.availableHeight / firstTumbler.visibleItemCount
                        property real delegateWidth: firstTumbler.availableWidth/firstTumbler.visibleItemCount
                    }


                }
            }
            Rectangle{
                id:secTumblerRec
                anchors.top: firstTumberRec.bottom
                anchors.topMargin: 10
                // Layout.alignment: Qt.AlignVCenter
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.row: 2
                Layout.rowSpan: 1
                Layout.minimumHeight: 25
                Layout.maximumHeight: 50
                //height: 50
                //color: "blue"
                //border.width: 1
                //border.color: "black"
                Tumbler {
                    id: secTumbler
                    anchors.fill: parent
                    //model: 100
                    //                    background: Rectangle{
                    //                        color:"red"
                    //                    }
                    //Layout.fillHeight: true
                    //width: parent.width > 250 ? parent.width :250
                    //height: parent.height/3 > 50? parent.height/3:50
                    delegate: delegateComponent
                    wheelEnabled: true
                    onCurrentIndexChanged: {
                        console.log("The index is"+firstTumbler.model[firstTumbler.currentIndex]+currentIndex)
                        secTumblerValue(currentIndex)
                        firstSecTumblerValue(firstTumbler.model[firstTumbler.currentIndex]+currentIndex)
                    }
                    onModelChanged: {
                        console.log("The model has changed")
                    }
                    contentItem: PathView {
                        id: pathView1
                        model: secTumbler.model
                        delegate: secTumbler.delegate
                        clip: true
                        pathItemCount: secTumbler.visibleItemCount + 1
                        preferredHighlightBegin: 0.5
                        preferredHighlightEnd: 0.5
                        dragMargin: width / 2

                        path: Path {
                            startX: -pathView1.delegateWidth / 2//pathView.width / 2
                            startY: pathView1.height / 2//-pathView.delegateHeight / 2
                            PathLine {
                                x: pathView1.pathItemCount * pathView1.delegateWidth - pathView1.delegateWidth / 2//pathView.width / 2
                                y: pathView1.height / 2//pathView.pathItemCount * pathView.delegateHeight - pathView.delegateHeight / 2
                            }
                        }

                        property real delegateHeight: secTumbler.availableHeight / secTumbler.visibleItemCount
                        property real delegateWidth: secTumbler.availableWidth/secTumbler.visibleItemCount
                    }
                }
            }

            Rectangle{
                id:thirdTumblerRec
                Layout.alignment: Qt.AlignTop
                Layout.fillWidth: true
                Layout.fillHeight: true
                Layout.row: 3
                Layout.rowSpan: 1
                //height: 50
                //color: "green"
                Layout.minimumHeight: 50
                // border.width: 1
                // border.color: "black"
                anchors.top: secTumblerRec.bottom
                anchors.topMargin: 10
                Tumbler {
                    id: thirdTumbler
                    anchors.fill: parent
                    //model: 100
                    //                    background: Rectangle{
                    //                        color:"pink"
                    //                    }


                    //width: parent.width > 250 ? parent.width :250
                    //height: parent.height/3 > 50? parent.height/3:50
                    delegate: delegateComponent
                    wheelEnabled: true
                    onCurrentIndexChanged: {
                        thirdSliderValue(currentIndex)
                    }
                    onModelChanged: {
                        console.log("The model has changed")
                    }

                    contentItem: PathView {
                        id: pathView2
                        model: thirdTumbler.model
                        delegate: thirdTumbler.delegate
                        clip: true
                        pathItemCount: thirdTumbler.visibleItemCount + 1
                        preferredHighlightBegin: 0.5
                        preferredHighlightEnd: 0.5
                        dragMargin: width / 2

                        path: Path {
                            startX: -pathView2.delegateWidth / 2//pathView.width / 2
                            startY: pathView2.height / 2//-pathView.delegateHeight / 2
                            PathLine {
                                x: pathView2.pathItemCount * pathView2.delegateWidth - pathView2.delegateWidth / 2//pathView.width / 2
                                y: pathView2.height / 2//pathView.pathItemCount * pathView.delegateHeight - pathView.delegateHeight / 2
                            }
                        }

                        property real delegateHeight: thirdTumbler.availableHeight / thirdTumbler.visibleItemCount
                        property real delegateWidth: thirdTumbler.availableWidth/thirdTumbler.visibleItemCount
                    }
                }
            }



        }
    }
}




