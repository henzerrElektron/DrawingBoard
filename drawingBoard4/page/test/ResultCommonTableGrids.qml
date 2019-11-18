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
//import QtQuick.Controls 1.4
import Qt.labs.settings 1.0
import QtQuick.Controls.Styles 1.4
import QtQuick.Shapes 1.11
import ApplicationConstants 1.0
import "./../../common/"
import "./../../tables/"

Rectangle{
    id:rectangle3
    color: StringConstants.testPage_backgroundColor
    anchors.fill: parent
    RowColTableGrid{
        id:row1
        anchors.fill: parent
        //minheaderHeight: true
        //searchRecVisibilty:false
        commonTableModel: theConfidenceModel
        //repeaterModel: 3//theModel
        //repeaterModel1:10
        //tableModel: theExistingPatientsModel
        //proxySoure: theModel
        //rowHeightMinValue:25
    }
    //    GridLayout {
    //        id: gridLayout
    //        rowSpacing: 0
    //        anchors.fill: parent
    //    }
}

//Rectangle{
//    id:rectangle2
//    color: StringConstants.testPage_backgroundColor//"transparent"
//    anchors.fill: parent
//    GridLayout {
//        id: gridLayout
//        rowSpacing: 0
//        anchors.fill: parent
//        rows:3
//        columns: 1
//        property double colMulti : gridLayout.width / gridLayout.columns
//        property double rowMulti : gridLayout.height / gridLayout.rows
//        function prefWidth(item){
//            return colMulti * item.Layout.columnSpan
//        }
//        function prefHeight(item){
//            return rowMulti * item.Layout.rowSpan
//        }
//        Rectangle{
//            id:rec1
//            color: "red"//"transparent"
//            //Layout.alignment: Qt.AlignLeft | Qt.AlignTop
//            Layout.row: 1
//            Layout.rowSpan: 1
//            Layout.column: 1
//            Layout.columnSpan: 1
//            Layout.fillHeight: true
//            Layout.fillWidth: true
//            //Layout.preferredWidth  : gridLayout.prefWidth(this)
//            //Layout.preferredHeight : gridLayout.prefHeight(this)
//            //height: 120
//            //Layout.maximumHeight: parent.height/3//row1.height<parent.height/4?row1.height:parent.height/4
//            //Layout.maximumHeight: parent.height/5+5//parent.height/5<105?parent.height/5:105//row1.height<parent.height/4?row1.height:parent.height/4
//            //Layout.preferredHeight: parent.height/5//row1.height<parent.height/4?row1.height:parent.height/4//parent.height/4
//            CommonTableGrid{
//                id:row1
//                anchors.fill: parent
//                minheaderHeight: true
//                searchRecVisibilty:false
//                commonTableModel: theModel
//                repeaterModel: 3//theModel
//                //tableModel: theExistingPatientsModel
//                proxySoure: theModel
//                //rowHeightMinValue:25
//            }
//        }
//        Rectangle{
//            id:rec2
//            color: "black"//"transparent"
//            //Layout.alignment: Qt.AlignLeft | Qt.AlignTop
//            Layout.row: 2
//            Layout.rowSpan: 1
//            Layout.column: 1
//            Layout.columnSpan: 1
//            Layout.fillHeight: true
//            Layout.fillWidth: true
//            //Layout.preferredWidth  : gridLayout.prefWidth(this)
//            //Layout.preferredHeight : gridLayout.prefHeight(this)
//            //anchors.top: rec1.bottom
//            //Layout.maximumHeight:parent.height/4//- parent.height/20//parent.height/3<250?parent.height/3:250
//            //Layout.maximumHeight: parent.height/3//row2.height<parent.height/3?row2.height:parent.height/3
//            //Layout.minimumHeight: parent.height/3//row2.height<parent.height/3?row2.height:parent.height/3
//            //Layout.preferredHeight: parent.height/3//row2.height<parent.height/3?row2.height:parent.height/3
//            CommonTableGrid{
//                id:row2
//                anchors.fill: parent
//                searchRecVisibilty:false
//                minheaderHeight: true
//                commonTableModel: theModel1
//                repeaterModel: 3//theModel1
//                //tableModel: theExistingPatientsModel
//                proxySoure: theModel1
//                rowHeightMinValue:40
//            }
//        }
//        Rectangle{
//            id:rec3
//            color: "blue"//"transparent"
//            //Layout.alignment: Qt.AlignLeft | Qt.AlignTop
//            Layout.row: 3
//            Layout.rowSpan: 1
//            Layout.column: 1
//            Layout.columnSpan: 1
//            Layout.fillHeight: true
//            Layout.fillWidth: true
//            //Layout.preferredWidth  : gridLayout.prefWidth(this)
//            //Layout.preferredHeight : gridLayout.prefHeight(this)
//            //anchors.top: rec2.bottom
//            //Layout.maximumHeight:parent.height/3
//            //anchors.bottom: parent.bottom
//            //anchors.bottomMargin: 15
//            //Layout.maximumHeight: //row3.height<parent.height/3?row3.height:parent.height/3
//            //Layout.minimumHeight: //row3.height<parent.height/3?row3.height:parent.height/3
//            //Layout.preferredHeight: //row3.height<parent.height/3?row3.height:parent.height/3
//            CommonTableGrid{
//                id:row3
//                anchors.fill: parent
//                searchRecVisibilty:false
//                minheaderHeight: true
//                commonTableModel: theModel2
//                repeaterModel: 3//theModel2
//                //tableModel: theExistingPatientsModel
//                proxySoure: theModel2
//                rowHeightMinValue:40
//            }
//        }
//    }


//}













/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
