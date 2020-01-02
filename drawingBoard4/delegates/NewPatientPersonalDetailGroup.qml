import QtQuick 2.12
import QtQuick.Controls 2.5
import "."
import "./../images/"
//import "./../imports/"
import "./../models/"
import "./../delegates/"
import ApplicationConstants 1.0
/*!
   \qmltype NewPatientPersonalDetailGroup
   \brief This component used to display the patient personal detail as a readonly text item

  This is used mainly in PatientLabel,SwitchPatientLabel.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of NewPatientPersonalDetailGroup is demonstrated below
   \qml
                    NewPatientPersonalDetailGroup{
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
    //anchors.fill: parent
    property var group: ""
    property var group1: ""
    //property alias group:allDateDelegateModel.filterOnGroup
    //property alias group1: allDateDelegateModel1.filterOnGroup
    // property var group: ""
    // property var group1: ""
    property alias theModel: theListView.model
    property int marginWidth: (parent.width/count)/count
    property int marginHeight:(parent.height/count)/count
    property int curWidth: theListView.width
    property int  cellSpacing: 0
    property bool praticeOrPatient: true
    property var filterName: ""
    onFilterNameChanged: doFilter()
    property var idealCellHeight: 100
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
    cellWidth: parent.width/2//index%2 === 0?parent.width/4:parent.width/2//(parent.width/(count))-marginWidth
    cellHeight: parent.height/(count/2)//(parent.height/(count))-marginHeight//parent.height/3
    width:parent.width//count*cellWidth
    height:parent.height //cellHeight
    function doFilter()
    {
        console.log("The filtername is "+filterName)
        if(filterName === StringConstants.np_PersonalDetailExistingPage)
        {
            theListView.model = npPersonalDetailDelegateModel.parts.patientPDExistingPage
        }
        if(filterName === StringConstants.np_PersonalDetailTestPage)
        {
            theListView.model =  npPersonalDetailDelegateModel.parts.patientPDTestPage
        }
        console.log("The filter name is"+filterName+ "the group name is"+npPersonalDetailDelegateModel.filterOnGroup)
    }
    NewPatientPersonalDetailDelegateModel{
        id:npPersonalDetailDelegateModel
        delegate:
            Package{
            LabelDelegate{
                id:label1
                text: index%2===0?actionName:actionText
                Package.name: filterName
                //color: "black"
                height: GridView.view.cellHeight
                width: index%2 === 0?GridView.view.width:GridView.view.cellWidth// - 100//index%2 === 0?GridView.view.cellWidth:GridView.view.cellWidth/2
               // x:index%2 === 0?0:100
               // x: view.currentItem.x+100
                horizontalAlignment:Text.AlignLeft//index%2 === 0?Text.AlignLeft:Text.AlignHCenter
                color: index%2===0?StringConstants.barBorderColor:StringConstants.testPage_lblFontColor
                //color: "white"
                //font.pixelSize: 20
                font { family: OtherConstants.fontFamily; pixelSize: 25; weight: Font.Bold; capitalization: Font.MixedCase }
                //font.bold: true
//                background: Rectangle{
//                    color: index%2 === 0?"red":"black"
//                }

                onTextChanged: {
                    console.log("The value of the text is"+text+actionName)
                }
            }
        }
        filterOnGroup: ""
        model: newPatientPersonalDetailModel
        onFilterGroupChanged: {
            console.log("I am changed")
            update()
        }
        Component.onCompleted: {
            parts.patientPDExistingPage.filterOnGroup = StringConstants.np_PersonalDetailExistingPage
            parts.patientPDTestPage.filterOnGroup = StringConstants.np_PersonalDetailTestPage
        }
    }
    NewPatientPersonalDetailModel{
                id:newPatientPersonalDetailModel
    }
}
