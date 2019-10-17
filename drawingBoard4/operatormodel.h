#ifndef OPERATORMODEL_H
#define OPERATORMODEL_H

#include <QObject>
#include <QAbstractTableModel>
#include <QAbstractListModel>
#include <QSortFilterProxyModel>
class DeviceOperators{
public:
    DeviceOperators(const bool active,const QString operatorName);
    bool active() const;
    void setActive(bool active);

    QString operatorName() const;
    void setOperatorName(const QString &operatorName);

private:
    bool m_active;
    QString m_operatorName;
};

class OperatorModel:public QAbstractTableModel
{
    Q_OBJECT
    Q_ENUMS(OperatorRoles)
public:
    enum OperatorRoles{
      HeadingRole = Qt::UserRole+1,
      ActiveRole,
      NameRole
    };
    explicit OperatorModel(QObject *parent = 0);
    explicit OperatorModel(QList<DeviceOperators> devOperators,QObject *parent = 0);
    void addOperator(const DeviceOperators &operators);
    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    int columnCount(const QModelIndex &parent = QModelIndex()) const override;
    QVariant data(const QModelIndex &index,int role = Qt::DisplayRole) const override;
    QVariant headerData(int section, Qt::Orientation orientation, int role)const override;
    Qt::ItemFlags flags(const QModelIndex &index) const override;
    bool insertRows(int position,int rows,const QModelIndex &index=QModelIndex()) override;
    bool removeRows(int position,int rows,const QModelIndex &index=QModelIndex()) override;
    bool setData(const QModelIndex &index,const QVariant &value,int role = Qt::EditRole) override;
protected:
    QHash<int,QByteArray> roleNames() const override;
signals:
public slots:
private:
    QList<DeviceOperators> m_deviceOperators;
};
//Filter proxy model
class OperatorFilterProxyModel: public QSortFilterProxyModel
{
    Q_OBJECT
public:
    OperatorFilterProxyModel(QObject* parent = 0);
    ~OperatorFilterProxyModel();
    Q_INVOKABLE void setFitlerString(QString string);
    Q_INVOKABLE void setSortOrder(bool checked);
};


#endif // OPERATORMODEL_H
