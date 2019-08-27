#include "patientresultmodel.h"
#include <QDebug>

QList<PatientResult> PatientResultModel::results() const
{
    return m_results;
}

void PatientResultModel::setResults(const QList<PatientResult> &results)
{
    m_results = results;
}


QVariant PatientResult::reMPAdjusted() const
{
    return m_reMPAdjusted;
}

void PatientResult::setReMPAdjusted(QVariant reMPAdjusted)
{
    m_reMPAdjusted = reMPAdjusted;
}

QVariant PatientResult::reMpAbsolute() const
{
    return m_reMpAbsolute;
}

void PatientResult::setReMpAbsolute(QVariant reMpAbsolute)
{
    m_reMpAbsolute = reMpAbsolute;
}

QVariant PatientResult::reMPEstimate() const
{
    return m_reMPEstimate;
}

void PatientResult::setReMPEstimate(QVariant reMPEstimate)
{
    m_reMPEstimate = reMPEstimate;
}

QVariant PatientResult::testTime() const
{
    return m_testTime;
}

void PatientResult::setTestTime(const QVariant &testTime)
{
    m_testTime = testTime;
}

QVariant PatientResult::testDate() const
{
    return m_testDate;
}

void PatientResult::setTestDate(const QVariant &testDate)
{
    m_testDate = testDate;
}

QVariant PatientResult::testResultNo() const
{
    return m_testResultNo;
}

void PatientResult::setTestResultNo(const QVariant &testResultNo)
{
    m_testResultNo = testResultNo;
}




PatientResult::PatientResult(const QVariant testResultNo, const QVariant testDate, const QVariant testTime, const QVariant reMPEstimate, const QVariant reMPAbsolute, const QVariant reMPAdjusted)
{
    m_testResultNo = testResultNo;
    m_testDate = testDate;
    m_testTime = testTime;
    m_reMPEstimate = reMPEstimate;
    m_reMpAbsolute = reMPAbsolute;
    m_reMPAdjusted = reMPAdjusted;
}


PatientResultModel::PatientResultModel(QList<PatientResult> patResults, QObject *parent)
{
    m_results = patResults;
}


PatientResultModel::PatientResultModel(QObject *parent)
{

}

void PatientResultModel::addPatientResult(const PatientResult &result)
{
    beginInsertRows(QModelIndex(),rowCount(),rowCount());
    m_results<<result;
    endInsertRows();
}


bool PatientResultModel::insertRows(int position, int rows, const QModelIndex &index)
{
    Q_UNUSED(index);
    beginInsertRows(QModelIndex(), position, position+rows-1);
    m_results.insert(position,PatientResult(1,QDate::currentDate(),QTime::currentTime(),0.0,0.0,0.0));
    endInsertRows();
    return true;
}

bool PatientResultModel::removeRows(int position, int rows, const QModelIndex &index)
{
    Q_UNUSED(index);
    Q_UNUSED(rows);
    beginRemoveRows(QModelIndex(), position, position+rows-1);
    m_results.removeAt(position);
    endRemoveRows();
    return true;
}
bool PatientResultModel::setData(const QModelIndex &index, const QVariant &value, int role)
{
    if(index.isValid() && role == Qt::EditRole){
        int row = index.row();
        PatientResult p = m_results.at(row);
        if(index.column() == 0)
        {
            p.setTestResultNo(value.toLongLong());
        }
        else if (index.column() == 1) {
            p.setTestDate(value.toDate());
        }
        else if (index.column() == 2) {
            p.setTestTime(value.toTime());
        }
        else if (index.column() == 3) {
            p.setReMPEstimate(value.toDouble());
        }
        else if (index.column() == 4) {
            p.setReMpAbsolute(value.toDouble());
        }
        else if (index.column() == 5) {
            p.setReMPAdjusted(value.toDouble());
        }
        else {
            return  false ;
        }
        m_results.replace(row,p);
        emit(dataChanged(index,index));
        return  true;
    }
    return  false;
}
int PatientResultModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return m_results.count();
}

int PatientResultModel::columnCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return 5;//m_results.count();
}


QVariant PatientResultModel::data(const QModelIndex &index, int role) const
{
    int row = index .row();
    int col = index.column();
    qDebug()<<QString("row %1,col %2,role %3").arg(row).arg(col).arg(role);
    if(index.row() < 0 || index.row() >= m_results.count())
        return  QVariant();
    const PatientResult &result = m_results[index.row()];
    if(role == HeadingRole){
        if(index.row() == 0)
        {
            return  true;
        }
        else {
            return  false;
        }
    }
    if(role == AcceptRejectRole)
    {
        switch (index.column()) {
        //        case 0:
        //            break;
        //        case 1:
        //            if(result.leftValue.tostring() == "Accept")
        //            {
        //                return true;
        //            }
        //            else {
        //                return  false;
        //            }
        //        case 2:
        //            if(result.rightValue().toString() == "Accept")
        //            {
        //                return true;
        //            }
        //            else {
        //                return false;
        //            }
        default:
            qDebug()<<"Not Supposed to happen";
            return  QVariant();


        }
    }
    switch (index.column()) {
    case 0:
        return result.testResultNo();
    case 1:
        return  result.testDate();
    case 2:
        return  result.testTime();
    case 3:
        return  result.reMPEstimate();
    case 4:
        return  result.reMpAbsolute();
    case 5:
        return  result.reMPAdjusted();
    default:
        qDebug()<< "Not supposed to Happen";
        return  QVariant();
    }

}


QVariant PatientResultModel::headerData(int section, Qt::Orientation orientation, int role) const
{
    if(role != Qt::DisplayRole)
        return  QVariant();
    if(orientation == Qt::Horizontal)
    {
        switch (section) {
        //case 0:
        //    return  tr("PatientResults");
        //case 0:
       //     return tr("heading");
        case 0:
            return  tr("TestRestultNumber");
        case 1:
            return  tr("TestDate");
        case 2:
            return  tr("TestTime");
        case 3:
            return  tr("RE MP Estimate");
        case 4:
            return  tr("RE MP Absolute");
        case 5:
            return  tr("RE MP Adjusted");
        default:
            return QVariant();
        }
    }
    return QVariant();
}


Qt::ItemFlags PatientResultModel::flags(const QModelIndex &index) const
{
    if(!index.isValid())
        return  Qt::ItemIsEnabled;
    return  QAbstractTableModel::flags(index) | Qt::ItemIsEditable;
}

QHash<int, QByteArray> PatientResultModel::roleNames() const
{
    QHash<int,QByteArray> roles;
    roles[Qt::DisplayRole] = "display";
    roles[TitleRole] = "PatientResults";
    roles[ResultNoRole] ="TestResultNumber";
    roles[DateRole] = "TestDate";
    roles[TimeRole] = "TestTime";
    roles[REMPEstimateRole] = "RE MP Estimate";
    roles[REMPAbsoluteRole] = "RE MP Absolute";
    roles[REMPAdjustedRole] = "RE MP Adjusted";
    roles[HeadingRole] = "heading";
    roles[AcceptRejectRole] = "arRole";
    return  roles;
}
