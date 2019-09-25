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
import "./../../common/"
import "./../newPatient/"
import "./../../tables/"
import TestPageSupplementationModel 0.1
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
Page{
    id:supplementTabPage
    //    Rectangle{
    //        id:rectangle
    //        anchors.left: parent.left
    //        anchors.right: parent.right
    //        color: "transparent"
    //        height: 50
    //        Label{
    //            id:leftLabel
    //            text: "Patient Supplement History"
    //            anchors.left: parent.left
    //            anchors.leftMargin: 0
    //        }


    //        IconOnlyButtons{
    //            id:addSupplement
    //            anchors.right:rectangle.right
    //            anchors.leftMargin: -100
    //            width: 50
    //            height: 50
    //            icon.name:   "add_supplement"
    //            icon.source:   "qrc:/images/add_supplement.png"
    //            icon.color:  "transparent"
    //        }

    //        //        IconOnlyButtons {
    //        //            id: iconOnlyButtons
    //        //        }

    //    }
    Rectangle
    {
        id:mainRec
        anchors.fill: parent
        GridLayout
        {
            id:mainGrid
            anchors.fill: parent
            rows: 2
            Rectangle{
                id:subRec1
                Layout.row: 1
                Layout.rowSpan: 1
                Layout.alignment: Qt.AlignTop
                Layout.minimumHeight: 50
                Layout.maximumHeight: 50
                //Layout.fillHeight: true
                Layout.fillWidth: true
                RiskFactorHeaderDelegate{
                    id: headerDelegate1
                    switchMetricsVisible:false
                    addSupplementVisible:true
                    riskFactorLabel:StringConstants.lbl_supplementHistory
                    anchors.fill: parent
                }
            }


            Rectangle{
                id:rectangle1
                Layout.row: 2
                Layout.rowSpan: 1
                border.width: 1
                border.color: "black"
                anchors.top: subRec1.bottom
                Layout.fillHeight: true
                Layout.fillWidth: true

                CommonTableGrid{
                    id:curTestTabs1
                    anchors.fill: parent
                    Layout.fillHeight: true
                    Layout.fillWidth: true
                    repeaterModel: theSupplementModel
                    searchRecVisibilty:false
                    //tableModel: theExistingPatientsModel
                    proxySoure: theSupplementModel

                }
                //anchors.left: parent.left
                //anchors.bottom: parent.bottom
                // anchors.right: parent.right
 //               TestPageSupplementTableGrid{
 //                   id:table4
                    //width: parent.width//500//parent.width
                    //height: theSupplementModel.rowCount(table4)*120
                    //contentHeight: theSupplementModel.rowCount(table4)*100
                    //height: parent.height
 //                   anchors.fill: parent
 //                   onWidthChanged: forceLayout()
//                    columnWidthProvider:
//                        function changeTableWidth(column)
//                        {
//                            console.log("The values are "+parent.width,columns)
//                            return ((parent.width/columns))
//                        }

//                    model: theSupplementModel
//                }
            }
        }
    }
}

/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
