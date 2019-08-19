#ifndef MEDICALTESTMODEL_H
#define MEDICALTESTMODEL_H

#include <QObject>
#include <QAbstractTableModel>
#include <QAbstractListModel>
#include <QDate>
#include <QTime>
class MedicalResult{
public:
    qlonglong testResultNo() const;
    void setTestResultNo(qlonglong testResultNo);

    QDate testDate() const;
    void setTestDate(const QDate &testDate);

    QTime testTime() const;
    void setTestTime(const QTime &testTime);

    qlonglong testPatientId() const;
    void setTestPatientId(qlonglong testPatientId);

    double reMPEstimate() const;
    void setReMPEstimate(double reMPEstimate);

    double reMpAbsolute() const;
    void setReMpAbsolute(double reMpAbsolute);

    double reMPAdjusted() const;
    void setReMPAdjusted(double reMPAdjusted);

    double reCentralConfidenceLevel() const;
    void setReCentralConfidenceLevel(double reCentralConfidenceLevel);

    double rePeripheralConfidenceLevel() const;
    void setRePeripheralConfidenceLevel(double rePeripheralConfidenceLevel);

    double leMPEstimate() const;
    void setLeMPEstimate(double leMPEstimate);

    double leMPAbsolute() const;
    void setLeMPAbsolute(double leMPAbsolute);

    double leMPAdjusted() const;
    void setLeMPAdjusted(double leMPAdjusted);

    double leCentralConfidenceLevel() const;
    void setLeCentralConfidenceLevel(double leCentralConfidenceLevel);

    double lePeripheralConfidenceLevel() const;
    void setLePeripheralConfidenceLevel(double lePeripheralConfidenceLevel);
    MedicalResult(const qlonglong testResultNo,
                  const QDate testDate,
                  QTime testTime,
                  qlonglong testPatId,
                  double reMPEstimate,
                  const double reMPAbsolute,
                  const double reMPAdusted,
                  const double reCentralConfidenceLevel,
                  const double rePeripheralConfidenceLevel,
                  const double leMpEstimate,
                  const double leMpAbsolute,
                  const double leMpAdjusted,
                  const double leCentralConfidenceLevel,
                  const double lePeripheralConfidenceLevel);

private:
    qlonglong m_testResultNo;
    QDate m_testDate;
    QTime m_testTime;
    qlonglong m_testPatientId;
    double m_reMPEstimate;
    double m_reMpAbsolute;
    double m_reMPAdjusted;
    double m_reCentralConfidenceLevel;
    double m_rePeripheralConfidenceLevel;
    double m_leMPEstimate;
    double m_leMPAbsolute;
    double m_leMPAdjusted;
    double m_leCentralConfidenceLevel;
    double m_lePeripheralConfidenceLevel;

};

class medicalTestModel:public QAbstractTableModel
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
    explicit medicalTestModel(QObject *parent = 0);
    explicit medicalTestModel(QList<MedicalResult> medicalResults,QObject *parent = 0);
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
