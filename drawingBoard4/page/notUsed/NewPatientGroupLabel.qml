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
import "./../../delegates/"
import "./../../models/"
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0

/*!
   \qmltype NewPatientDobTumbler
   \brief The tumbler that controls the year,month and date of DOB's

  This is used in NewPatientHeader and ReportDetailDateRange .
   \image tobeprovided.png

   \section1 Sample usage

   The usage of NewPatientDobTumbler is demonstrated below
   \qml
                    NewPatientDobTumbler{
                        id:pageSwitchButtons
                        recTextVisible: false
                        dateTumblerVisible:true
                        monthTumblerVisible: true
                        yearTumblerVisible: true
                        Component.onCompleted: {
                            setTumblerYear(0)
                            setTumblerDate(0)
                            setTumblerMonth(0)
                        }
                    }
   \endqml

*/

//Rectangle{
//    id:mainRec

    Label {
        id: label
        property bool isTabHeader: false
        //property ali name: value
        //text: qsTr("Label")
        leftPadding: 10//isTabHeader?85:10
        topPadding: 0
        horizontalAlignment: Text.AlignLeft
        verticalAlignment: Text.AlignVCenter
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        height: 50
        //font:OtherConstants.fontFamily
        font { family: OtherConstants.fontFamily; pixelSize: pixelSize; weight: Font.Bold; capitalization: Font.MixedCase }
        color: isTabHeader === true?StringConstants.barBackgroundColor:StringConstants.label_NewPatientLabelBgColor///StringConstants.label_NewPatientLabelBgColor//"white"
        background: Rectangle{
            id:labelRec
            color: isTabHeader === true?StringConstants.label_NewPatientLabelBgColor:StringConstants.barBackgroundColor//"black"//StringConstants.barBackgroundColor//
        }
    }

//}









/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:1;anchors_x:144;anchors_y:56}
}
 ##^##*/
