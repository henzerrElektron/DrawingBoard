#include "testresultdatamodel.h"
#include <QDebug>



QVariant ResultData::centralValue() const
{
    return m_centralValue;
}

void ResultData::setCentralValue(const QVariant &centralValue)
{
    m_centralValue = centralValue;
}

QVariant ResultData::peripheralValue() const
{
    return m_peripheralValue;
}

void ResultData::setPeripheralValue(const QVariant &peripheralValue)
{
    m_peripheralValue = peripheralValue;
}

QVariant ResultData::estimatedValue() const
{
    return m_estimatedValue;
}

void ResultData::setEstimatedValue(const QVariant &estimatedValue)
{
    m_estimatedValue = estimatedValue;
}

QVariant ResultData::absoluteValue() const
{
    return m_absoluteValue;
}

void ResultData::setAbsoluteValue(const QVariant &absoluteValue)
{
    m_absoluteValue = absoluteValue;
}

QVariant ResultData::graphAdjustedValue() const
{
    return m_graphAdjustedValue;
}

void ResultData::setGraphAdjustedValue(const QVariant &graphAdjustedValue)
{
    m_graphAdjustedValue = graphAdjustedValue;
}

QVariant ResultData::centralSensitivity() const
{
    return m_centralSensitivity;
}

void ResultData::setCentralSensitivity(const QVariant &centralSensitivity)
{
    m_centralSensitivity = centralSensitivity;
}

QVariant ResultData::centralMinima() const
{
    return m_centralMinima;
}

void ResultData::setCentralMinima(const QVariant &centralMinima)
{
    m_centralMinima = centralMinima;
}

QVariant ResultData::peripheralSensitivity() const
{
    return m_peripheralSensitivity;
}

void ResultData::setPeripheralSensitivity(const QVariant &peripheralSensitivity)
{
    m_peripheralSensitivity = peripheralSensitivity;
}

QVariant ResultData::peripheralMinima() const
{
    return m_peripheralMinima;
}

void ResultData::setPeripheralMinima(const QVariant &peripheralMinima)
{
    m_peripheralMinima = peripheralMinima;
}

QString ResultData::title() const
{
    return m_title;
}

void ResultData::setTitle(const QString &title)
{
    m_title = title;
}

ResultData::ResultData(const QVariant &centralValue,const QVariant &peripheralValue,const QVariant &estimatedValue,const QVariant &absoluteValue,const QVariant &graphAdjustedValue,const QVariant &centralSensitivity, const QVariant &centralMinima, const QVariant &peripheralSensitivity,const QVariant &peripheralMinima,const QString &title)
{
    m_centralValue = centralValue;
    m_peripheralValue=peripheralValue;
    m_estimatedValue=estimatedValue;
    m_absoluteValue=absoluteValue;
    m_graphAdjustedValue=graphAdjustedValue;
    m_centralSensitivity=centralSensitivity;
    m_centralMinima=centralMinima;
    m_peripheralSensitivity=peripheralSensitivity;
    m_peripheralMinima=peripheralMinima;
    m_title=title;
    qDebug()<<"The value of the title is"<<m_title;
    qDebug()<<"The value of the central value is"<<m_centralValue;
    qDebug()<<"The value of the periphearl is"<<m_peripheralValue;
    qDebug()<<"The value of the estimated value is"<<m_estimatedValue;
    qDebug()<<"The value of the absolute is "<<m_absoluteValue;
    qDebug()<<"The value of the graph adjusted is"<<m_graphAdjustedValue;
    qDebug()<<"The value of the sensitivity is"<<m_centralSensitivity;
    qDebug()<<"The value of the peripheral sensitivty is"<<m_peripheralSensitivity;
    qDebug()<<"The value of the central minima is"<<m_centralMinima;
    qDebug()<<"The value of the peripheral minima is"<<m_peripheralMinima;
}

TestResultDataModel::TestResultDataModel(QList<ResultData> results, QObject *parent)
{
    m_results = results;
}

TestResultDataModel::TestResultDataModel(QObject *parent)
{

}

void TestResultDataModel::addResultData(const ResultData &result)
{
    beginInsertRows(QModelIndex(),rowCount(),rowCount());
    m_results<<result;
    endInsertRows();
}

