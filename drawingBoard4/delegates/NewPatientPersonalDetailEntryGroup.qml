import QtQuick 2.12
import QtQuick.Controls 2.5
import "."
import "./../images/"
//import "./../imports/"
import "./../page/newPatient"
import "./../models/"
import "./../delegates/"
import ApplicationConstants 1.0
import Qt.labs.qmlmodels 1.0
/*!
   \qmltype NewPatientPersonalDetailEntryGroup
   \brief This component used to display the patient personal detail items using a Text or ComboBox component

  This is used mainly in NewPatientContactDetails.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of NewPatientPersonalDetailEntryGroup is demonstrated below
   \qml
                    NewPatientPersonalDetailEntryGroup{
                        id:pageLabels
                        anchors.fill:parent
                        verticalLayoutDirection: Grid.TopToBottom
                        layoutDirection: Qt.LeftToRight
                        flow: Grid.LeftToRight
                        filterName:StringConstants.textBoxItemsModel
                    }
   \endqml

*/
GridView {
    id: theListView
    property var group: ""
    property var group1: ""
    property int curCellWidth: 0
    property int curCellHeight: 0
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
    cellWidth:parent.width/2
    cellHeight: parent.height/(count/2)

    width:parent.width//actionOrHome ?count*cellWidth:count*cellWidth
    height: parent.height//count*cellHeight//actionOrHome ?cellHeight:cellHeight
    //delegate: delegateChooser
    model: npPDEntryDelegateModel//newPatientPersonalDetailEntryModel
    function doFilter()
    {
        console.log("The filtername is "+filterName)
        if(filterName === StringConstants.comboBoxItemModel)
        {
            theListView.model = npPDEntryDelegateModel.parts.comboBoxItems
        }
        if(filterName === StringConstants.textBoxItemsModel)
        {
            theListView.model = npPDEntryDelegateModel.parts.textBoxItems
        }
        if(filterName === StringConstants.doBItemModel)
        {
            theListView.model = npPDEntryDelegateModel.parts.dobItems
        }
        if(filterName === StringConstants.allItem)
        {
            theListView.model = npPDEntryDelegateModel.parts.allItems
        }

        console.log("The filter name is"+filterName+ "the group name is"+npPDEntryDelegateModel.filterOnGroup)
    }
    NewPatientPDEntryDelegateModel{
        id:npPDEntryDelegateModel
        //filterOnGroup: StringConstants.textBoxItemsModel
        // model: newPatientPersonalDetailEntryModel
        //delegate: LabelOnTopDelegate{}
        //delegateChooser
        delegate:Package{
            Rectangle {
                id: wrapper
                Package.name: filterName
                width: GridView.view.cellWidth
                height: GridView.view.cellHeight
                color: StringConstants.color_gbTransparent
                //height:filterName===StringConstants.model_supplementationItems?GridView.view.cellHeight/(count):GridView.view.cellHeight
                state: type// !== StringConstants.textItem? 'comboItem':'textItem'
                states: [
                    State {
                        name: "comboItem"
                        PropertyChanges {
                            target: wrapper
                            children:mainGridLayout1
                            //color:filterName===StringConstants.model_supplementationItems?"green":"transparent"
                            children.width: GridView.view.cellWidth
                            children.height: GridView.view.cellHeight
                            //children.height:filterName===StringConstants.model_supplementationItems?GridView.view.cellHeight/(count): GridView.view.cellHeight
                            width:GridView.view.cellWidth
                            height: GridView.view.cellHeight
                            // height:filterName===StringConstants.model_supplementationItems?GridView.view.cellHeight/(count):GridView.view.cellHeight

                        }
                    },
                    State {
                        name: "textItem"
                        PropertyChanges {
                            target: wrapper
                            children:mainGridLayout
                            //color:filterName===StringConstants.model_supplementationItems?"green":"transparent"
                            children.width: GridView.view.cellWidth
                            children.height: GridView.view.cellHeight
                            //children.height:filterName===StringConstants.model_supplementationItems?GridView.view.cellHeight/(count): GridView.view.cellHeight
                            width:GridView.view.cellWidth
                            height: GridView.view.cellHeight
                            // height:filterName===StringConstants.model_supplementationItems?GridView.view.cellHeight/(count):GridView.view.cellHeight
                        }
                    },
                    State {
                        name: "dobItem"
                        PropertyChanges {
                            target: wrapper
                            children:mainGridLayout2
                            //color:filterName===StringConstants.model_supplementationItems?"green":"transparent"
                            children.width: GridView.view.cellWidth
                            children.height: GridView.view.cellHeight
                            //children.height:filterName===StringConstants.model_supplementationItems?GridView.view.cellHeight/(count): GridView.view.cellHeight
                            width:GridView.view.cellWidth
                            height: GridView.view.cellHeight
                        }
                    }
                ]
            }


            //DelegateChooser {
            //id: delegateChooser
            // role: "type"
            //            DelegateChoice {
            //                roleValue: "labelItem"
            //                LabelDelegate{
            //                    id:label1
            //                    //Package.name: filterName//"PatientDetailedModel"
            //                    text: actionName
            //                    // color: "black"
            //                    height: GridView.view.cellHeight
            //                    width: GridView.view.cellWidth/2
            //                    font { family: OtherConstants.fontFamily; pixelSize: 25; weight: Font.Bold; capitalization: Font.MixedCase }
            //                    //font.pixelSize:25//index%2 === 0? 25:15
            //                    color: StringConstants.testPage_lblFontColor//index%2 === 0?StringConstants.testPage_lblFontColor:StringConstants.barBorderColor
            //                    onTextChanged: {
            //                        console.log("The value of the text is"+text+actionName)
            //                    }
            //                }
            //            }
            //DelegateChoice {
            //    roleValue:"textItem"
            Rectangle{
                id:mainGridLayout
                anchors.fill: parent
                color:  StringConstants.color_gbTransparent
                Package.name: "textItem"
                Column{
                    LabelDelegate{
                        id:label2
                        //Package.name: filterName//"PatientDetailedModel"
                        text: actionName
                        // color: "black"
                        //height: GridView.view.cellHeight/2 - 20
                        width: GridView.view.cellWidth
                        font { family: OtherConstants.fontFamily; pixelSize: 15; weight: Font.Bold; capitalization: Font.MixedCase }
                        //font.pixelSize:25//index%2 === 0? 25:15
                        color: StringConstants.barBorderColor//testPage_lblFontColor//index%2 === 0?StringConstants.testPage_lblFontColor:StringConstants.barBorderColor
                        onTextChanged: {
                            console.log("The value of the text is"+text+actionName)
                        }
                    }
                    TextDelegate{
                        id:label
                        //height: GridView.view.cellHeight/2 - 20
                        width: readonlyItem?175:350//GridView.view.cellWidth * 2
                        readOnly: readonlyItem
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
            }
            //}
            //DelegateChoice{
            //    roleValue: "comboItem"
            Rectangle{
                id:mainGridLayout1
                anchors.fill: parent
                color:StringConstants.color_gbTransparent
                Package.name: "comboItem"
                Column{

                    LabelDelegate{
                        id:label21
                        //Package.name: filterName//"PatientDetailedModel"
                        text: actionName
                        // color: "black"
                        //height: GridView.view.cellHeight/2 - 20
                        width: GridView.view.cellWidth
                        font { family: OtherConstants.fontFamily; pixelSize: 15; weight: Font.Bold; capitalization: Font.MixedCase }
                        //font.pixelSize:25//index%2 === 0? 25:15
                        color: StringConstants.barBorderColor//testPage_lblFontColor//index%2 === 0?StringConstants.testPage_lblFontColor:StringConstants.barBorderColor
                        onTextChanged: {
                            console.log("The value of the text is"+text+actionName)
                        }
                    }
                    //                        NewPatientDataTumbler{
                    //                            id:comboBox//pageOperators
                    //                            anchors.fill: parent
                    //                            labelHorizontal:true
                    //                            height: 200//GridView.view.cellHeight/2
                    //                            color: StringConstants.barBackgroundColor
                    //                            width: 350//GridView.view.cellWidth
                    //                            //width: 100
                    //                            labelText:StringConstants.lbl_rpSelectOperator// ""//comboBoxTextRole//StringConstants.lbl_rpSelectOperator
                    //                            firstTumblerVisibility: false
                    //                            secTumblerVisibility: false
                    //                            thirdTumblerVisibility: false
                    //                            firstTumblerModel:dataModel
                    //                            comboBoxModel: dataModel
                    //                            comboBoxRoleOrModelFlag:false
                    //                            Component.onCompleted: {
                    //                                // comboBox.selectedText.connect(searchRec.selectedText)
                    //                            }
                    //                        }
                    ComboBox{
                        //NewPatientDataComboBox  {
                        id:comboItem
                        height: GridView.view.cellHeight/2  - 20
                        width: 2* GridView.view.cellWidth
                        //comboBoxWidth: GridView.view.cellWidth
                        //comboBoxHeight: GridView.view.cellHeight/2  - 20
                        //comboBoxModel: dataModel
                        model: actionName == StringConstants.lbl_npPatientTitle?OtherConstants.modelTitle:OtherConstants.modelGender//dataModel
                        font { family: OtherConstants.fontFamily; pixelSize: 15; weight: Font.Bold; capitalization: Font.MixedCase }
                        //editable: true
                    }
                }
            }
            // }
            //DelegateChoice{
            //    roleValue: "dobItem"
            Rectangle{
                id:mainGridLayout2
                anchors.fill: parent
                Package.name: "dobItem"
                color:  StringConstants.color_gbTransparent
                Column{
                    id:col1
                    LabelDelegate{
                        id:label22
                        //Package.name: filterName//"PatientDetailedModel"
                        text: actionName
                        // color: "black"
                        //height: GridView.view.cellHeight/2 - 20
                        width: GridView.view.cellWidth
                        font { family: OtherConstants.fontFamily; pixelSize: 15; weight: Font.Bold; capitalization: Font.MixedCase }
                        //font.pixelSize:25//index%2 === 0? 25:15
                        color: StringConstants.barBorderColor//testPage_lblFontColor//index%2 === 0?StringConstants.testPage_lblFontColor:StringConstants.barBorderColor
                        onTextChanged: {
                            console.log("The value of the text is"+text+actionName)
                        }
                    }
                    Row{
                        TextDelegate{
                            id:label23
                            //height: GridView.view.cellHeight/2 - 20
                            width: readonlyItem?75:350//GridView.view.cellWidth * 2
                            readOnly: readonlyItem
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
                }
                Column{
                    id:col2
                    anchors.left: col1.right
                    NewPatientDobTumbler{
                        id:pageSwitchButtons
                        recTextVisible: false
                        dateTumblerVisible:false
                        monthTumblerVisible: false
                        yearTumblerVisible: false
                        // dateHeight: 35
                        //  monthHeight: 35
                        //  yearHeight: 35
                        lblText:""
                        lblHeight:label22.height -6// - 3// + 20
                        lblWidth: 0
                        dobText:""
                        dobHeight:0
                        dobWidth: 0
                        recLabelVisible: false
                        //anchors.fill: parent
                        // width: parent.width/2
                        // height: parent.height/2
                        // anchors.top: parent.top
                        //anchors.bottom: parent.bottom
                        // anchors.right: parent.right
                        //anchors.horizontalCenter: label23.horizontalCenter
                        /// anchors.verticalCenter: parent.verticalCenter
                        Component.onCompleted: {
                            setTumblerYear(0)//IntegerConstants.dobStartDate
                            setTumblerDate(0)
                            setTumblerMonth(0)
                        }
                    }//TestPageSwitchButtons
                }

                //                   DobDelegate{
                //                         width: GridView.view.cellWidth
                //                         height: GridView.view.cellHeight
                //                         labelText:actionName
                //                         readText:readonlyItem
                //                   }
            }
            // }
            Component.onCompleted: {
                console.log("I am getting completed")
            }

            //}
        }
        filterOnGroup: ""
        model: newPatientPersonalDetailEntryModel
        onFilterGroupChanged: {
            console.log("I am changed")
            update()
        }
        Component.onCompleted: {
            console.log("The value of the text is")
            parts.comboBoxItems.filterOnGroup = StringConstants.comboBoxItemModel
            parts.textBoxItems.filterOnGroup = StringConstants.textBoxItemsModel
            parent.dobItems.filterOnGroup = StringConstants.doBItemModel
            parent.allItems.filterOnGroup = StringConstants.allItem
            //filterOnGroup = StringConstants.textBoxItemsModel
        }
    }

    NewPatientPersonalDetailsEntryModel{
        id:newPatientPersonalDetailEntryModel
    }
    Component.onCompleted: {
        console.log("I am getting completed")
        curCellWidth = theListView.cellWidth
        curCellHeight = theListView.cellHeight
    }
}
