import QtQuick 2.0
import QtQuick.Controls 2.12
import "."
import ApplicationConstants 1.0
Label{
    id:label
    objectName: "labelItems"
    //Package.name: filterName//"PatientDetailedModel"
    text: actionName
    verticalAlignment: Text.AlignVCenter
     font { family: OtherConstants.fontFamily; pixelSize: pixelSize; weight: Font.Bold; capitalization: Font.MixedCase }


   // width: 100
   // height: 100
    //implicitHeight: 100
    //implicitWidth: 150
    //height: GridView.view.cellHeight
    //width: GridView.view.cellWidth
}