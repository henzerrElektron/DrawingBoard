#ifndef SWITCHPATIENTTABLEMODEL_H
#define SWITCHPATIENTTABLEMODEL_H
#include <QObject>
#include <QDate>
#include <QAbstractListModel>
#include <QAbstractTableModel>
#include <QSortFilterProxyModel>
enum Roles{
    HeadingRole = Qt::UserRole + 1,
    FirstNameRole,
    SecNameRole,
    DobRole,
    TestResultsRole,
    MedRefRole,
    AddressRole,
    AcceptRejectRole
};
class ExistingPatients{
public:
    QVariant firstName() const;
    void setFirstName(const QVariant &firstName);

    QVariant secName() const;
    void setSecName(const QVariant &secName);

    QVariant dob() const;
    void setDob(const QVariant &dob);

    QVariant testResult() const;
    void setTestResult(const QVariant &testResult);

    QVariant medRef() const;
    void setMedRef(const QVariant &medRef);

    QVariant address() const;
    void setAddress(const QVariant &address);
    ExistingPatients(const QVariant &firstName,const QVariant secName,const QVariant dob,const QVariant testResult,const QVariant medRef,const QVariant address);
private:
    QVariant m_firstName;
    QVariant m_secName;
    QVariant m_dob;
    QVariant m_testResult;
    QVariant m_medRef;
    QVariant m_address;
};

class SwitchPatientTableModel : public QAbstractTableModel
{
    Q_OBJECT
    Q_ENUMS(Roles)
public:

    explicit SwitchPatientTableModel(QObject *parent = 0);
    explicit SwitchPatientTableModel(QList<ExistingPatients> existingPatients, QObject *parent = 0);
    void addExistingPatient(const ExistingPatients &existingPatients);
    int rowCount(const QModelIndex &parent  = QModelIndex()) const override;
    int columnCount(const QModelIndex &parent = QModelIndex()) const override;
    QVariant data(const QModelIndex &index,int role = Qt::DisplayRole) const override;
    QVariant headerData(int section,Qt::Orientation orientation, int role) const override;
    Qt::ItemFlags flags(const QModelIndex &index) const override;
    bool insertRows(int position, int rows, const QModelIndex &index=QModelIndex()) override;
    bool removeRows(int position, int rows, const QModelIndex &index=QModelIndex()) override;
    bool setData(const QModelIndex &index, const QVariant &value, int role=Qt::EditRole) override;
protected:
    QHash<int, QByteArray> roleNames() const override;
signals:

public slots:
private:
QList<ExistingPatients> m_existingPatients;
};
//Filter proxy model
class FilterProxyModel : public QSortFilterProxyModel
{
    Q_OBJECT
public:

    FilterProxyModel(QObject* parent = 0);

    ~FilterProxyModel();

    Q_INVOKABLE void setFilterString(QString string);

    Q_INVOKABLE void setSortOrder(bool checked);
};
#endif // SWITCHPATIENTTABLEMODEL_H
