#ifndef PATIENTRESULTMODEL_H
#define PATIENTRESULTMODEL_H
#include <QObject>
#include <QAbstractTableModel>
#include <QAbstractListModel>
#include <QDate>
#include <QTime>
class PatientResult{
public:
    double reMPAdjusted() const;
    void setReMPAdjusted(double reMPAdjusted);

    double reMpAbsolute() const;
    void setReMpAbsolute(double reMpAbsolute);

    double reMPEstimate() const;
    void setReMPEstimate(double reMPEstimate);

    QTime testTime() const;
    void setTestTime(const QTime &testTime);

    QDate testDate() const;
    void setTestDate(const QDate &testDate);

    qlonglong testResultNo() const;
    void setTestResultNo(const qlonglong &testResultNo);
    PatientResult(const qlonglong testResultNo,
                  const QDate testDate,
                  const QTime testTime,
                  const double reMPEstimate,
                  const double reMPAbsolute,
                  const double reMPAdjusted);

private:
    qlonglong m_testResultNo;
    QDate m_testDate;
    QTime m_testTime;
    double m_reMPEstimate;
    double m_reMpAbsolute;
    double m_reMPAdjusted;
};

class PatientResultModel:public QAbstractTableModel
{
    Q_OBJECT
    Q_ENUMS(PatientResults)
public:
    enum PatientResults{
        TitleRole = Qt::UserRole+1,
        ResultNoRole,
        DateRole,
        TimeRole,
        REMPEstimateRole,
        REMPAbsoluteRole,
        REMPAdjustedRole,
        HeadingRole,
        AcceptRejectRole
    };
    explicit PatientResultModel(QObject *parent = 0);
    explicit PatientResultModel(QList<PatientResult> patResults,QObject *parent  =0);
    void addPatientResult(const PatientResult &result);
    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    int columnCount(const QModelIndex &parent = QModelIndex()) const override;
    QVariant data(const QModelIndex &index,int role = Qt::DisplayRole) const override;
    QVariant headerData(int section, Qt::Orientation orientation, int role) const override;
    Qt::ItemFlags flags(const QModelIndex &index) const override;
    bool insertRows(int position,int rows,const QModelIndex &index= QModelIndex()) override;
    bool removeRows(int position,int rows,const QModelIndex &index= QModelIndex()) override;
    bool setData(const QModelIndex &index,const QVariant &value,int role=Qt::EditRole) override;
    QList<PatientResult> results() const;
    void setResults(const QList<PatientResult> &results);
protected:
    QHash<int,QByteArray> roleNames() const override;
private:
    QList<PatientResult> m_results;
    //PatientResultModel();
};

#endif // PATIENTRESULTMODEL_H
