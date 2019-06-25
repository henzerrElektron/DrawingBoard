#include "lineintersect.h"
#include <QDebug>
lineIntersect::lineIntersect(QObject *parent) : QObject(parent)
{

}

bool lineIntersect::doLineSegmentsIntersect(QPointF p,QPointF p2,QPointF q,QPointF q2) {
    qDebug()<<"The values are"<<p<<p2<<q<<q2;
    QPointF r = subtractPoints(p2, p);//r(80,0)
    qDebug()<<"The point r is"<<r;
    QPointF s = subtractPoints(q2, q);//(0,40)
    qDebug()<<"The point s is"<<s;
    QPointF qsubp = subtractPoints(q, p);
    qDebug()<<"The point qsubp is"<<qsubp;
    double uNumerator = crossProduct(qsubp, r);
    qDebug()<<"The unumerator crossproduct qpR is"<<uNumerator;
    double denominator = crossProduct(r, s);
    qDebug()<<"The denominator crossproduct rs is"<<denominator;
    double secNumerator = crossProduct(qsubp, s);
    qDebug()<<"The unumerator crossproduct qps is"<<secNumerator;

    if (qRound(uNumerator) == 0 && qRound(denominator) == 0) {
        // They are coLlinear

        // Do they touch? (Are any of the points equal?)
        if (equalPoints(p, q) || equalPoints(p, q2) || equalPoints(p2, q) || equalPoints(p2, q2)) {
            return true;
        }
        // Do they overlap? (Are all the point differences in either direction the same sign)
        QVector<double> vect,vect1;
        vect.push_back(q.x() - p.x());
        vect.push_back(q.x() - p2.x());
        vect.push_back(q2.x() - p.x());
        vect.push_back(q2.x() - p2.x());
        //allEqual(vect);
        vect1.push_back(q.y() - p.y());
        vect1.push_back(q.y() - p2.y());
        vect1.push_back(q2.y() - p.y());
        vect1.push_back(q2.y() - p2.y());
        //allEqual(vect1);
        return  (!allEqual(vect))|| (!allEqual(vect1));
        //        return !allEqual(
        //                    (q.x() - p.x()),
        //                    (q.x() - p2.x()),
        //                    (q2.x() - p.x()),
        //                    (q2.x() - p2.x())) ||
        //                !allEqual(
        //                    (q.y() - p.y()),
        //                    (q.y() - p2.y()),
        //                    (q2.y() - p.y() ),
        //                    (q2.y() - p2.y()));
    }


    if (qRound(denominator) == 0) {
        // lines are paralell
        return false;
    }


    double u = uNumerator / denominator;
    qDebug()<<"The value of u is"<<u;
    double t = secNumerator / denominator;
    qDebug()<<"The value of t is"<<t;
    QPointF pointPTR = scaleItem(t,r);
    QPointF pointQUS = scaleItem(u,s);
    QPointF pointP2P1 = addPoints(p,pointPTR);
    QPointF pointQ2Q1 = addPoints(q,pointQUS);
    bool checkPTRQUS = equalPoints(pointP2P1,pointQ2Q1);
    if(checkPTRQUS)
    {
        m_intersectionLine = pointP2P1;
       // m_intersectionLine.setX(u);
       // m_intersectionLine.setY(t);
    }

    return (t >= 0) && (t <= 1) && (u >= 0) && (u <= 1);
}

bool lineIntersect::allEqual(QVector<double> &vector)
{
    double firstValue = vector.first();
    QVectorIterator<double> vecIter(vector);
    while (vecIter.hasNext()) {
        double curVal =   vecIter.next();
        if(curVal< 0)
        {
            if(qRound(curVal) != qRound(firstValue))
            {
                return false;
            }
        }

    }
    return  true;
}

QPointF lineIntersect::intersectionLine() const
{
    return m_intersectionLine;
}

QPointF lineIntersect::addPoints(QPointF p1, QPointF p2)
{
    QPointF addPoint = QPointF(p1.x()+p2.x(),p1.y()+p2.y());
    return  addPoint;
}

QPointF lineIntersect::scaleItem(double scaleFactor, QPointF point)
{
    QPointF p = QPointF(point.x() * scaleFactor,point.y() * scaleFactor);
    return  p;
}

void lineIntersect::setIntersectionLine(const QPointF &intersectionLine)
{
    m_intersectionLine = intersectionLine;
}


double lineIntersect::crossProduct(QPointF point1,QPointF point2) {
    return point1.x() * point2.y() - point1.y() * point2.x();
}



QPointF  lineIntersect::subtractPoints(QPointF point1,QPointF point2) {
    QPointF result;
    qDebug()<<"The value to be seperated are"<<point1<<point2;
    result.setX( point1.x() - point2.x());
    result.setY( point1.y() - point2.y());
    return result;
}



bool lineIntersect::equalPoints(QPointF point1,QPointF point2)
{

    if((qRound(point1.x()) == qRound(point2.x())) && (qRound(point1.y()) == qRound(point2.y())))
    {
        return true;
    }
    else
    {
        return false;
    }
}



