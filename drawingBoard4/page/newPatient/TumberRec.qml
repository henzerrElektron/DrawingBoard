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



Rectangle{
    id:firstTumberRec
    property alias allTumblerModel: firstTumbler.model
    property alias allTumblerDelegate: firstTumbler.delegate
    property alias allTumblerVisibility: firstTumbler.visible
    property alias allTumblerVisibleItemCount: firstTumbler.visibleItemCount
    property int allTumblerValue//: allTumblerModel[firstTumbler.currentIndex]
    //property alias allTumbler: firstTumbler
    property alias allTumblerIndex: firstTumbler.currentIndex
    property bool donotUpdateWhileMoving: false
    property bool stopped: false
    //property alias allTumblerValue: allTumblerModel[firstTumbler.currentIndex]
    signal tumblerIndexChanged(int currentIndex)


    Layout.minimumWidth:  secTumblerRec.visible?(thirdTumblerRec.visible?parent.width/3:parent.width/2):parent.width
    Tumbler {
        id: firstTumbler
        //anchors.centerIn: parent
        anchors.fill: parent
        height: parent.height
        ////////////////delegate: numberOrColorDelegate?colordelegateComponent:delegateComponent
        ///////////////visibleItemCount: count%2 === 0?visibleItemCount+1:visibleItemCount
        wheelEnabled: true
        model: 100
        Rectangle {
            anchors.horizontalCenter: firstTumbler.horizontalCenter
            y: firstTumbler.height * 0.4
            width: parent.width//40
            height: (firstTumbler.height * 0.6) - (firstTumbler.height * 0.4)//40//parent.height/10//
            //border.color: "black"
            //border.width: 1
            color:StringConstants.actionBtnBackgroundColor//"black"//
            //radius: 20
            opacity: 0.5
        }
        delegate: Text {
            text: qsTr("%1").arg(modelData)
            font: StringConstants.fontFamily
            color: "white"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            opacity: 1.0 - Math.abs(Tumbler.displacement) / (firstTumbler.visibleItemCount / 2)
        }
        onMovingChanged: {
            if(donotUpdateWhileMoving === true)
            {
                if(moving === false)
                {
                    tumblerIndexChanged(currentIndex)
                    stopped = true
                }
            }
        }

        onModelChanged: {
            console.log("The model has changed")

        }
        onCurrentIndexChanged: {
            if(donotUpdateWhileMoving === true)
            {
                if(moving === false)
                {
                    tumblerIndexChanged(currentIndex)
                }
            }
            else
            {
                tumblerIndexChanged(currentIndex)
            }
        }

        //        onCurrentIndexChanged: {
        //             console.log("The model has changed")
        //            tumblerIndexChanged(currentIndex)
        //        }
        onCurrentItemChanged: {
            
        }

    }
}
