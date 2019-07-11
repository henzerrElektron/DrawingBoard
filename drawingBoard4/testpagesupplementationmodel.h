#ifndef TESTPAGESUPPLEMENTATIONMODEL_H
#define TESTPAGESUPPLEMENTATIONMODEL_H

#include <QObject>
#include <QDate>
#include <QAbstractListModel>
#include <QAbstractTableModel>
class Supplementation{
public:
    QVariant supplementation() const;
    void setSupplementation(const QVariant &supplementation);

    QVariant perDay() const;
    void setPerDay(const QVariant &perDay);

    QVariant dosage() const;
    void setDosage(const QVariant &dosage);

    QVariant date() const;
    void setDate(const QVariant &date);

    QVariant description() const;
    void setDescription(const QVariant &description);
    Supplementation(const QVariant &date,const QVariant dosage,const QVariant perday,QVariant descript);
private:
    QVariant m_date;
    QVariant m_dosage;
    QVariant m_perDay;
    QVariant m_supplementation;
    QVariant m_description;
};

class TestPageSupplementationModel : public QAbstractTableModel
{
    Q_OBJECT
    Q_ENUMS(SupplmentResultRoles)

public:
    enum SupplmentResultRoles{
        HeadingRole = Qt::UserRole+1,
        DateRole,
        DosageRole,
        PerDayRole,
        DescRole,
        AcceptRejectRole
    };
    explicit TestPageSupplementationModel(QObject *parent = 0);
    explicit TestPageSupplementationModel(QList<Supplementation> supplements, QObject *parent = 0);
    void addSupplement(const Supplementation &supplement);
    int rowCount(const QModelIndex & parent = QModelIndex()) const override;
    int columnCount(const QModelIndex &parent = QModelIndex()) const override;
    QVariant data(const QModelIndex & index, int role = Qt::DisplayRole) const override;
    QVariant headerData(int section, Qt::Orientation orientation, int role) const override;
    Qt::ItemFlags flags(const QModelIndex &index) const override;
    bool insertRows(int position, int rows, const QModelIndex &index=QModelIndex()) override;
    bool removeRows(int position, int rows, const QModelIndex &index=QModelIndex()) override;
    bool setData(const QModelIndex &index, const QVariant &value, int role=Qt::EditRole) override;
protected:
    QHash<int, QByteArray> roleNames() const override;
signals:

public slots:
private:
  QList<Supplementation> m_supplement;
};

#endif // TESTPAGESUPPLEMENTATIONMODEL_H
