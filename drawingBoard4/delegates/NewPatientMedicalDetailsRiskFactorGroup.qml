import QtQuick 2.12
import QtQuick.Controls 2.5
import "."
import "./../images/"
//import "./../imports/"
import "./../models/"
import "./../delegates/"
import "./../common/"
import "./../page/newPatient/"
import Qt.labs.qmlmodels 1.0
import ApplicationConstants 1.0
/*!
   \qmltype NewPatientMedicalDetailsRiskFactorGroup
   \brief This component used to display the risk factor items using a SliderSwitchHorizontal component

  This is used mainly in NewPatientContactDetails.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of NewPatientMedicalDetailsRiskFactorGroup is demonstrated below
   \qml
        NewPatientMedicalDetailsRiskFactorGroup{
            id:modelgroup
            ilterName: StringConstants.model_dietAndLifeStyle//StringConstants.model_medicalDetails
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
    anchors.fill: parent
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
    onCountChanged: {
        console.log("The number of items are"+count)
    }

    cellWidth: parent.width
    cellHeight:filterName===StringConstants.model_supplementationItems?parent.height/(1.5*count): parent.height/(count)// - 10//count>1?parent.height/(count):150
    width:parent.width//actionOrHome ?count*cellWidth:count*cellWidth
    height:parent.height//>cellHeight?parent.height:500//actionOrHome ?cellHeight:cellHeight
    model: medicalRiskFactorDelegateModel
    ColorModel{
        id:cModel
    }

    function doFilter()
    {
        console.log("The filtername is "+filterName)
        if(filterName === StringConstants.model_medicalDetails)
        {
            theListView.model = medicalRiskFactorDelegateModel.parts.medicalDetailItems
        }
        if(filterName === StringConstants.model_dietAndLifeStyle)
        {
            theListView.model =  medicalRiskFactorDelegateModel.parts.dietItems
        }
        if(filterName === StringConstants.model_medicalFactors)
        {
            theListView.model =  medicalRiskFactorDelegateModel.parts.medicalFactorsItems
        }
        if(filterName === StringConstants.model_supplementationItems)
        {
            theListView.model = medicalRiskFactorDelegateModel.parts.supplementationItems
        }
        if(filterName === StringConstants.model_otherRiskFactorItems)
        {
            theListView.model = medicalRiskFactorDelegateModel.parts.otherRiskFactorItems
        }

        console.log("The filter name is"+filterName+ "the group name is"+npPersonalDetailDelegateModel.filterOnGroup)
    }
    MedicalRiskFactorDelegateModel{
        id:medicalRiskFactorDelegateModel
        delegate:
            Package{
            Rectangle {
                id: wrapper
                Package.name: filterName
                width: GridView.cellWidth;
                //height:filterName===StringConstants.model_supplementationItems?GridView.view.cellHeight/(count):GridView.view.cellHeight
                state: type !== StringConstants.textItem? 'comboItem':'textItem'
                states: [
                    State {
                        name: "comboItem"
                        PropertyChanges {
                            target: wrapper
                            children:recValeu
                            //color:filterName===StringConstants.model_supplementationItems?"green":"transparent"
                            children.width: GridView.view.cellWidth
                            //children.height:filterName===StringConstants.model_supplementationItems?GridView.view.cellHeight/(count): GridView.view.cellHeight
                            width:GridView.view.cellWidth
                           // height:filterName===StringConstants.model_supplementationItems?GridView.view.cellHeight/(count):GridView.view.cellHeight
                        }
                    },
                    State {
                        name: "textItem"
                        PropertyChanges {
                            target: wrapper
                            color:"yellow"
                            children:notesTabTec
                            children.width: GridView.view.cellWidth
                            children.height: 2.75*GridView.view.cellHeight
                            width:GridView.view.cellWidth
                            height:2.75*GridView.view.cellHeight


                        }
                    }
                ]
            }
            Rectangle{
                id:recValeu
                objectName: "comboItemRec"
               // width: GridView.view.cellWidth
               // height: GridView.view.ccellHeight
                anchors.fill: parent
                Package.name: "comboItem"
                color:"blue"//StringConstants.color_gbTransparent
                NewPatientRiskFactorSwitchSliderHorizontal{
                    id:rightFittedOperator
                    //anchors.fill: parent
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.top: parent.top
                    anchors.topMargin:parent.height/10//filterName===StringConstants.model_supplementationItems?0:parent.height/10
                    //height: 150
                    labelText: actionText//"Right Fitted"
                    dataTumblerVisibility: eyedialVisible
                    topSliderVisible:hasComboBox//true//
                    tumblerVisibility:eyedialVisible
                    dataTumblerfirstVisibility: eyedialVisible//true
                    dataTumblerNoOrColorDelegate:eyedialVisible
                    eyeColorDialVisibilty: eyedialVisible
                    btmSliderVisible:false
                    dataTumblersecVisibility: false
                    dataTumblerthirdVisibility: false
                    firstSwitchVisible: hasKnownSwitch
                    secondSwitchVisible:hasYesNoSwitch
                    topSliderMinValue: sliderMiNValue
                    topSliderMaxValue:sliderMaxValueCol
                    dataTumblerFirstModel: tumblerFirstModel === -1?cModel:tumberFirstModel
                    topSliderModel: tumblerFirstModel
                    topSliderLabelText:comboBoxMetricOffText//"yrs"
                    //tumblerVisibility:false
                    Component.onCompleted: {
                        console.log("I am completed")
                    }
                }
            }
            Rectangle{
                Package.name: "textItem"
                objectName: "TextItemDelegateRec"
                anchors.fill: parent
                //width: GridView.cellWidth
                //height: GridView.cellHeight
                NotesTableRec{
                    id:notesTabTec
                    Component.objectName: {
                        console.log("I am completed")
                    }
                }
            }



            //                    Rectangle{
            //                        id:notesTabTec
            //                        anchors.fill: parent
            //                        Package.name: "textItem"
            //                        //height: GridView.view.cellHeight
            //                        //width: GridView.view.cellWidth
            //                        objectName: "TextItemDelegateRec"
            //                        //anchors.fill: parent
            //                        Rectangle{
            //                            id:rectangle
            //                            anchors.left: parent.left
            //                            anchors.right: parent.right
            //                            color: "transparent"
            //                            height: 50
            //                            border.color: StringConstants.actionBtnBorderColor
            //                            border.width: 2
            //                            //NewPatientGroupLabel{
            //                            GroupLabel{
            //                                id:leftLabel
            //                                text: StringConstants.lbl_npNotes
            //                                anchors.fill: parent
            //                                anchors.leftMargin: 10
            //                                anchors.rightMargin: 10
            //                                //anchors.centerIn: parent
            //                            }
            //                        }
            //                        Rectangle{
            //                            id:mainRec
            //                            //anchors.fill: parent
            //                            anchors.left: parent.left
            //                            anchors.right: parent.right
            //                            anchors.top: rectangle.bottom
            //                            anchors.bottom: parent.bottom
            //                            //color: StringConstants.actionBtnBackgroundColor
            //                            border.color: StringConstants.actionBtnBorderColor
            //                            border.width: 2

            //                            TextEdit {
            //                                id: textEdit
            //                                anchors.top:  parent.top//rectangle.bottom
            //                                anchors.topMargin: 10
            //                                anchors.left: parent.left
            //                                anchors.leftMargin: 10
            //                                anchors.right: parent.right
            //                                anchors.rightMargin: 10
            //                                anchors.bottom: parent.bottom
            //                                anchors.bottomMargin: 10
            //                                text: qsTr("Please enter the text here....")
            //                                textFormat: Text.AutoText
            //                                //canRedo: true
            //                                //canUndo: true
            //                                //canPaste: true
            //                                font.pixelSize: 12
            //                                //color: "white"
            //                            }
            //                        }
            //                        Component.objectName: {
            //                            console.log("I am completed")
            //                        }
            //                    }
        }
        filterOnGroup: ""
        model: medicalRiskFactorModel
        onFilterGroupChanged: {
            console.log("I am changed")
            update()
        }
        Component.onCompleted: {
            parts.medicalDetailItems.filterOnGroup = StringConstants.model_medicalDetails
            parts.dietItems.filterOnGroup = StringConstants.model_dietAndLifeStyle
            parts.medicalFactorsItems.filterOnGroup = StringConstants.model_medicalFactors
            parts.supplementationItems.filterOnGroup = StringConstants.model_supplementationItems
            parts.otherRiskFactorItems.filterOnGroup = StringConstants.model_otherRiskFactorItems
        }
    }
    MedicalAndRiskFactorModel{
        id:medicalRiskFactorModel
    }
}
