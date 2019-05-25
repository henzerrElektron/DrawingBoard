#ifndef PLOTDATAPOINT_H
#define PLOTDATAPOINT_H

#include <QObject>
#include <QPoint>
#include <QPointF>
#include <QVector>
#include <QRectF>
#include <QVariant>
#include <QVariantList>
#include <QVariantMap>
#include "lineintersect.h"
class plotDataPoint : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QVector<qreal> xPoint READ xPoint WRITE setxPoint NOTIFY xPointChanged)
    Q_PROPERTY(QVector<qreal> yPoint READ yPoint WRITE setyPoint NOTIFY yPointChanged)
    Q_PROPERTY(QPoint xyPoint READ xyPoint WRITE setxyPoint NOTIFY xyPointChanged)
    Q_PROPERTY(QPointF xyFPoint READ xyFPoint WRITE setxyFPoint NOTIFY xyFPointChanged)
    Q_PROPERTY(QRectF xyRect READ xyRect WRITE setxyRect NOTIFY xyRectChanged)
    Q_PROPERTY(QVariant xyPlotPoints READ xyPlotPoints WRITE setxyPlotPoints NOTIFY xyPlotPointsChanged)
    Q_PROPERTY(bool containsIntersection READ containsIntersection WRITE setcontainsIntersection NOTIFY containsIntersectionChanged)
   // Q_PROPERTY(QVariant trackPoints READ trackPoints WRITE setTrackPoints NOTIFY trackPointsChanged)
    Q_PROPERTY(QVariantList trackPointVec READ trackPointVec WRITE settrackPointVec NOTIFY trackPointVecChanged)
public:
    explicit plotDataPoint(QObject *parent = nullptr);
    QVector<qreal> xPoint() const;
    QVector<qreal> yPoint() const;
    QPoint xyPoint() const;
    QPointF xyFPoint() const;
    QRectF xyRect() const;
    QVariant xyPlotPoints() const;
    struct plotRecPoints{
        int Count;
        qreal xValue;
        qreal yValue;
        qreal prevXvalue;
        qreal prevYvalue;
        QPointF point1;
        QPointF point2;
        //QRectF xyRect;
    };
    //QVariant trackPoints() const;

    QVariantList trackPointVec() const;

    bool containsIntersection() const;

signals:
    void xPointChanged(QVector<qreal> xPoint);
    void yPointChanged(QVector<qreal> yPoint);
    void xyPointChanged(QPoint xyPoint);
    void xyFPointChanged(QPointF xyFPoint);
    void xyRectChanged(QRectF xyRect);
    void xyPlotPointsChanged(QVariant xyPlotPoints);
    //void trackPointsChanged(QVariant trackPoints);
    void trackPointVecChanged(QVariantList trackPointVec);
    void containsIntersectionChanged(bool containsIntersection);

public slots:
void setxPoint(QVector<qreal> xPoint);
void setyPoint(QVector<qreal> yPoint);
void setxyPoint(QPoint xyPoint);
void setxyFPoint(QPointF xyFPoint);
void setxyRect(QRectF xyRect);
void setxyPlotPoints(QVariant xyPlotPoints);
Q_INVOKABLE QPointF intersectionPoint(QPointF clickedLineStart,QPointF clickedLineEnd);
//void setTrackPoints(QVariant trackPoints);
void settrackPointVec(QVariantList trackPointVec);
void setcontainsIntersection(bool containsIntersection);

private:
QVector<qreal> m_xPoint;
QVector<qreal> m_yPoint;
QPoint m_xyPoint;
QPointF m_xyFPoint;
QRectF m_xyRect;
QVariant m_xyPlotPoints;
QVector<plotRecPoints> m_trackPoints;
QVariantList m_trackPointVec;
lineIntersect *m_l;
bool m_containsIntersection;
};

#endif // PLOTDATAPOINT_H
