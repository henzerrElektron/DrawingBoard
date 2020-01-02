import QtQuick 2.12
import QtQuick.Controls 2.5
import "."
import "./../images/"
//import "./../imports/"
import "./../models/"
import "./../delegates/"
import ApplicationConstants 1.0
import Qt.labs.qmlmodels 1.0
/*!
   \qmltype NewPatientContactDetailGroup
   \brief This component used to display the contact details items in a gridview with Label and Text Delegate

  This is used mainly in NewPatientContactDetails.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of NewPatientContactDetailGroup is demonstrated below
   \qml
        NewPatientContactDetailGroup{
            id:contactTabPage1
            anchors.fill: parent
            verticalLayoutDirection: Grid.TopToBottom
            layoutDirection: Qt.LeftToRight
            flow: Grid.LeftToRight
            flickableDirection: Flickable.HorizontalAndVerticalFlick
        }
   \endqml

*/
GridView {
    id: theListView
    //anchors.fill: parent
    property var group: ""
    property var group1: ""
    //property alias group:allPageModel.filterOnGroup
    //property alias group1: allPageModel1.filterOnGroup
    // property var group: ""
    // property var group1: ""
    property alias theModel: theListView.model
    property int marginWidth: (parent.width/count)/count
    property int curWidth: theListView.width
    property int  cellSpacing: 0
    property bool actionOrHome: true
    property var filterName: ""
    onFilterNameChanged: doFilter()
    property var idealCellHeight: 200
    property var idealCellWidth: 200
    signal componentTriggered(string name)
    signal invokeSource(string source)
    signal invokeIndex(int index)
    signal tested()
    onTested: {"I am tested in TestActionsButtons"}
    onComponentTriggered: {
        console.log(" component was triggered"+name)
    }
    onInvokeSource: {
        console.log("The string is"+source)
    }
    onInvokeIndex: {
        console.log("The invokeIndex is"+index)
    }
    cellWidth: parent.width/2
    cellHeight: parent.height/(count/2)
    width:parent.width//actionOrHome ?count*cellWidth:count*cellWidth
    height: parent.height//count*cellHeight//actionOrHome ?cellHeight:cellHeight
    delegate: delegateChooser
    model: contactDetailModel
    function doFilter()
    {

    }
    DelegateChooser {
        id: delegateChooser
        role: "type"

        DelegateChoice {
            roleValue: "labelItem"
            LabelDelegate{
            id:label1
            //Package.name: filterName//"PatientDetailedModel"
            text: actionText
            color: "black"
            // font:OtherConstants.fontFamily
            //  color: "white"
            height: GridView.view.cellHeight
            width: GridView.view.cellWidth/2
            font { family: OtherConstants.fontFamily; pixelSize: pixelSize; weight: Font.Bold; capitalization: Font.MixedCase }
            onTextChanged: {
                console.log("The value of the text is"+text+actionName)
            }
        }
        }
        DelegateChoice {
            roleValue:"textItem"
            TextDelegate{
                id:label
                height: GridView.view.cellHeight
                width: GridView.view.cellWidth
                //topInset: 10
                font { family: OtherConstants.fontFamily; pixelSize: 10; weight: Font.Bold; capitalization: Font.MixedCase }
                background: Rectangle {
                          //implicitWidth: 200
                         // implicitHeight: GridView.view.cellWidth
                         // color: StringConstants.color_gbTransparent//StringConstants.barBackgroundColor//control.enabled ? "transparent" : "#353637"
                          border.color: StringConstants.readonlyColor//control.enabled ? "#21be2b" : "transparent"
                      }
                onTextChanged: {
                    console.log("The value of the text is"+text)
                }
            }
        }

    }
    NewPatientContactDetailModel{
        id:contactDetailModel
    }
}
