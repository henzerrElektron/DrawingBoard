#include "testpagesupplementationmodel.h"
#include <QDebug>
#include <QDate>

QVariant Supplementation::supplementation() const
{
    return m_supplementation;
}

void Supplementation::setSupplementation(const QVariant &supplementation)
{
    m_supplementation = supplementation;
}

QVariant Supplementation::perDay() const
{
    return m_perDay;
}

void Supplementation::setPerDay(const QVariant &perDay)
{
    m_perDay = perDay;
}

QVariant Supplementation::dosage() const
{
    return m_dosage;
}

void Supplementation::setDosage(const QVariant &dosage)
{
    m_dosage = dosage;
}

QVariant Supplementation::date() const
{
    return m_date;
}

void Supplementation::setDate(const QVariant &date)
{
    m_date = date;
}

QVariant Supplementation::description() const
{
    return m_description;
}

void Supplementation::setDescription(const QVariant &description)
{
    m_description = description;
}

Supplementation::Supplementation(const QVariant &date, const QVariant dosage, const QVariant perday, QVariant descript)
    :m_date(date),m_dosage(dosage),m_perDay(perday),m_description(descript)
{
    qDebug()<<"The values for date is"<<m_date;
    qDebug()<<"The values for dosage is"<<m_dosage;
    qDebug()<<"The values for per day is"<<m_perDay;
    qDebug()<<"The values for description is"<<m_description;
}
TestPageSupplementationModel::TestPageSupplementationModel(QList<Supplementation> supplements, QObject *parent)
{
    m_supplement = supplements;
}
TestPageSupplementationModel::TestPageSupplementationModel(QObject *parent) //: QObject(parent)
{

}
void TestPageSupplementationModel::addSupplement(const Supplementation &supplement)
{
    beginInsertRows(QModelIndex(),rowCount(),rowCount());
    m_supplement<<supplement;
    endInsertRows();
}

bool TestPageSupplementationModel::insertRows(int position, int rows, const QModelIndex &index)
{
    Q_UNUSED(index);
    beginInsertRows(QModelIndex(), position, position+rows-1);
    m_supplement.insert(position,Supplementation(QDate::currentDate(),"",0,""));
    endInsertRows();
    return true;
}

bool TestPageSupplementationModel::removeRows(int position, int rows, const QModelIndex &index)
{
    Q_UNUSED(index);
    Q_UNUSED(rows);
    beginRemoveRows(QModelIndex(), position, position+rows-1);
    m_supplement.removeAt(position);
    endRemoveRows();
    return true;
}
bool TestPageSupplementationModel::setData(const QModelIndex &index, const QVariant &value, int role)
{
    if (index.isValid() && role == Qt::EditRole) {
        int row = index.row();

        Supplementation p = m_supplement.at(row);

        if (index.column() == 0)
            p.setDate(value.toDate());
        else if (index.column() == 1)
            p.setDosage(value.toString());
        else if (index.column() == 2)
            p.setPerDay(value.toString());
        else if (index.column() == 3)
            p.setDescription(value.toString());
        else
            return false;
        m_supplement.replace(row, p);
        emit(dataChanged(index, index));

        return true;
    }

    return false;
}
int TestPageSupplementationModel::rowCount(const QModelIndex &parent) const
{
    //Q_UNUSED(parent);
    if (parent.isValid())
        return 0;
//    if(m_supplement.count() <4)
//    {
//        return  4;
//    }
    return m_supplement.count();
}

int TestPageSupplementationModel::columnCount(const QModelIndex &parent) const
{
    //Q_UNUSED(parent);
    if (parent.isValid())
        return 0;
    return 4;//m_supplement.count();//3
}
QVariant TestPageSupplementationModel::data(const QModelIndex &index, int role) const
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
    //qDebug()<<QString("row %1,col%2, role%3").arg(row).arg(col).arg(role);
    if (index.row() < 0 || index.row() >= m_supplement.count())
        return QVariant();
    const Supplementation &supplement = m_supplement[index.row()];
    if(role == HeadingRole)
    {
        if( index.row()==0){
            return true;
        }else{
            return false;
        }
    }
    if(role == AcceptRejectRole)
    {
        switch(index.column())
        {
        case 0:
            break;
        case 1:
            if(supplement.dosage().toString() == "Accept")
            {
                return  true;
            }
            else {
                return  false;
            }
        case 2:
            if(supplement.description().toString() == "Accept")
            {
                return  true;
            }
            else {
                return  false;
            }
        default:
            qDebug() << "Not supposed to happen";
            return QVariant();
        }

    }
    switch (role) {
    case Qt::DisplayRole:
        switch (index.column()) {
        case 0: return  supplement.date();
        case 1: return  supplement.dosage();
        case 2: return  supplement.perDay();
        case 3: return  supplement.description();
        default: break;
        }
        break;
    case DateRole: return  supplement.date();
    case DosageRole : return  supplement.dosage();
    case PerDayRole: return  supplement.perDay();
    case DescRole: return  supplement.description();
    default: break;
    }
    switch(index.column())
    {
    case 0:
        return supplement.date();
    case 1:
        return  supplement.dosage();
    case 2:
        return  supplement.perDay();
    case 3:
        return  supplement.description();
    default:
        qDebug() << "Not supposed to happen";
        return QVariant();
    }
}

QVariant TestPageSupplementationModel::headerData(int section, Qt::Orientation orientation, int role) const
{
    if (role != Qt::DisplayRole)
        return QVariant();

    if (orientation == Qt::Horizontal) {
        switch (section) {
        case 0:
            return tr("Dates");
        case 1:
            return tr("Dosage");
        case 2:
            return tr("PerDay");
        case 3:
            return tr("Description");
        default:
            return QVariant();
        }
    }
    return QVariant();
}

Qt::ItemFlags TestPageSupplementationModel::flags(const QModelIndex &index) const
{
    if (!index.isValid())
        return Qt::ItemIsEnabled;

    return QAbstractTableModel::flags(index) | Qt::ItemIsEditable;
}

QHash<int, QByteArray> TestPageSupplementationModel::roleNames() const
{
    QHash<int,QByteArray> roles;
    roles[Qt::DisplayRole] = "display";
    roles[HeadingRole] = "heading";
    roles[DateRole] = "Dates";
    roles[DosageRole] = "Dosage";
    roles[PerDayRole] = "PerDay";
    roles[DescRole] = "Description";
    roles[HeadingRole] = "heading";
    // roles[AcceptRejectRole] = "arRole";
    return  roles;
}
