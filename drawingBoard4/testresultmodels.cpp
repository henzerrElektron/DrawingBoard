#include "testresultmodels.h"
#include <QDebug>
QString Result::title() const
{
    return m_title;
}

void Result::setTitle(const QString &title)
{
    m_title = title;
}

QVariant Result::leftValue() const
{
    return m_leftValue;
}

void Result::setLeftValue(QVariant leftValue)
{
    m_leftValue = leftValue;
}

QVariant Result::rightValue() const
{
    return m_rightValue;
}

void Result::setRightValue(QVariant rightValue)
{
    m_rightValue = rightValue;
}

Result::Result(const QString &title, const QVariant &leftValue, const QVariant &rightValue)
    :m_title(title),m_leftValue(leftValue),m_rightValue(rightValue)
{
    qDebug()<<"The value for title is"<<m_title;
    qDebug()<<"The value of left value is"<<m_leftValue;
    qDebug()<<"The value of right value is"<<m_rightValue;
}

TestResultModels::TestResultModels(QList<Result> results, QObject *parent): QAbstractTableModel(parent)
{
    m_results = results;
}

TestResultModels::TestResultModels(QObject *parent)
{

}

void TestResultModels::addResult(const Result &result)
{
    beginInsertRows(QModelIndex(),rowCount(),rowCount());
    m_results<<result;
    endInsertRows();
}
bool TestResultModels::insertRows(int position, int rows, const QModelIndex &index)
{
    Q_UNUSED(index);
    beginInsertRows(QModelIndex(), position, position+rows-1);
    m_results.insert(position,Result("","",""));
    endInsertRows();
    return true;
}

bool TestResultModels::removeRows(int position, int rows, const QModelIndex &index)
{
    Q_UNUSED(index);
    Q_UNUSED(rows);
    beginRemoveRows(QModelIndex(), position, position+rows-1);
    m_results.removeAt(position);
    endRemoveRows();
    return true;
}

bool TestResultModels::setData(const QModelIndex &index, const QVariant &value, int role)
{
    if (index.isValid() && role == Qt::EditRole) {
        int row = index.row();

        Result p = m_results.at(row);

        if (index.column() == 0)
            p.setTitle(value.toString());
        else if (index.column() == 1)
            p.setLeftValue(value);
        else if (index.column() == 2)
            p.setRightValue(value);
        else
            return false;
        m_results.replace(row, p);
        emit(dataChanged(index, index));

        return true;
    }

    return false;
}

int TestResultModels::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
//    if(m_results.count()<3)
//    {
//        return  3;
//    }
    return m_results.count();
}

int TestResultModels::columnCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return 3;//m_results.count();
}
//QVariant TestResultModels::data(const QModelIndex &index, int role) const
//{
//    switch (role) {
//    case Qt::DisplayRole:
//        return QString("%1, %2").arg(index.column()).arg(index.row());
//    default:
//        break;
//    }

//    return QVariant();
//}
QVariant TestResultModels::data(const QModelIndex &index, int role) const
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
    if (index.row() < 0 || index.row() >= m_results.count())
        return QVariant();
    const Result &result = m_results[index.row()];
    //    if(role == Qt::DisplayRole)
    //    {
    //        if(row == 0 && col == 1) return  QString("<--left");
    //        if(row == 1 && col == 1) return  QString("right-->");
    //        return QString("Row%1, Column%2").arg(row + 1).arg(col +1);
    //    }
    //    if(role == Qt::DisplayRole)
    //    {
    //        // Check boudaries
    //        if(index.column() < 0 || columnCount() <= index.column() ||
    //                index.row() < 0 || rowCount() <= index.row())
    //        {
    //            qDebug() << "Warning: " << index.row() << ", " << index.column();
    //            return QVariant();
    //        }
    //        // Nominal case
    //        qDebug() << "MyModel::data: " << index.column() << "; " << index.row();
    //        switch(index.column())
    //        {
    //        case 0:
    //            return result.title();
    //        case 1:
    //            return  result.leftValue();
    //        case 2:
    //            return  result.rightValue();
    //        default:
    //            qDebug() << "Not supposed to happen";
    //            return QVariant();
    //        }

    //    }
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
            if(result.leftValue().toString() == "Accept")
            {
                return  true;
            }
            else {
                return  false;
            }
        case 2:
            if(result.rightValue().toString() == "Accept")
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
        case 0:
            return  result.title();
        case 1:
            return result.leftValue();
        case 2:
            return  result.rightValue();
        default: break;}
        break;
    case TitleRole: return  result.title();
    case LeftRole: return  result.leftValue();
    case RightRole : return  result.rightValue();
    default: break;
    }

    switch(index.column())
    {
    case 0:
        return result.title();
    case 1:
        return  result.leftValue();
    case 2:
        return  result.rightValue();
    default:
        qDebug() << "Not supposed to happen";
        return QVariant();
    }
    //    if(role == TitleRole)
    //        return result.title();
    //    else if(role == LeftRole)
    //        return  result.leftValue();
    //    else if(role == RightRole)
    //        return  result.rightValue();
    //    return  QVariant();

}

QVariant TestResultModels::headerData(int section, Qt::Orientation orientation, int role) const
{
    if (role != Qt::DisplayRole)
        return QVariant();

    if (orientation == Qt::Horizontal) {
        switch (section) {
        case 0:
            return tr("ConfidenceValue");
        case 1:
            return tr("Left");
        case 2:
            return  tr("Right");
        default:
            return QVariant();
        }
    }
    return QVariant();
}

Qt::ItemFlags TestResultModels::flags(const QModelIndex &index) const
{
    if (!index.isValid())
        return Qt::ItemIsEnabled;

    return QAbstractTableModel::flags(index) | Qt::ItemIsEditable;
}

//QHash<int, QByteArray> TestResultModels::roleNames() const
//{
//    return { {Qt::DisplayRole, "display"} };
//}
QHash<int, QByteArray> TestResultModels::roleNames() const
{
    QHash<int,QByteArray> roles;
    roles[Qt::DisplayRole]= "display";
    roles[TitleRole] = "TestResults";
    roles[LeftRole] = "Left";
    roles[RightRole] = "Right";
    roles[HeadingRole] = "heading";
    roles[AcceptRejectRole] = "arRole";
    return  roles;
}
