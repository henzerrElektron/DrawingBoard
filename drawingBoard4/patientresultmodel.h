#ifndef PATIENTRESULTMODEL_H
#define PATIENTRESULTMODEL_H
#include <QObject>
#include <QAbstractTableModel>
#include <QAbstractListModel>
#include <QDate>
#include <QTime>
class PatientResult{
public:
    QVariant reMPAdjusted() const;
    void setReMPAdjusted(QVariant reMPAdjusted);

    QVariant reMpAbsolute() const;
    void setReMpAbsolute(QVariant reMpAbsolute);

    QVariant reMPEstimate() const;
    void setReMPEstimate(QVariant reMPEstimate);

    QVariant testTime() const;
    void setTestTime(const QVariant &testTime);

    QVariant testDate() const;
    void setTestDate(const QVariant &testDate);

    QVariant testResultNo() const;
    void setTestResultNo(const QVariant &testResultNo);
    PatientResult(const QVariant testResultNo,
                  const QVariant testDate,
                  const QVariant testTime,
                  const QVariant reMPEstimate,
                  const QVariant reMPAbsolute,
                  const QVariant reMPAdjusted);

private:
    QVariant m_testResultNo;//qlonglong
    QVariant m_testDate;//QDate
    QVariant m_testTime;//QTime
    QVariant m_reMPEstimate;//double
    QVariant m_reMpAbsolute;//double
    QVariant m_reMPAdjusted;//double
};

class PatientResultModel:public QAbstractTableModel
{
    Q_OBJECT
    Q_ENUMS(PatientResults)
public:
    enum PatientResults{
        HeadingRole = Qt::UserRole+1,
        ResultNoRole,
        DateRole,
        TimeRole,
        REMPEstimateRole,
        REMPAbsoluteRole,
        REMPAdjustedRole,
        TitleRole,//
        //HeadingRole,
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
