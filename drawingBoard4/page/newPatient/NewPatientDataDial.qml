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
import "."
import "./../../images/"
import "./../../delegates/"
import "./../../models/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0

Dial {
    id: idDial
    width: 100; height: 80
    stepSize: 1
    maximumValue: 7
    minimumValue: 0
    value: 0
    //wrap:false
    anchors.centerIn: parent
    //property alias dialColor:dialStyle.dialStyleBgColor
    //property alias dialHandleColor: dialStyleHandle.color
    //property alias dialMinorTickMarkColor: dialMinorTickMark.color
    //property alias dialtickMarkColor: dialtickMark.color
    //property alias dialTickLabelColor: dialTickLabel.color
    //property alias dialTickTextValue: dialTickText.text
    //signal changeIndex(int index)
    //signal changeValue(int value)
    signal firstTumblerValue(int index)
    signal firstDialValue(int value)
    onFirstTumblerValue: {
         idDial.value = index
    }
//    onChangeIndex: {
//        idDial.value = index//colorModel.get(index)
//    }

    onValueChanged:{
        firstDialValue(value)
        console.log("The transmitted value is"+value)
        //changeValue(value)
    }

    ColorModel {
        id: colorModel
    }
    style: DialStyle {
        id:dialStyle
        //property alias dialStyleBgColor: dialStyleBg.color
        background: Rectangle {
            id:dialStyleBg
            width: 100; height: 100
            color: colorModel.get(idDial.value).value//"white"
            opacity: 0.5
            radius: 50


            ColorAnimation on color{to:colorModel.get(idDial.value).value;duration: 1000 }
            //border.width: 1
            //border.color: "#4A4A4A"//colorModel.get(idDial.value).value

            Rectangle{
                width: 60; height:60
                radius: 30
                anchors.centerIn: parent
                color: colorModel.get(idDial.value).value
                opacity: 0.75
                ColorAnimation on color{to:colorModel.get(idDial.value).value;duration: 1000 }
                //border.width: 1
                //border.color: "black"
            }
            Rectangle{

                width: 30; height:30
                radius: 15
                anchors.centerIn: parent
                color: colorModel.get(idDial.value).value
                ColorAnimation on color{to:colorModel.get(idDial.value).value;duration: 1000 }
                opacity: 1
                //border.width: 1
                //border.color: "black"
            }
            Text {
                id: name
                color: colorModel.get(idDial.value).name === ("Brown")?"white":"black"//"Other"||
                font.bold: true
                font.weight: Font.DemiBold
                text: colorModel.get(idDial.value).name//idDial.value//qsTr("text")
                anchors.centerIn: parent
            }

        }


        handle: Rectangle {
            id:dialStyleHandle
            implicitWidth:  10; implicitHeight:  10
            radius: 10
            color: "red"

        }


        minorTickmark:Rectangle{
            id:dialMinorTickMark
            implicitHeight: 10
            implicitWidth: 1
            //radius: 10
            color: "#4A4A4A"//"pink"
        }

        minorTickmarkCount:5
        tickmark: Rectangle{
            id:dialtickMark
            implicitHeight: 10
            implicitWidth: 1
            radius: 10
            color: "#4A4A4A"//"pink"
        }

        tickmarkLabel:
            Rectangle{
            id:dialTickLabel
            implicitHeight: 15
            implicitWidth: 15
            radius: 10
            color: colorModel.get(styleData.index).value//"red"
            Text {
                id:dialTickText
                //id: name1
                text: colorModel.get(styleData.index).name//styleData.value//styleData.index
                anchors.centerIn: parent
                //font: OtherConstants.fontFamily
                font.pixelSize: 7
            }

        }

        tickmarkStepSize: 1
        tickmarkInset: 20
        handleInset:15

    }
}
//Dial {
//    id: elementKnown
//    x: 205
//    y: 65
//}
