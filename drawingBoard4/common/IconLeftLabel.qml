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
import ApplicationConstants 1.0
//import ApplicationIntegerConstants 1.0
//import ApplicationStringConstants 1.0
//import ApplicationOtherConstants 1.0
Rectangle{
    id:mainRec
    //width: getWidth()//sqTriangle.width+lblMpValue.width
    //height: getHeight()//sqTriangle.height+lblMpValue.height
    property int recOrCircleOrTri: 0//rec == 3//1 == circle //2 == Tri
    onRecOrCircleOrTriChanged: {
        
        if(recOrCircleOrTri === 1)
        {
            circle.visible = true
            square.visible = false
            sqTriangle.visible = false
        }
        if(recOrCircleOrTri === 2)
        {
            circle.visible = false
            square.visible = false
            sqTriangle.visible = true
        }
        if(recOrCircleOrTri === 3)
        {
            circle.visible = false
            square.visible = true
            sqTriangle.visible = false
        }
    }
    
    function getWidth(){
        
        
        if(recOrCircleOrTri === 1)
        {
            return circle.width+lblMpValue.width
        }
        if(recOrCircleOrTri === 2)
        {
            return sqTriangle.width+lblMpValue.width
        }
        if(recOrCircleOrTri === 3)
        {
            return square.width+lblMpValue.width
        }
    }
    function getHeight(){
        
        if(recOrCircleOrTri === 1)
        {
            return circle.height+lblMpValue.height
        }
        if(recOrCircleOrTri === 2)
        {
            return sqTriangle.height+lblMpValue.height
        }
        if(recOrCircleOrTri === 3)
        {
            return square.height+lblMpValue.height
        }
    }
    
    function getLabel(){
        if(recOrCircleOrTri === 1)
        {
            return StringConstants.lbl_estimatedMPValue
        }
        if(recOrCircleOrTri === 2)
        {
            return StringConstants.lbl_absoluteMPValue
        }
        if(recOrCircleOrTri === 3)
        {
            return StringConstants.lbl_graphAdjustedMPValue
        }
    }
    
    Rectangle{
        id:circle
        width: 20
        height: 20
        radius: width/2
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 10
        color: "purple"
    }
    Rectangle{
        id:square
        width: 20
        height: 20
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 10
        color: "blue"
    }
    
    Rectangle{
        id:sqTriangle
        width: 20
        height: 20
        x:0
        y:0
        
        anchors.verticalCenter:  parent.verticalCenter
        anchors.left: parent.left
        anchors.leftMargin: 5
        
        Shape{
            id:sqShape
            anchors.fill: parent
            rotation: 180
            visible: parent.visible
            ShapePath{
                id:shPath
                fillColor: "brown"
                strokeWidth: 1
                strokeColor: "brown"
                strokeStyle: ShapePath.SolidLine
                startX: 0; startY:0
                PathLine{x:sqTriangle.width;y:0}
                PathLine{x:sqTriangle.width/2;y:sqTriangle.height}
                PathLine{x:0;y:0}
                PathLine{x:sqTriangle.width;y:0}
            }
        }
        
    }
    Label{
        id:lblMpValue
        width: 175
        height: 10
        anchors.left: sqTriangle.right
        anchors.leftMargin: 10
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
        font: OtherConstants.fontFamily
        text: getLabel()
        verticalAlignment: Text.AlignBottom
        horizontalAlignment: Text.AlignHCenter
    }
}
