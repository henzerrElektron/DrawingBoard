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
        //        if(filterName === StringConstants.comboBoxItemModel)
        //        {
        //            theListView.model = npPDEntryDelegateModel.parts.comboBoxItems
        //        }
        //        if(filterName === StringConstants.textBoxItemsModel)
        //        {
        //            theListView.model = npPDEntryDelegateModel.parts.textBoxItems
        //        }
    }
    NewPatientPDEntryDelegateModel{
        id:npPDEntryDelegateModel
        //filterOnGroup: StringConstants.textBoxItemsModel
        model: newPatientPersonalDetailEntryModel
        //delegate: LabelOnTopDelegate{}
        //delegateChooser
        delegate:DelegateChooser {
            id: delegateChooser
            role: "type"
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
            DelegateChoice {
                roleValue:"textItem"
                Rectangle{
                    id:mainGridLayout
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
                            width: 350//GridView.view.cellWidth * 2
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
            }
            DelegateChoice{
                roleValue: "comboItem"
                Rectangle{
                    id:mainGridLayout1
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
                            model: dataModel
                            font { family: OtherConstants.fontFamily; pixelSize: 15; weight: Font.Bold; capitalization: Font.MixedCase }
                            //editable: true
                        }
                    }
                }
            }

            Component.onCompleted: {
                console.log("I am getting completed")
            }

        }
        Component.onCompleted: {
            console.log("The value of the text is")
            // parts.comboBoxItems.filterOnGroup = StringConstants.comboBoxItemModel
            // parts.textBoxItems.filterOnGroup = StringConstants.textBoxItemsModel
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
