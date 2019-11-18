//#ifndef TESTRESULTDATAMODEL_H
//#define TESTRESULTDATAMODEL_H

//#include <QObject>

//class TestResultDataModel
//{
//public:
//    TestResultDataModel();
//};

//#endif // TESTRESULTDATAMODEL_H
#ifndef TESTRESULTDATAMODEL_H
#define TESTRESULTDATAMODEL_H
#include <QObject>
#include <QAbstractListModel>
#include <QAbstractTableModel>
class ResultData{
public:
    QVariant centralValue() const;
    void setCentralValue(const QVariant &centralValue);

    QVariant peripheralValue() const;
    void setPeripheralValue(const QVariant &peripheralValue);

    QVariant estimatedValue() const;
    void setEstimatedValue(const QVariant &estimatedValue);

    QVariant absoluteValue() const;
    void setAbsoluteValue(const QVariant &absoluteValue);

    QVariant graphAdjustedValue() const;
    void setGraphAdjustedValue(const QVariant &graphAdjustedValue);

    QVariant centralSensitivity() const;
    void setCentralSensitivity(const QVariant &centralSensitivity);

    QVariant centralMinima() const;
    void setCentralMinima(const QVariant &centralMinima);

    QVariant peripheralSensitivity() const;
    void setPeripheralSensitivity(const QVariant &peripheralSensitivity);

    QVariant peripheralMinima() const;
    void setPeripheralMinima(const QVariant &peripheralMinima);

    QString title() const;
    void setTitle(const QString &title);
    ResultData(const QVariant &centralValue,
               const QVariant &peripheralValue,
               const QVariant &estimatedValue,
               const QVariant &absoluteValue,
               const QVariant &graphAdjustedValue,
               const QVariant &centralSensitivity,
               const QVariant &centralMinima,
               const QVariant &peripheralSensitivity,
               const QVariant &peripheralMinima,
               const QString &title);

private:
    QVariant m_centralValue;
    QVariant m_peripheralValue;
    QVariant m_estimatedValue;
    QVariant m_absoluteValue;
    QVariant m_graphAdjustedValue;
    QVariant m_centralSensitivity;
    QVariant m_centralMinima;
    QVariant m_peripheralSensitivity;
    QVariant m_peripheralMinima;
    QString m_title;
    int m_index;
};
class TestResultDataModel:public QAbstractTableModel
{
    Q_OBJECT
    Q_ENUMS(TestResultDataRoles)
public:
    enum TestResultDataRoles{
        TitleRole = Qt::UserRole+1,
        LeftRole,
        RightRole,
        HeadingRole,
        AcceptRejectRole
    };
    explicit TestResultDataModel(QObject *parent = 0);
    explicit TestResultDataModel(QList<ResultData> results,QObject *parent = 0);
    void addResultData(const ResultData &result);
    int rowCount(const QModelIndex & parent = QModelIndex()) const override;
    int columnCount(const QModelIndex &parent = QModelIndex()) const override;
    QVariant data(const QModelIndex & index, int role = Qt::DisplayRole) const override;
    QVariant headerData(int section, Qt::Orientation orientation, int role) const override;
    Qt::ItemFlags flags(const QModelIndex &index) const override;
    bool insertRows(int position, int rows, const QModelIndex &index=QModelIndex()) override;
    bool removeRows(int position, int rows, const QModelIndex &index=QModelIndex()) override;
    bool setData(const QModelIndex &index, const QVariant &value, int role=Qt::EditRole) override;
    //TestResultDataModel();
protected:
    QHash<int, QByteArray> roleNames() const override;
private:
    QList<ResultData> m_results;
};
#endif // TESTRESULTDATAMODEL_H