bool TestResultDataModel::insertRows(int position, int rows, const QModelIndex &index)
{
    Q_UNUSED(index);
    beginInsertRows(QModelIndex(), position, position+rows-1);
    m_results.insert(position,ResultData("Accept","Reject",1.0,1.0,1.0,1.0,1.0,1.0,1.0,"Confidence"));
    endInsertRows();
    return true;
}
bool TestResultDataModel::removeRows(int position, int rows, const QModelIndex &index)
{
    Q_UNUSED(index);
    Q_UNUSED(rows);
    beginRemoveRows(QModelIndex(), position, position+rows-1);
    m_results.removeAt(position);
    endRemoveRows();
    return true;
}

bool TestResultDataModel::setData(const QModelIndex &index, const QVariant &value, int role)
{
    if(index.isValid() && role == Qt::EditRole){
        int row = index .row();
        ResultData p = m_results.at(row);
        if(index.column() == 0)
        {
            p.setCentralValue(value.toString());
        }
        else if (index.column() == 1) {
            p.setPeripheralValue(value.toString());
        }
        else if (index.column() == 2) {
            p.setEstimatedValue(value.toDouble());

        }
        else if (index.column() == 3) {
            p.setAbsoluteValue(value.toDouble());
        }
        else if (index.column() == 4) {
            p.setGraphAdjustedValue(value.toDouble());

        }
        else if (index.column() == 5) {
            p.setCentralSensitivity(value.toDouble());
        }
        else if (index.column() == 6) {
            p.setCentralMinima(value.toDouble());
        }
        else if (index.column() == 7) {
            p.setPeripheralSensitivity(value.toDouble());
        }
        else if (index.column() == 9) {
            p.setPeripheralMinima(value.toDouble());
        }
        else if (index.column() == 10) {
            p.setTitle(value.toString());
        }
        else
            return false;
        m_results.replace(row, p);
        emit(dataChanged(index, index));
        return true;

    }
    return false;
}

int TestResultDataModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return m_results.count();
}

int TestResultDataModel::columnCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return 1;//m_results.count();
}

QVariant TestResultDataModel::data(const QModelIndex &index, int role) const
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
    const ResultData &result = m_results[index.row()];
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
            //            if(result.leftValue().toString() == "Accept")
            //            {
            //                return  true;
            //            }
            //            else {
            //                return  false;
            //            }
            break;
        case 2:
            //            if(result.rightValue().toString() == "Accept")
            //            {
            //                return  true;
            //            }
            //            else {
            //                return  false;
            //            }
            break;
        default:
            qDebug() << "Not supposed to happen";
            return QVariant();
        }

    }

    switch (role) {
    case Qt::DisplayRole:
        switch (index.column()) {
        case 0:
            return  result.centralValue();
        case 1:
            return result.peripheralValue();
        case 2:
            return  result.estimatedValue();
        case 3:
            return  result.absoluteValue();
        case 4:
            return  result.graphAdjustedValue();
        case 5:
            return  result.centralSensitivity();
        case 6:
            return  result.centralMinima();
        case 7:
            return  result.peripheralSensitivity();
        case 8:
            return  result.peripheralMinima();
        case 9:
            return result.title();
        default: break;}
        break;
        //case TitleRole: return  result.title();
        // case LeftRole: return  result.leftValue();
        // case RightRole : return  result.rightValue();

    default: break;
    }
    switch (index.column()) {
    case 0: return result.centralValue();
    case 1: return  result.peripheralValue();
    case 2: return  result.estimatedValue();
    case 3: return  result.absoluteValue();
    case 4: return  result.graphAdjustedValue();
    case 5: return result.centralSensitivity();
    case 6: return  result.centralMinima();
    case 7: return  result.peripheralSensitivity();
    case 8: return  result.peripheralMinima();
    case 9: return  result.title();
    default:
        qDebug() << "Not supposed to happen";
        return QVariant();
    }
}








QVariant TestResultDataModel::headerData(int section, Qt::Orientation orientation, int role) const
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


Qt::ItemFlags TestResultDataModel::flags(const QModelIndex &index) const
{
    if (!index.isValid())
        return Qt::ItemIsEnabled;

    return QAbstractTableModel::flags(index) | Qt::ItemIsEditable;
}

QHash<int, QByteArray> TestResultDataModel::roleNames() const
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
