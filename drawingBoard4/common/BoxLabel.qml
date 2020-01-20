import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Shapes 1.11
import QtQuick.Layouts 1.3
import QtQuick.Controls 2.3
import QtQuick.Shapes 1.11
import ApplicationConstants 1.0
/*!
   \qmltype BoxLabel
   \brief This holds the label in the Test page grid.

  This is used in the XYReportColFooter.
   \image tobeprovided.png

   \section1 Sample usage

   The usage of BoxLabel is demonstrated below
   \qml
            BoxLabel{
                id:estimateBox
                recOrCircleOrTri:3
                anchors.fill:parent
            }
   \endqml

*/
Rectangle{
    id:mainRec
    height: 20
    width: 20+lblMpValue.width
    anchors.fill: parent
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
    function getRight()
    {
        if(recOrCircleOrTri === 1)
        {
            return 25//square.right//StringConstants.lbl_estimatedMPValue
        }
        if(recOrCircleOrTri === 2)
        {
            return 25//circle.right//StringConstants.lbl_absoluteMPValue
        }
        if(recOrCircleOrTri === 3)
        {
            return 50//sqShape.right//StringConstants.lbl_graphAdjustedMPValue
        }
    }

    Rectangle{
        id:circle
        width: 20
        height: 20
        radius: width/2
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        //anchors.leftMargin: 10
        color: "purple"
    }
    Rectangle{
        id:square
        width: 20
        height: 20
        anchors.verticalCenter: parent.verticalCenter
        anchors.left: parent.left
        //anchors.leftMargin: 10
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
        //anchors.leftMargin: 5

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
        width: 125
        height: 10
        //anchors.left: getRight()
        //anchors.leftMargin: 30
        //anchors.leftMargin: 10
        //anchors.right: parent.right
        //anchors.top: parent.top
        //anchors.topMargin: 20
        anchors.left: parent.left
        anchors.leftMargin: getRight()
        anchors.verticalCenter: parent.verticalCenter
         font { family: OtherConstants.fontFamily; pixelSize: pixelSize; weight: Font.Bold; capitalization: Font.MixedCase }
        text: getLabel()
        padding: -5
        verticalAlignment: Text.AlignTop
        horizontalAlignment: Text.AlignHCenter
    }
}

