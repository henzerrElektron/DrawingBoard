import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Shapes 1.11
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.3
import QtQuick.Shapes 1.11
import ApplicationConstants 1.0
/*!
   \qmltype CommonBorder
   \brief This provides a custom border to items.It allows to have different border widths.

  This is used in the ReportTabButton,NewPatientTabs,ReportDateRangeSlider,ReportPatientResultTabs,ReporTtBS,TestPlotTabs,TestTabs and CommonTableGrid.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of CommonBorder is demonstrated below
   \qml
        CommonBorder{
                    customBorder:  false
                    lBorderWidth: 2
                    rBorderWidth: 2
                    tBorderWidth: 2
                    bBorderWidth: 0
                    borderColor: StringConstants.actionBtnBackgroundColor
                }
   \endqml

*/
//Rectangle{
//    id:someRec
//    width: 500
//    height: 500
Rectangle{
    id:commonBorderRec
    property bool customBorder: false
    property int lBorderWidth: 1
    property int rBorderWidth: 1
    property int tBorderWidth: 1
    property int bBorderWidth: 1
    property int  allBorderWidth: 1
    property string borderColor : "black"
    property alias bodyColor: commonBorderRec.color
    color: borderColor
    z : -1
    anchors{
        left: parent.left
        right: parent.right
        top: parent.top
        bottom: parent.bottom
        topMargin: customBorder ? -allBorderWidth : -tBorderWidth
        bottomMargin: customBorder ?-allBorderWidth : -bBorderWidth
        leftMargin: customBorder ? - allBorderWidth : -lBorderWidth
        rightMargin:  customBorder ? - allBorderWidth : -rBorderWidth
    }

}
//}
