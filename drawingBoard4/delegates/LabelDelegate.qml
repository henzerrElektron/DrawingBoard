import QtQuick 2.0
import QtQuick.Controls 2.12
import "."
import ApplicationConstants 1.0
/*!
   \qmltype LabelDelegate
   \brief This component is used to display the main Buttons in the Home page.

  This is used mainly in NewPatientContactDetailGroup and NewPatientPersonalDetailEntryGroup,NewPatientPersonalDetailGroup and DetailLabelGroup.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of LabelDelegate is demonstrated below
   \qml
            LabelDelegate{
            id:label
            text: actionText
            color: "black"
            font:OtherConstants.fontFamily
            onTextChanged: {
                console.log("The value of the text is"+text+actionName)
            }
        }
   \endqml

*/
Label{
    id:label
    property int curPixelSize: 12
    objectName: "labelItems"
    //Package.name: filterName//"PatientDetailedModel"
    text: actionName
    verticalAlignment: Text.AlignVCenter
     font { family: OtherConstants.fontFamily; pixelSize: curPixelSize; weight: Font.Bold; capitalization: Font.MixedCase }


   // width: 100
   // height: 100
    //implicitHeight: 100
    //implicitWidth: 150
    //height: GridView.view.cellHeight
    //width: GridView.view.cellWidth
}
