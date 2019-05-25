#include "plotdatapoint.h"
#include <QDebug>
#include "lineintersect.h"
#include <QVariant>
plotDataPoint::plotDataPoint(QObject *parent) : QObject(parent)
{
    lineIntersect *m_l = new lineIntersect(this);
    //bool value = m_l->doLineSegmentsIntersect(QPointF(20,20),QPointF(100,20),QPointF(50,10),QPointF(50,50));
    //qDebug()<<"The value of the flag is"<<value<<"The intersect is at"<<m_l->intersectionLine();

    int i = 0;
    int max = 10;
    double preX  =0;
    double prevY = 0;
    plotRecPoints P;
    while ( i <= 7) {

        P.Count = i;
        if(i == 1){P.xValue = 4.78 ;P.yValue =26.7975;}
        if(i == 2){P.xValue= 4.98 ;P.yValue =23.62;}
        if(i == 3){P.xValue = 5.18;P.yValue = 21.655;}
        if(i == 4){P.xValue= 5.38; P.yValue =22.86;}
        if(i == 5){P.xValue =5.58; P.yValue =24.21;}
        if(i == 6){P.xValue =5.78; P.yValue =26.105;}
        //       if(i == 7){P.xValue =4.78; P.yValue =26.7975;}
        //        if(i == 8){P.xValue =4.98; P.yValue =23.62;}
        //        if(i == 9){P.xValue =5.18; P.yValue =21.655;}
        //       if(i == 10){P.xValue =5.38; P.yValue =22.86;}
        //       if(i == 11){P.xValue=5.58; P.yValue =24.21;}
        //       if(i == 12){P.xValue=5.78; P.yValue =26.105;}
        //        if(i == 13){P.xValue=4.78; P.yValue =26.7975;}
        //        if(i == 14){P.xValue=4.98; P.yValue =23.62;}
        //        if(i == 15){P.xValue=5.18; P.yValue =21.655;}
        //        if(i == 16){P.xValue= 5.38; P.yValue =22.86;}
        //        if(i == 17){P.xValue= 5.58; P.yValue =24.21;}
        if(i == 7){P.xValue= 5.78; P.yValue =26.105;}
        if(i == 0)
        {
            {P.xValue = 4.78 ;P.yValue =26.7975;}
            P.point1 = QPointF(P.xValue,P.yValue);
            P.prevXvalue =P.xValue;//m_xPoint.at(i);
            P.prevYvalue = P.yValue;//m_yPoint.at(i);
        }
        else {
            P.point1 = QPointF(preX,prevY);
            P.prevXvalue =preX;//m_xPoint.at(i);
            P.prevYvalue = prevY;//m_yPoint.at(i);
        }
        P.point2 = QPointF(P.xValue,P.yValue);
        //        //P->point1 = QPointF(m_xPoint.at(i -1),m_yPoint.at(i -1));
        //        P->point2 = QPointF(m_xPoint.at(i),m_yPoint.at(i));
        //        P.xyRect = QRectF(P.point1.x(),P.point1.y(),5,5);
        qDebug()<<"The count and other values are"<<P.Count<<P.xValue<<P.yValue<<P.point1<<P.point2<<P.prevXvalue<<P.prevYvalue;
        m_trackPoints.append(P);
        preX = P.xValue;
        prevY = P.yValue;

        i++;
    }
    i = 0;
    QVariantList itemsList;
    for(const plotRecPoints &P : m_trackPoints)
    {
        QVariantMap itemMap;
        itemMap.insert("Count",P.Count);
        itemMap.insert("xValue",P.xValue);
        itemMap.insert("yValue",P.yValue);
        itemMap.insert("prevXvalue",P.prevXvalue);
        itemMap.insert("PrevYvalue",P.prevYvalue);
        itemMap.insert("xyPoint1",P.point1);
        itemMap.insert("xyPoint2",P.point2);
        //itemMap.insert("xyRect",P.xyRect);
        //itemMap.insert("xyLine",P.xyLine);
        itemsList.append(itemMap);
        qDebug()<<P.Count<<P.xValue<<P.yValue;
    }
    m_trackPointVec.append(itemsList);
    intersectionPoint(QPointF(0,0),QPointF(0,0));
}

QVector<qreal> plotDataPoint::xPoint() const
{
    return m_xPoint;
}

QVector<qreal> plotDataPoint::yPoint() const
{
    return m_yPoint;
}

QPoint plotDataPoint::xyPoint() const
{
    return m_xyPoint;
}

QPointF plotDataPoint::xyFPoint() const
{
    return m_xyFPoint;
}

QRectF plotDataPoint::xyRect() const
{
    return m_xyRect;
}

QVariant plotDataPoint::xyPlotPoints() const
{
    QVariantList itemsList;
    for(const plotRecPoints &P : m_trackPoints)
    {
        QVariantMap itemMap;
        itemMap.insert("Count",P.Count);
        itemMap.insert("xValue",P.xValue);
        itemMap.insert("yValue",P.yValue);
        itemMap.insert("prevXvalue",P.prevXvalue);
        itemMap.insert("PrevYvalue",P.prevYvalue);
        itemMap.insert("xyPoint1",P.point1);
        itemMap.insert("xyPoint2",P.point2);
        //itemMap.insert("xyRect",P.xyRect);
        itemsList.append(itemMap);
    }
    return QVariant::fromValue(itemsList);
    //return m_xyPlotPoints;
}

