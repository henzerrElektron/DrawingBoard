#ifndef SORTFILTERMODEL_H
#define SORTFILTERMODEL_H

#include <QSortFilterProxyModel>
#include <QJSValue>
class SortFilterModel: public QSortFilterProxyModel
{
    Q_OBJECT
    Q_PROPERTY(int count READ count NOTIFY countChanged)
    Q_PROPERTY(QObject *source READ source WRITE setSource)

    Q_PROPERTY(QByteArray sortRole READ sortRole WRITE setSortRole)
    Q_PROPERTY(Qt::SortOrder sortOrder READ sortOrder WRITE setSortOrder)

    Q_PROPERTY(QByteArray filterRole READ filterRole WRITE setFilterRole)
    Q_PROPERTY(QString filterString READ filterString WRITE setFilterString)
    Q_PROPERTY(FilterSyntax filterSyntax READ filterSyntax WRITE setFilterSyntax)

    Q_ENUMS(FilterSyntax)
public:
    explicit SortFilterModel(QObject *parent = 0);
    QObject *source() const;
    void setSource(QObject *source);

    QByteArray sortRole() const;
    void setSortRole(const QByteArray &role);

    void setSortOrder(Qt::SortOrder order);

    QByteArray filterRole() const;
    void setFilterRole(const QByteArray &role);

    QString filterString() const;
    void setFilterString(const QString &filter);

    enum FilterSyntax {
        RegExp,
        Wildcard,
        FixedString
    };

    FilterSyntax filterSyntax() const;
    void setFilterSyntax(FilterSyntax syntax);

    int count() const;
    Q_INVOKABLE QJSValue get(int index) const;

signals:
    void countChanged();

protected:
    int roleKey(const QByteArray &role) const;
    QHash<int, QByteArray> roleNames() const;
    bool filterAcceptsRow(int sourceRow, const QModelIndex &sourceParent) const;
};

#endif // SORTFILTERMODEL_H
