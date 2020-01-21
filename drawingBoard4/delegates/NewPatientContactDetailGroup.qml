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
    cellHeight: parent.height/(count/2) - (20/count)
    width:parent.width//actionOrHome ?count*cellWidth:count*cellWidth
    height: parent.height //count*cellHeight//actionOrHome ?cellHeight:cellHeight
    model: npContactDetailDelegateModel
    function doFilter()
    {
        console.log("The filtername is "+filterName)
        if(filterName === StringConstants.np_ContactDetailLabelModel)
        {
            theListView.model =npContactDetailDelegateModel.parts.patientContactLabelItems
        }
        if(filterName === StringConstants.np_ContactDetailTextModel)
        {
            theListView.model = npContactDetailDelegateModel.parts.patientContactTextItems
        }
        if(filterName === StringConstants.np_ContactDetailAllModel)
        {
            theListView.model = npContactDetailDelegateModel.parts.allItem
        }

        console.log("The filter name is"+filterName+ "the group name is"+npContactDetailDelegateModel.filterOnGroup)
    }
    NewPatientContactDetailDelegateModel{
        id:npContactDetailDelegateModel
        delegate: Package{
            Rectangle{
                id: wrapper
                Package.name: filterName
                width: GridView.cellWidth;
                height:GridView.view.cellHeight
                color: StringConstants.color_gbTransparent
                //height:filterName===StringConstants.model_supplementationItems?GridView.view.cellHeight/(count):GridView.view.cellHeight
                state: type// !== StringConstants.textItem? 'comboItem':'textItem'
                states: [
                    State {
                        name:"labelItem"
                        PropertyChanges {
                            target: wrapper
                            children:label2
                            children.width: GridView.view.cellWidth
                            children.height:  GridView.view.cellHeight
                            width:GridView.view.cellWidth
                            height:GridView.view.cellHeight
                        }
                    },
                    State {
                        name: "textItem"
                        PropertyChanges {
                            target: wrapper
                            children:label
                            children.width: GridView.view.cellWidth
                            children.height:  GridView.view.cellHeight
                            width:GridView.view.cellWidth
                            height:GridView.view.cellHeight
                        }
                    }
                ]
            }
//            LabelDelegate{
//                id:label2
//                Package.name: "labelItem"//"PatientDetailedModel"
//                //rIn: parent
//                text: actionText
//                //verticalAlignment:Text.AlignVCenter
//                //color: "orange"
//                height: 2* GridView.view.cellHeight//+(20/count)
//                width: 350//GridView.view.cellWidth
//                font { family: OtherConstants.fontFamily; pixelSize: 15; weight: Font.Bold; capitalization: Font.MixedCase }
//                //font.pixelSize:25//index%2 === 0? 25:15
//                color: "red"//StringConstants.actionBtnBorderColor//testPage_lblFontColor//index%2 === 0?StringConstants.testPage_lblFontColor:StringConstants.barBorderColor
//                onTextChanged: {
//                    console.log("The value of the text is"+text+actionName)
//                }
//                background: Rectangle{color: "black"}
//            }
            TextDelegate{
                id:label2
                Package.name: "labelItem"
                text: actionText
                readOnly: true
                //height: GridView.view.cellHeight/2 - 20
                width: 350//GridView.view.cellWidth * 2
                height:GridView.view.cellHeight
                font { family: OtherConstants.fontFamily; pixelSize: 15; weight: Font.Bold; capitalization: Font.MixedCase }
                color: StringConstants.actionBtnBorderColor
                background: Rectangle {
                    //implicitWidth: 200
                    //implicitHeight: 40
                    //color: StringConstants.barBackgroundColor//control.enabled ? "transparent" : "#353637"
                   // border.color: StringConstants.readonlyColor//control.enabled ? "#21be2b" : "transparent"
                }
                onTextChanged: {
                    console.log("The value of the text is"+text)
                }
            }
            TextDelegate{
                id:label
                Package.name: "textItem"
                //height: GridView.view.cellHeight/2 - 20
                width: 350//GridView.view.cellWidth * 2
                height:GridView.view.cellHeight
                font { family: OtherConstants.fontFamily; pixelSize: 15; weight: Font.Bold; capitalization: Font.MixedCase }
                // color: StringConstants.barBorderColor
                background: Rectangle {
                    //implicitWidth: 200
                    //implicitHeight: 40
                    color: StringConstants.barBackgroundColor//control.enabled ? "transparent" : "#353637"
                    border.color: StringConstants.readonlyColor//control.enabled ? "#21be2b" : "transparent"
                }
                onTextChanged: {
                    console.log("The value of the text is"+text)
                }
            }
        }
        filterOnGroup: ""
        model: npContactDetailModel
        onFilterGroupChanged: {
            console.log("I am changed")
            update()
        }
        Component.onCompleted: {
            parts.patientContactLabelItems.filterOnGroup = StringConstants.np_ContactDetailLabelModel
            parts.patientContactTextItems.filterOnGroup = StringConstants.np_ContactDetailTextModel
            parts.allItem.filterOnGroup =StringConstants.np_ContactDetailAllModel
        }
    }
    //delegate: delegateChooser
    //    DelegateChooser {
    //        id: delegateChooser
    //        role: "type"

    //        DelegateChoice {
    //            roleValue: "labelItem"
    //            LabelDelegate{
    //                id:label3
    //                //Package.name: filterName//"PatientDetailedModel"
    //                //rIn: parent
    //                text: actionText
    //                //verticalAlignment:Text.AlignBottom
    //                //color: "orange"
    //                height: GridView.view.cellHeight + (20/count)
    //                width: GridView.view.cellWidth
    //                font { family: OtherConstants.fontFamily; pixelSize: 15; weight: Font.Bold; capitalization: Font.MixedCase }
    //                //font.pixelSize:25//index%2 === 0? 25:15
    //                color: StringConstants.actionBtnBorderColor//testPage_lblFontColor//index%2 === 0?StringConstants.testPage_lblFontColor:StringConstants.barBorderColor
    //                onTextChanged: {
    //                    console.log("The value of the text is"+text+actionName)
    //                }
    //                //background: Rectangle{color: "black"}
    //            }
    //            //            LabelDelegate{
    //            //            id:label1
    //            //            //Package.name: filterName//"PatientDetailedModel"
    //            //            text: actionText
    //            //            color: "black"
    //            //            // font:OtherConstants.fontFamily
    //            //            //  color: "white"
    //            //            height: GridView.view.cellHeight
    //            //            width: GridView.view.cellWidth/2
    //            //            font { family: OtherConstants.fontFamily; pixelSize: pixelSize; weight: Font.Bold; capitalization: Font.MixedCase }
    //            //            onTextChanged: {
    //            //                console.log("The value of the text is"+text+actionName)
    //            //            }
    //            //        }
    //        }
    //        DelegateChoice {
    //            roleValue:"textItem"
    //            TextDelegate{
    //                id:label
    //                //height: GridView.view.cellHeight/2 - 20
    //                width: 350//GridView.view.cellWidth * 2
    //                font { family: OtherConstants.fontFamily; pixelSize: 15; weight: Font.Bold; capitalization: Font.MixedCase }
    //                // color: StringConstants.barBorderColor
    //                background: Rectangle {
    //                    //implicitWidth: 200
    //                    //implicitHeight: 40
    //                    color: StringConstants.barBackgroundColor//control.enabled ? "transparent" : "#353637"
    //                    border.color: StringConstants.readonlyColor//control.enabled ? "#21be2b" : "transparent"
    //                }
    //                onTextChanged: {
    //                    console.log("The value of the text is"+text)
    //                }
    //            }
    //            //            TextDelegate{
    //            //                id:label
    //            //                height: GridView.view.cellHeight
    //            //                width: GridView.view.cellWidth
    //            //                //topInset: 10
    //            //                font { family: OtherConstants.fontFamily; pixelSize: 10; weight: Font.Bold; capitalization: Font.MixedCase }
    //            //                background: Rectangle {
    //            //                          //implicitWidth: 200
    //            //                         // implicitHeight: GridView.view.cellWidth
    //            //                         // color: StringConstants.color_gbTransparent//StringConstants.barBackgroundColor//control.enabled ? "transparent" : "#353637"
    //            //                          border.color: StringConstants.readonlyColor//control.enabled ? "#21be2b" : "transparent"
    //            //                      }
    //            //                onTextChanged: {
    //            //                    console.log("The value of the text is"+text)
    //            //                }
    //            //            }
    //        }

    //    }
    NewPatientContactDetailModel{
        id:npContactDetailModel
    }
    Component.onCompleted: {
        console.log("I am getting completed")
    }
}