//QVariant plotDataPoint::trackPoints() const
//{
//    QVariantList itemsList;
//    for(const plotRecPoints &P : m_trackPoints)
//    {
//        QVariantMap itemMap;
//        itemMap.insert("Count",P.Count);
//        itemMap.insert("x",P.x);
//        itemMap.insert("y",P.y);
//        itemMap.insert("xyRect",P.xyRect);
//        //itemMap.insert("xyLine",P.xyLine);
//        itemsList.append(itemMap);
//    }
//    return QVariant::fromValue(itemsList);
//}

QVariantList plotDataPoint::trackPointVec() const
{

    return m_trackPointVec;
}

bool plotDataPoint::containsIntersection() const
{
    return m_containsIntersection;
}

void plotDataPoint::setxPoint(QVector<qreal> xPoint)
{
    if (m_xPoint == xPoint)
        return;

    m_xPoint = xPoint;
    emit xPointChanged(m_xPoint);
}

void plotDataPoint::setyPoint(QVector<qreal> yPoint)
{
    if (m_yPoint == yPoint)
        return;

    m_yPoint = yPoint;
    emit yPointChanged(m_yPoint);
}

void plotDataPoint::setxyPoint(QPoint xyPoint)
{
    if (m_xyPoint == xyPoint)
        return;

    m_xyPoint = xyPoint;
    emit xyPointChanged(m_xyPoint);
}

void plotDataPoint::setxyFPoint(QPointF xyFPoint)
{
    if (m_xyFPoint == xyFPoint)
        return;

    m_xyFPoint = xyFPoint;
    emit xyFPointChanged(m_xyFPoint);
}

void plotDataPoint::setxyRect(QRectF xyRect)
{
    if (m_xyRect == xyRect)
        return;

    m_xyRect = xyRect;
    emit xyRectChanged(m_xyRect);
}

void plotDataPoint::setxyPlotPoints(QVariant xyPlotPoints)
{
    if (m_xyPlotPoints == xyPlotPoints)
        return;

    m_xyPlotPoints = xyPlotPoints;
    emit xyPlotPointsChanged(m_xyPlotPoints);
}

QPointF plotDataPoint::intersectionPoint(QPointF clickedLineStart, QPointF clickedLineEnd)
{
    //    QVectorIterator<plotRecPoints> vecIter(m_trackPoints);

    //    while (vecIter.hasNext()) {
    //        vecIter.next();

    //    }
    qDebug()<<"The clicked locations are"<<clickedLineStart<<clickedLineEnd;
    QVector<QPointF> line1StartPointVec;
    QVector<QPointF> line1EndPointVec;
    QPointF line1StartPoint = QPointF(0.0,0.0);
    QPointF line1EndPoint= QPointF(0.0,0.0);
    //    for(QVariantList::Iterator i = m_trackPointVec.begin();i != m_trackPointVec.end();i++)
    //    {
    //        QVariantMap itemMap = i->toMap();

    //        for(QVariantMap::iterator j = itemMap.begin();j != itemMap.end();j++)
    //        {
    //            if(j.key() == "xyPoint1")
    //            {
    //                line1StartPoint = j.value().toPointF();
    //                line1StartPointVec.push_back(line1StartPoint);
    //                qDebug()<<"The stored points are"<<j.value();
    //            }
    //            if(j.key() == "xyPoint2")
    //            {
    //                line1EndPoint = j.value().toPointF();
    //                line1EndPointVec.push_back(line1EndPoint);
    //                qDebug()<<"The stored points are"<<j.value();
    //            }
    //            if((line1StartPoint != QPointF(0.0,0.0))||
    //                    (line1EndPoint != QPointF(0.0,0.0))||
    //                    (clickedLineStart != QPointF(0.0,0.0))||
    //                    (clickedLineEnd != QPointF(0.0,0.0)))
    //            {
    //                bool value = m_l->doLineSegmentsIntersect(line1StartPoint,line1EndPoint,clickedLineStart,clickedLineEnd);
    //                qDebug()<<"The value of the flag is"<<value<<"The intersect is at"<<m_l->intersectionLine();
    //            }
    //        }
    //    }

    for(const plotRecPoints &P : m_trackPoints)
    {
        if(P.Count <= 7)
        {
            qDebug()<<"The values of the flag are"<<P.point1<<P.point2<<clickedLineStart<<clickedLineEnd;
            bool value = m_l->doLineSegmentsIntersect(P.point1,P.point2,clickedLineStart,clickedLineEnd);
            setcontainsIntersection(value);
            if(value == true)
            {
                qDebug()<<"The value of the flag is"<<value<<"The intersect is at"<<m_l->intersectionLine();
                return m_l->intersectionLine();
            }
            else {
                qDebug()<<"There is no intersection"<<P.point1<<P.point2<<clickedLineStart<<clickedLineEnd;
                //qDebug()<<"The value of the flag is"<<value;//<<"The intersect is at"<<m_l->intersectionLine();
            }
        }


    }
    setcontainsIntersection(false);
    return QPointF(0.0,0.0);
}

//void plotDataPoint::setTrackPoints(QVariant trackPoints)
//{
//    if (m_trackPoints == trackPoints)
//        return;

//    m_trackPoints = trackPoints;
//    emit trackPointsChanged(m_trackPoints);
//}

void plotDataPoint::settrackPointVec(QVariantList trackPointVec)
{
    if (m_trackPointVec == trackPointVec)
        return;

    m_trackPointVec = trackPointVec;
    emit trackPointVecChanged(m_trackPointVec);
}

void plotDataPoint::setcontainsIntersection(bool containsIntersection)
{
    if (m_containsIntersection == containsIntersection)
        return;

    m_containsIntersection = containsIntersection;
    emit containsIntersectionChanged(m_containsIntersection);
}
