import QtQuick 2.0
import QtQuick.Controls 2.12
import "."
import ApplicationConstants 1.0
Label{
    id:label
    objectName: "labelItems"
    //Package.name: filterName//"PatientDetailedModel"
    text: actionName
    font:OtherConstants.fontFamily
    color: "black"
    width: 100
    height: 100
    //implicitHeight: 100
    //implicitWidth: 150
    //height: GridView.view.cellHeight
    //width: GridView.view.cellWidth
}
