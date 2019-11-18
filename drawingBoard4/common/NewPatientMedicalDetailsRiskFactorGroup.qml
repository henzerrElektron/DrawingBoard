import QtQuick 2.12
import QtQuick.Controls 2.5
import "."
import "./../images/"
//import "./../imports/"
import "./../models/"
import "./../delegates/"
import "./../page/newPatient/"
import ApplicationConstants 1.0

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
    cellHeight: parent.height/(count)// - 10//count>1?parent.height/(count):150
    width:parent.width//actionOrHome ?count*cellWidth:count*cellWidth
    height:parent.height//>cellHeight?parent.height:500//actionOrHome ?cellHeight:cellHeight
    model: medicalRiskFactorDelegateModel
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
        console.log("The filter name is"+filterName+ "the group name is"+npPersonalDetailDelegateModel.filterOnGroup)
    }
    MedicalRiskFactorDelegateModel{
        id:medicalRiskFactorDelegateModel
        delegate:
            Package{
            //            Label{
            //                id:rightFittedOperator
            //                Package.name: filterName
            //                text: actionText
            //            }
            Rectangle{
                id:recValeu
                Package.name: filterName
                height: GridView.view.cellHeight
                width: GridView.view.cellWidth
                //border.width: 1
               // border.color:  StringConstants.borderColorBlack//StringConstants.barBackgroundColor
                //color: "yellow"
                NewPatientRiskFactorSwitchSliderHorizontal{
                    id:rightFittedOperator
                    //anchors.fill: parent
                    anchors.left: parent.left
                    anchors.right: parent.right
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.top: parent.top
                    anchors.topMargin: parent.height/10
                    //height: 150
                    labelText: actionText//"Right Fitted"
                    dataTumblerVisibility: hasComboBox
                    tumblerVisibility:hasComboBox
                    dataTumblersecVisibility: false
                    dataTumblerthirdVisibility: false
                    dataTumblerfirstVisibility: false//true
                    firstSwitchVisible: hasYesNoSwitch
                    topSliderMinValue: sliderMiNValue
                    topSliderMaxValue:sliderMaxValue
                    dataTumblerNoOrColorDelegate:false
                    dataTumblerFirstModel: tumblerFirstModel
                    topSliderModel: tumblerFirstModel
                    topSliderLabelText:comboBoxMetricOffText//"yrs"
                    topSliderVisible:hasComboBox//true//
                    btmSliderVisible:false
                    //tumblerVisibility:false
                    eyeColorDialVisibilty: false
                    Component.onCompleted: {
                        console.log("I am completed")
                    }
                }
            }
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
        }
    }
    MedicalAndRiskFactorModel{
        id:medicalRiskFactorModel
    }
}
