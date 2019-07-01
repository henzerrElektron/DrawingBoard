import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Shapes 1.11
import QtQuick.Templates 2.5
import QtQuick.Layouts 1.3
import QtQuick.Extras 1.4
import QtQuick.Dialogs.qml 1.0
import QtQuick.Controls.Universal 2.0
import Qt.labs.calendar 1.0
import QtQuick.Controls.Material 2.0
import QtQuick.Controls 2.3
import Qt.labs.settings 1.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Shapes 1.11
import "."
import "./../../images/"
import "./../../imports/"
import ApplicationContstants 1.0

Label {
    id: label_lblPatientName
    property bool lblOrText: false
    onLblOrTextChanged: {console.log("The flag is"+lblOrText)}
    width: Constants.testPage_lblWidth
    height: Constants.testPage_lblHeight
    color: lblOrText ? "White":Constants.testPage_lblFontColor
    //font: Constants.fontFamily
    font.bold: true
    font.pixelSize:25// Constants.testPage_lblFontSize//25
    font.weight: Font.ExtraBold
    renderType: Text.QtRendering
    fontSizeMode: Text.HorizontalFit
    text: "text"
    verticalAlignment: Text.AlignVCenter
    horizontalAlignment: lblOrText ?Text.AlignHCenter:Text.AlignLeft
}
