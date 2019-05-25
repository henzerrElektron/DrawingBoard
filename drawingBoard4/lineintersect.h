#ifndef LINEINTERSECT_H
#define LINEINTERSECT_H

#include <QObject>
#include <QPoint>
#include <QPointF>
#include <QVector>
class lineIntersect : public QObject
{
    Q_OBJECT
public:
    explicit lineIntersect(QObject *parent = nullptr);

    bool equalPoints(QPointF point1, QPointF point2);
    QPointF subtractPoints(QPointF point1, QPointF point2);
    double crossProduct(QPointF point1, QPointF point2);
    bool doLineSegmentsIntersect(QPointF p, QPointF p2, QPointF q, QPointF q2);
    bool allEqual(QVector<double> &vector);
    QPointF intersectionLine() const;
    QPointF addPoints(QPointF p1, QPointF p2);
    QPointF scaleItem(double scaleFactor,QPointF point);
    void setIntersectionLine(const QPointF &intersectionLine);

signals:

public slots:
private:
    QPointF m_intersectionLine;
};

#endif // LINEINTERSECT_H
