import QtQuick 2.0
import QtQuick.Controls 2.12
import "."
import "./../common/"
import "./../validators/"
import "./../page/newPatient/"
Rectangle{
    id:mainGridLayout
    //anchors.fill: parent
    property alias labelText: label2.text
    property alias readText: label.readOnly
    //width: col.width
    //height: col.height
    Column{
        id:col
        anchors.left: parent.left
        anchors.right: parent.right
        LabelDelegate{
            id:label2
            //Package.name: filterName//"PatientDetailedModel"
            text: actionName
            // color: "black"
            //height: GridView.view.cellHeight/2 - 20
            //width: GridView.view.cellWidth
            //height: 50//parent.height/4
            //width: 75//parent.width/2
            //anchors.top: parent.top
           // anchors.horizontalCenter: parent.horizontalCenter
            font { family: OtherConstants.fontFamily; pixelSize: 15; weight: Font.Bold; capitalization: Font.MixedCase }
            //font.pixelSize:25//index%2 === 0? 25:15
            color: StringConstants.barBorderColor//testPage_lblFontColor//index%2 === 0?StringConstants.testPage_lblFontColor:StringConstants.barBorderColor
            onTextChanged: {
                console.log("The value of the text is"+text+actionName)
            }
        }

        Row{
            id:row
            anchors.top: label2.bottom
            anchors.left: parent.left
            anchors.right: parent.right
            TextDelegate{
                id:label
                //anchors.top: label2.bottom
                anchors.left: parent.left
                height: parent.height - label2.height
                width: 100
                //height: GridView.view.cellHeight/2 - 20
                //width: readonlyItem?75:350//GridView.view.cellWidth * 2
                //readOnly: readonlyItem
                font { family: OtherConstants.fontFamily; pixelSize: 15; weight: Font.Bold; capitalization: Font.MixedCase }
                // color: StringConstants.barBorderColor
                background: Rectangle {
                    //implicitWidth: 200
                    //implicitHeight: 40
                    color: StringConstants.barBackgroundColor//control.enabled ? "transparent" : "#353637"
                    border.color: StringConstants.readonlyColor//control.enabled ? "#21be2b" : "transparent"
                }
                onTextChanged: {
                    console.log("The value of the text is"+text)
                }
            }
            NewPatientDobTumbler{
                id:pageSwitchButtons
                recTextVisible: false
                dateTumblerVisible:false
                monthTumblerVisible: false
                yearTumblerVisible: false
                height: parent.height - label2.height
                width: parent.width - label.width
                lblText: ""
                dateHeight: 50
                monthHeight: 50
                yearHeight: 50
                anchors.left: label.right
                anchors.right: parent.right
                anchors.verticalCenter: label.verticalCenter
                //anchors.top: label2.bottom
                //anchors.fill: parent
                // width: parent.width/2
                // height: parent.height/2
                // anchors.top: parent.top
                //  anchors.bottom: parent.bottom
                // anchors.right: parent.right
                // anchors.horizontalCenter: parent.horizontalCenter
                /// anchors.verticalCenter: parent.verticalCenter
                Component.onCompleted: {
                    setTumblerYear(0)//IntegerConstants.dobStartDate
                    setTumblerDate(0)
                    setTumblerMonth(0)
                }
            }//TestPageSwitchButtons

        }
    }
}
