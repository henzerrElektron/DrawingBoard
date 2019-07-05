import QtQuick 2.12
import QtQuick.Controls 2.5
import ApplicationContstants 1.0
import "."
import "./../imports/ApplicationContstants/"
//Item {
ToolButton {
    id: button
    implicitWidth:  100
    implicitHeight:  100
    //property alias symbol: button.text
    
    // This can be set to either Fonts.icons or Fonts.brands
    // to switch between the two icon sets.
    //font.family: Constants.icons
    font: {
        family:Constants.icons
        weight: Font.Regular
        color: "#ffffff"
    }
    onFontChanged: {
        console.log("font loaded")
    }

    // This controls the style of the regular icons which is
    // used. The default value (Regular) will map to the regular
    // icon set. Use either Font.Bold or Font.Light to switch
    // to the other styles.
    //font.weight: Font.Regular
}
