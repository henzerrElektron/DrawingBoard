#ifndef MEDICALTESTMODEL_H
#define MEDICALTESTMODEL_H

#include <QObject>
#include <QAbstractTableModel>
#include <QAbstractListModel>
#include <QDate>
#include <QTime>
class MedicalResult{
public:
    QVariant testResultNo() const;
    void setTestResultNo(QVariant testResultNo);

    QVariant testDate() const;
    void setTestDate(const QVariant &testDate);

    QVariant testTime() const;
    void setTestTime(const QVariant &testTime);

    QVariant testPatientId() const;
    void setTestPatientId(QVariant testPatientId);

    QVariant reMPEstimate() const;
    void setReMPEstimate(QVariant reMPEstimate);

    QVariant reMpAbsolute() const;
    void setReMpAbsolute(QVariant reMpAbsolute);

    QVariant reMPAdjusted() const;
    void setReMPAdjusted(QVariant reMPAdjusted);

    QVariant reCentralConfidenceLevel() const;
    void setReCentralConfidenceLevel(QVariant reCentralConfidenceLevel);

    QVariant rePeripheralConfidenceLevel() const;
    void setRePeripheralConfidenceLevel(QVariant rePeripheralConfidenceLevel);

    QVariant leMPEstimate() const;
    void setLeMPEstimate(QVariant leMPEstimate);

    QVariant leMPAbsolute() const;
    void setLeMPAbsolute(QVariant leMPAbsolute);

    QVariant leMPAdjusted() const;
    void setLeMPAdjusted(QVariant leMPAdjusted);

    QVariant leCentralConfidenceLevel() const;
    void setLeCentralConfidenceLevel(QVariant leCentralConfidenceLevel);

    QVariant lePeripheralConfidenceLevel() const;
    void setLePeripheralConfidenceLevel(QVariant lePeripheralConfidenceLevel);
    MedicalResult(const QVariant testResultNo,
                  const QVariant testDate,
                  QVariant testTime,
                  QVariant testPatId,
                  QVariant reMPEstimate,
                  const QVariant reMPAbsolute,
                  const QVariant reMPAdusted,
                  const QVariant reCentralConfidenceLevel,
                  const QVariant rePeripheralConfidenceLevel,
                  const QVariant leMpEstimate,
                  const QVariant leMpAbsolute,
                  const QVariant leMpAdjusted,
                  const QVariant leCentralConfidenceLevel,
                  const QVariant lePeripheralConfidenceLevel);

private:
    QVariant m_testResultNo;//qlonglong
    QVariant m_testDate;//QDate
    QVariant m_testTime;//QTime
    QVariant m_testPatientId;//qlonglong
    QVariant m_reMPEstimate;//double
    QVariant m_reMpAbsolute;//double
    QVariant m_reMPAdjusted;//double
    QVariant m_reCentralConfidenceLevel;//double
    QVariant m_rePeripheralConfidenceLevel;//double
    QVariant m_leMPEstimate;//double
    QVariant m_leMPAbsolute;//double
    QVariant m_leMPAdjusted;//double
    QVariant m_leCentralConfidenceLevel;//double
    QVariant m_lePeripheralConfidenceLevel;//double

};

class MedicalTestModel:public QAbstractTableModel
{
    Q_OBJECT
    Q_ENUMS(MedicalRoles)
    public:
    enum MedicalRoles{
        TitleRole = Qt::UserRole+1,
        ResultNoRole,
        DateRole,
        TimeRole,
        PatIDRole,
        REMPEstimateRole,
        REMPAbsoluteRole,
        REMPAdjustedRole,
        REMPCentralConfidenceRole,
        REMPPeripheralConfidenceRole,
        LEMPEstimateRole,
        LEMPAbsoluteRole,
        LEMPAdjustedRole,
        LECentralConfidenceRole,
        LEPeripheralConfidenceRole,
        HeadingRole,
        AcceptRejectRole
    };
    explicit MedicalTestModel(QObject *parent = 0);
    explicit MedicalTestModel(QList<MedicalResult> medicalResults,QObject *parent = 0);
    void addMedicalResult(const MedicalResult &result);
    int rowCount(const QModelIndex & parent = QModelIndex()) const override;
    int columnCount(const QModelIndex &parent = QModelIndex()) const override;
    QVariant data(const QModelIndex & index, int role = Qt::DisplayRole) const override;
    QVariant headerData(int section, Qt::Orientation orientation, int role) const override;
    Qt::ItemFlags flags(const QModelIndex &index) const override;
    bool insertRows(int position, int rows, const QModelIndex &index=QModelIndex()) override;
    bool removeRows(int position, int rows, const QModelIndex &index=QModelIndex()) override;
    bool setData(const QModelIndex &index, const QVariant &value, int role=Qt::EditRole) override;
    QList<MedicalResult> results() const;
    void setResults(const QList<MedicalResult> &results);

protected:
    QHash<int, QByteArray> roleNames() const override;
private:
    QList<MedicalResult> m_results;
};

#endif // MEDICALTESTMODEL_H
