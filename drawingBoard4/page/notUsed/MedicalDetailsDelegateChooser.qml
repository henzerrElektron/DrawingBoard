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
DelegateChooser {
    id: delegateChooser
    DelegateChoice{
        roleValue: "comboItem"
        //Package.name: filterName
        objectName: "comboItemDelegateChoice"
        //            Label{
        //                id:rightFittedOperator
        //                Package.name: filterName
        //                text: actionText
        //            }
        Rectangle{
            id:recValeu
            objectName: "comboItemRec"
            anchors.fill: parent
            //Package.name: filterName
            //height: GridView.view.cellHeight
            //width: GridView.view.cellWidth
            //border.width: 1
            // border.color:  StringConstants.borderColorBlack//StringConstants.barBackgroundColor
            //color: "yellow"
            color: StringConstants.color_gbTransparent
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
                firstSwitchVisible: hasKnownSwitch
                secondSwitchVisible:hasYesNoSwitch
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
    
    DelegateChoice{
        roleValue: "textItem"
        //Package.name: filterName
        objectName: "TextItemDelegateChoice"
        //Package{
        Rectangle{
            id:notesTabTec
            anchors.fill: parent
            // Package.name: filterName
            //height: GridView.view.cellHeight
            //width: GridView.view.cellWidth
            objectName: "TextItemDelegateRec"
            //anchors.fill: parent
            Rectangle{
                id:rectangle
                anchors.left: parent.left
                anchors.right: parent.right
                color: "transparent"
                height: 50
                border.color: StringConstants.actionBtnBorderColor
                border.width: 2
                //NewPatientGroupLabel{
                GroupLabel{
                    id:leftLabel
                    text: StringConstants.lbl_npNotes
                    anchors.fill: parent
                    anchors.leftMargin: 10
                    anchors.rightMargin: 10
                    //anchors.centerIn: parent
                }
            }
            Rectangle{
                id:mainRec
                //anchors.fill: parent
                anchors.left: parent.left
                anchors.right: parent.right
                anchors.top: rectangle.bottom
                anchors.bottom: parent.bottom
                //color: StringConstants.actionBtnBackgroundColor
                border.color: StringConstants.actionBtnBorderColor
                border.width: 2
                
                TextEdit {
                    id: textEdit
                    anchors.top:  parent.top//rectangle.bottom
                    anchors.topMargin: 10
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.right: parent.right
                    anchors.rightMargin: 10
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 10
                    text: qsTr("Please enter the text here....")
                    textFormat: Text.AutoText
                    //canRedo: true
                    //canUndo: true
                    //canPaste: true
                    font.pixelSize: 12
                    //color: "white"
                }
            }
            Component.objectName: {
                console.log("I am completed")
            }
        }
        
        //   }
    }
}
