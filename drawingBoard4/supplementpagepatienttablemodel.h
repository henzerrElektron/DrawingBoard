#ifndef SUPPLEMENTPAGEPATIENTTABLEMODEL_H
#define SUPPLEMENTPAGEPATIENTTABLEMODEL_H

#include <QObject>
#include <QAbstractListModel>
#include <QAbstractTableModel>

class supplementPagePatientTableModel : public QAbstractTableModel
{
    Q_OBJECT
public:
    explicit supplementPagePatientTableModel(QObject *parent = 0);

signals:

public slots:
};

#endif // SUPPLEMENTPAGEPATIENTTABLEMODEL_H
