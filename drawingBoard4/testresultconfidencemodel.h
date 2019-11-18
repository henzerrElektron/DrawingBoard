#ifndef TESTRESULTCONFIDENCEMODEL_H
#define TESTRESULTCONFIDENCEMODEL_H

#include <QAbstractTableModel>

class TestResultConfidenceModel : public QAbstractTableModel
{
    Q_OBJECT
     Q_ENUMS(MyRoles)
public:
    enum MyRoles {
          HeadingRole = Qt::UserRole + 1,
          DecorationRole
          //BackgroundRole,
      };
    explicit TestResultConfidenceModel(QObject *parent = nullptr);
    Q_INVOKABLE QVariant headerData(int section, Qt::Orientation orientation, int role = Qt::DisplayRole) const override;
    int rowCount(const QModelIndex &parent = QModelIndex()) const override;
    int columnCount(const QModelIndex &parent = QModelIndex()) const override;
    QVariant data(const QModelIndex &index, int role = Qt::DisplayRole) const override;
protected:
    QHash<int, QByteArray> roleNames() const override;
};

#endif // TESTRESULTCONFIDENCEMODEL_H
