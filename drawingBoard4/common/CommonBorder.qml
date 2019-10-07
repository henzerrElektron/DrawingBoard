import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Shapes 1.11
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.3
import QtQuick.Shapes 1.11
import ApplicationConstants 1.0


Rectangle{
    property bool customBorder: true
    property int lBorderWidth: 1
    property int rBorderWidth: 1
    property int tBorderWidth: 1
    property int bBorderWidth: 1
    property int  allBorderWidth: 1
    property string borderColor : "white"
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