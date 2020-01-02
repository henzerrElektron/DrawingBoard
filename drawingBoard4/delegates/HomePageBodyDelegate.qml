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
import ApplicationConstants 1.0
import "."
//Component{
//    id: actionHeaderDelegate
/*!
   \qmltype HomePageBodyDelegate
   \brief This component is used to display the main Buttons in the Home page.

  This is used mainly in PageActionsButtons.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of HomePageBodyDelegate is demonstrated below
   \qml
            HomePageBodyDelegate{
                id:homeDelegate
                Package.name: "homeMainItems"
                Component.onCompleted: {
                    invokeSource.connect(theListView.invokeSource)
                    invokeIndex.connect(theListView.invokeIndex)
                }
            }
   \endqml

*/
Rectangle {
    //anchors.left: parent.left
    //anchors.right: parent.right
    //height: root.rowHeight
    id: homePageBodyDelegate
//    anchors.centerIn: parent
    //height: IntegerConstants.homePageBodyBtnHeight//4*testControlBtn.height////75
    //width: IntegerConstants.homePageBodyBtnwidth//4*testControlBtn.width////75
    color: StringConstants.color_gbTransparent//"#5EBDC3"//Constants.headerBackgroundColor//"transparent"//"#5EBDC3"//
    border.color: StringConstants.homePageBodyBorder//Constants.actionBtnBorderColor
    border.width: 1

    signal invokeSource(string source)
    signal invokeIndex(int index)
    signal test()
    onTest: console.log("I am tested")
    onInvokeSource: console.log("I am the soure"+source)
    ToolButton {
        id:testControlBtn
        Material.foreground: StringConstants.actionBtnBackgroundColor
        anchors.centerIn: parent
        icon.name: actionIconName
        icon.source:actionIconSource
        icon.color:actionIconColor
        //icon.source:"qrc:/images/timeline_tab_selected.png"
        //icon.name: "timeline_tab_selected"
        icon.width: 100
        icon.height: 100
        width: parent.width//2*icon.width
        height: parent.height//2*icon.height
        background: Rectangle{ color: StringConstants.homePageBodyColor}//Constants.actionBtnBackgroundColor}
        display: AbstractButton.TextUnderIcon
        text: actionText
         font { family: OtherConstants.fontFamily; pixelSize: 20; weight: Font.Bold; capitalization: Font.MixedCase }
        //font.family: "segoeui"
        //font.family: OtherConstants.fontFamily
        //font.capitalization: false
        //radius: 10
        onClicked: {
            console.log("clicked on"+actionIconName)
            console.log("The source is"+source)
            console.log("The index is"+index)
            invokeSource(source)
            invokeIndex(index)
            test()
            //clickedButton(index)
        }
    }
    //        Text {
    //            text: role_display
    //            anchors.centerIn: parent
    //        }
}
//}
