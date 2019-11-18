import QtQuick 2.12
import QtQuick.Controls 2.5
import "."
import "./../images/"
//import "./../imports/"
import "./../models/"
import "./../delegates/"
import "./../page/newPatient/"
import ApplicationConstants 1.0
import Qt.labs.qmlmodels 1.0
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
    //property alias labelText: contactDetailLabel1.text
    property var labelText: ""
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
    cellHeight: parent.height/count < 25? 25:parent.height/count
    width:parent.width//actionOrHome ?count*cellWidth:count*cellWidth
    height: parent.height//count*cellHeight//actionOrHome ?cellHeight:cellHeight
    function doFilter()
    {
        if(filterName === StringConstants.report_PatientDetailModel)
        {
            theListView.model = reportlDetailDelegateModel.parts.patientDetailedModel
        }
        if(filterName === StringConstants.report_PraticeDetailModel)
        {
            theListView.model = reportlDetailDelegateModel.parts.praticeDetailedModel
        }
    }
//    header:contactDetailLabel1
//        NewPatientGroupLabel{
//        id:contactDetailLabel1
//        anchors.top: parent.top
//        anchors.left: parent.left
//        anchors.right: parent.right
//        //text: StringConstants.lbl_rpDetails
//        height: 30
//    }

    ReportlDetailDelegateModel{
        id:reportlDetailDelegateModel
        delegate:
            Package{
            //            DelegateChooser {
            //                id: delegateChooser
            //                Package.name: filterName
            //                role: "type"
            //                DelegateChoice {
            //                    roleValue: "labelItem"
            //                    LabelDelegate {
            //                        height: GridView.view.cellHeight
            //                        width: GridView.view.cellWidth
            //                    }
            //                }
            //            }
            LabelDelegate{
                id:label
                //y: 20
                Package.name: filterName//"PatientDetailedModel"
               // text: actionName
               // font:OtherConstants.fontFamily
                color: "white"
                font.pixelSize: 20
                font.bold: true
                height: GridView.view.cellHeight //- label.y
                width: GridView.view.cellWidth
            }
        }
        filterOnGroup: ""
        onFilterGroupChanged:{
            console.log("I am changed")
            update()
        }
        model:reportDetailModel
        Component.onCompleted: {
            parts.patientDetailedModel.filterOnGroup = StringConstants.report_PatientDetailModel
            parts.praticeDetailedModel.filterOnGroup = StringConstants.report_PraticeDetailModel
        }
    }
    ReportDetailModel{
        id:reportDetailModel
    }
}
