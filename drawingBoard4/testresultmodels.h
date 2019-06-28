#ifndef TESTRESULTMODELS_H
#define TESTRESULTMODELS_H

#include <QObject>
#include <QAbstractListModel>
#include <QAbstractTableModel>
class Result{
public:
    QString title() const;
    void setTitle(const QString &title);

    QVariant leftValue() const;
    void setLeftValue(QVariant leftValue);

    QVariant rightValue() const;

    void setRightValue(QVariant rightValue);
    Result(const QString &title,const QVariant &leftValue,const QVariant &rightValue);
private:
    QString m_title;
    QVariant m_leftValue;
    QVariant m_rightValue;
};

class TestResultModels :public QAbstractTableModel
{
    Q_OBJECT
    Q_ENUMS(TestResultRoles)
public:
//    enum TestResultRoles {
//            DisplayRole
//        };
    enum TestResultRoles{
        TitleRole = Qt::UserRole + 1,
        LeftRole,
        RightRole,
        HeadingRole,
        AcceptRejectRole
    };
    explicit TestResultModels(QObject *parent = 0);
    explicit TestResultModels(QList<Result> results,QObject *parent = 0);
    void addResult(const Result &result);
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
private:
    QList<Result> m_results;
};

#endif // TESTRESULTMODELS_H
