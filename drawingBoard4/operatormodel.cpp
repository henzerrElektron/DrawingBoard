#include "operatormodel.h"
#include <QDebug>


bool DeviceOperators::active() const
{
    return m_active;
}

void DeviceOperators::setActive(bool active)
{
    m_active = active;
}

QString DeviceOperators::operatorName() const
{
    return m_operatorName;
}



OperatorModel::OperatorModel(QList<DeviceOperators> devOperators, QObject *parent)
{
    m_deviceOperators = devOperators;

}

OperatorModel::OperatorModel(QObject *parent)
{

}
DeviceOperators::DeviceOperators(const bool active, const QString operatorName)
{
    m_active = active;
    m_operatorName = operatorName;
    qDebug()<<"The value of the active flag is"<<m_active;
    qDebug()<<"The value of the operator name"<<m_operatorName;
}
void OperatorModel::addOperator(const DeviceOperators &operators)
{
    beginInsertRows(QModelIndex(),rowCount(),rowCount());
    m_deviceOperators<<operators;
    endInsertRows();
}
void DeviceOperators::setOperatorName(const QString &operatorName)
{
    m_operatorName = operatorName;
}


bool OperatorModel::insertRows(int position, int rows, const QModelIndex &index)
{
    Q_UNUSED(index);
    beginInsertRows(QModelIndex(), position, position+rows-1);
    m_deviceOperators.insert(position,DeviceOperators(true,"Default Operator"));
    endInsertRows();
    return true;
}
bool OperatorModel::removeRows(int position, int rows, const QModelIndex &index)
{
    Q_UNUSED(index);
    Q_UNUSED(rows);
    beginRemoveRows(QModelIndex(), position, position+rows-1);
    m_deviceOperators.removeAt(position);
    endRemoveRows();
    return true;
}

bool OperatorModel::setData(const QModelIndex &index, const QVariant &value, int role)
{
    if (index.isValid() && role == Qt::EditRole) {
        int row = index.row();

        DeviceOperators p = m_deviceOperators.at(row);

        if (index.column() == 0)
            p.setActive(value.toBool());
        else if (index.column() == 1)
            p.setOperatorName(value.toString());
        else
            return false;
        m_deviceOperators.replace(row, p);
        emit(dataChanged(index, index));

        return true;
    }

    return false;
}

int OperatorModel::rowCount(const QModelIndex &parent) const
{
    if (parent.isValid())
        return 0;
//    if(m_deviceOperators.count()<2)
//    {
//        return 2;
//    }
    return m_deviceOperators.count();
}
int OperatorModel::columnCount(const QModelIndex &parent) const
{
    if (parent.isValid())
        return 0;
    return 3;//m_deviceOperators.count();//3
}

QVariant OperatorModel::data(const QModelIndex &index, int role) const
{
    int row = index.row();
    int col = index.column();
    // index is valid
    Q_ASSERT(index.isValid());
    // index is right below the root
    Q_ASSERT(!index.parent().isValid());
    // index is for this model
    Q_ASSERT(index.model() == this);
    // the row is legal
    Q_ASSERT(index.row() >= 0);
    Q_ASSERT(index.row() < rowCount(index.parent()));
    // the column is legal
    Q_ASSERT(index.column() >= 0);
    Q_ASSERT(index.column() < columnCount(index.parent()));
    Q_ASSERT(checkIndex(index, QAbstractItemModel::CheckIndexOption::IndexIsValid | QAbstractItemModel::CheckIndexOption::ParentIsInvalid));
    //qDebug()<<QString("row %1,col%2, role%3 role%4 %5").arg(row).arg(col).arg(role).arg(index.row()).arg(index.column());
    if(index.row() < 0 || index.row() >= m_deviceOperators.count())
        return  QVariant();
    const DeviceOperators &curOperator = m_deviceOperators[index.row()];
    if(role == HeadingRole)
    {
        if(index.row() == 0)
        {
            return  true;
        }
        else {
            return  false;
        }
    }
    switch (role) {
    case Qt::DisplayRole:
        switch(index.column())
        {
        case 0:return  curOperator.active();
        case 1: return curOperator.operatorName();
        default: break;
        }
        break;
    case ActiveRole: return  curOperator.active();
    case NameRole: return  curOperator.operatorName();
    default:break;
    }
    switch (index.column()) {
    case 0: return  curOperator.active();
    case 1: return curOperator.operatorName();
    default: break;
    }
    return  QVariant();
}


QVariant OperatorModel::headerData(int section, Qt::Orientation orientation, int role) const
{
    if (role != Qt::DisplayRole)//HeadingRole)//
        return QVariant();

    if (orientation == Qt::Horizontal) {
        switch (section) {
        // case 0:
        //     return tr("heading");
        case 0:
            return tr("Active");
        case 1:
            return tr("Operator Name");
            // case 7:
            //     return  tr("arRole");
        default:
            return QVariant();
        }
    }
    return QVariant();
}


Qt::ItemFlags OperatorModel::flags(const QModelIndex &index) const
{
    if (!index.isValid())
        return Qt::ItemIsEnabled;

    return QAbstractTableModel::flags(index) | Qt::ItemIsEditable;
}


QHash<int, QByteArray> OperatorModel::roleNames() const
{
    QHash<int,QByteArray> roles;
    roles[Qt::DisplayRole]= "display";
    roles[HeadingRole] = "heading";
    roles[ActiveRole] = "active";
    roles[NameRole] = "operatorName";
    return roles;
}

/*********************FilterProxyModel***************************/
OperatorFilterProxyModel::OperatorFilterProxyModel(QObject *parent):QSortFilterProxyModel (parent)
{
    setSortOrder(false);
}

OperatorFilterProxyModel::~OperatorFilterProxyModel()
{

}
void OperatorFilterProxyModel::setFitlerString(QString string)
{
    this->setFilterCaseSensitivity(Qt::CaseInsensitive);
    this->setFilterFixedString(string);
}

void OperatorFilterProxyModel::setSortOrder(bool checked)
{
    if(checked)
    {
        this->sort(0,Qt::DescendingOrder);
    }
    else {
        this->sort(0,Qt::AscendingOrder);
    }
}
/*******************FilterProxyModel*******************/







