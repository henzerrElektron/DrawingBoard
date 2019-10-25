#include "medicaltestmodel.h"
#include <QDebug>


QList<MedicalResult> MedicalTestModel::results() const
{
    return m_results;
}

void MedicalTestModel::setResults(const QList<MedicalResult> &results)
{
    m_results = results;
}


QVariant MedicalResult::testResultNo() const
{
    return m_testResultNo;
}

void MedicalResult::setTestResultNo(const QVariant testResultNo)
{
    m_testResultNo = testResultNo;
}

QVariant MedicalResult::testDate() const
{
    return m_testDate;
}

void MedicalResult::setTestDate(const QVariant &testDate)
{
    m_testDate = testDate;
}

QVariant MedicalResult::testTime() const
{
    return m_testTime;
}

void MedicalResult::setTestTime(const QVariant &testTime)
{
    m_testTime = testTime;
}

QVariant MedicalResult::testPatientId() const
{
    return m_testPatientId;
}

void MedicalResult::setTestPatientId(QVariant testPatientId)
{
    m_testPatientId = testPatientId;
}

QVariant MedicalResult::reMPEstimate() const
{
    return m_reMPEstimate;
}

void MedicalResult::setReMPEstimate(QVariant reMPEstimate)
{
    m_reMPEstimate = reMPEstimate;
}

QVariant MedicalResult::reMpAbsolute() const
{
    return m_reMpAbsolute;
}

void MedicalResult::setReMpAbsolute(QVariant reMpAbsolute)
{
    m_reMpAbsolute = reMpAbsolute;
}

QVariant MedicalResult::reMPAdjusted() const
{
    return m_reMPAdjusted;
}

void MedicalResult::setReMPAdjusted(QVariant reMPAdjusted)
{
    m_reMPAdjusted = reMPAdjusted;
}

QVariant MedicalResult::reCentralConfidenceLevel() const
{
    return m_reCentralConfidenceLevel;
}

void MedicalResult::setReCentralConfidenceLevel(QVariant reCentralConfidenceLevel)
{
    m_reCentralConfidenceLevel = reCentralConfidenceLevel;
}

QVariant MedicalResult::rePeripheralConfidenceLevel() const
{
    return m_rePeripheralConfidenceLevel;
}

void MedicalResult::setRePeripheralConfidenceLevel(QVariant rePeripheralConfidenceLevel)
{
    m_rePeripheralConfidenceLevel = rePeripheralConfidenceLevel;
}

QVariant MedicalResult::leMPEstimate() const
{
    return m_leMPEstimate;
}

void MedicalResult::setLeMPEstimate(QVariant leMPEstimate)
{
    m_leMPEstimate = leMPEstimate;
}

QVariant MedicalResult::leMPAbsolute() const
{
    return m_leMPAbsolute;
}

void MedicalResult::setLeMPAbsolute(QVariant leMPAbsolute)
{
    m_leMPAbsolute = leMPAbsolute;
}

QVariant MedicalResult::leMPAdjusted() const
{
    return m_leMPAdjusted;
}

void MedicalResult::setLeMPAdjusted(QVariant leMPAdjusted)
{
    m_leMPAdjusted = leMPAdjusted;
}

QVariant MedicalResult::leCentralConfidenceLevel() const
{
    return m_leCentralConfidenceLevel;
}

void MedicalResult::setLeCentralConfidenceLevel(QVariant leCentralConfidenceLevel)
{
    m_leCentralConfidenceLevel = leCentralConfidenceLevel;
}

QVariant MedicalResult::lePeripheralConfidenceLevel() const
{
    return m_lePeripheralConfidenceLevel;
}

void MedicalResult::setLePeripheralConfidenceLevel(QVariant lePeripheralConfidenceLevel)
{
    m_lePeripheralConfidenceLevel = lePeripheralConfidenceLevel;
}

MedicalResult::MedicalResult(const QVariant testResultNo, const QVariant testDate, QVariant testTime, QVariant testPatId, QVariant reMPEstimate, const QVariant reMPAbsolute, const QVariant reMPAdusted, const QVariant reCentralConfidenceLevel, const QVariant rePeripheralConfidenceLevel, const QVariant leMpEstimate, const QVariant leMpAbsolute, const QVariant leMpAdjusted, const QVariant leCentralConfidenceLevel, const QVariant lePeripheralConfidenceLevel)
{
    QString data = "";
    m_testResultNo = testResultNo;
    m_testDate = testDate;
    m_testTime = testTime;
    m_testPatientId = testPatId;
    m_reMPEstimate = reMPEstimate;
    m_reMpAbsolute = reMPAbsolute;
    m_reMPAdjusted = reMPAdusted;
    m_reCentralConfidenceLevel = reCentralConfidenceLevel;
    m_rePeripheralConfidenceLevel = rePeripheralConfidenceLevel;
    m_leMPEstimate = leMpEstimate;
    m_leMPAdjusted = leMpAdjusted;
    m_leMPAbsolute = leMpAbsolute;
    m_leCentralConfidenceLevel = leCentralConfidenceLevel;
    m_lePeripheralConfidenceLevel = lePeripheralConfidenceLevel;
}

MedicalTestModel::MedicalTestModel(QList<MedicalResult> medicalResults, QObject *parent)
{
    m_results = medicalResults;
}
MedicalTestModel::MedicalTestModel(QObject *parent)
{

}



void MedicalTestModel::addMedicalResult(const MedicalResult &result)
{
    beginInsertRows(QModelIndex(),rowCount(),rowCount());
    m_results<<result;
    endInsertRows();
}

bool MedicalTestModel::insertRows(int position, int rows, const QModelIndex &index)
{
    Q_UNUSED(index);
    beginInsertRows(QModelIndex(), position, position+rows-1);
    m_results.insert(position,MedicalResult(1,QDate::currentDate(),QTime::currentTime(),0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0));
    endInsertRows();
    return true;
}


bool MedicalTestModel::removeRows(int position, int rows, const QModelIndex &index)
{
    Q_UNUSED(index);
    Q_UNUSED(rows);
    beginRemoveRows(QModelIndex(), position, position+rows-1);
    m_results.removeAt(position);
    endRemoveRows();
    return true;
}


bool MedicalTestModel::setData(const QModelIndex &index, const QVariant &value, int role)
{
    if(index.isValid() && role == Qt::EditRole){
        int row = index.row();
        MedicalResult p = m_results.at(row);
        if(index.column() == 0)
            p.setTestResultNo(value.toLongLong());
        else if (index.column() == 1) {
            p.setTestDate(value.toDate());
        }
        else if (index.column() == 2) {
            p.setTestTime(value.toTime());
        }
        else if (index.column() == 3) {
            p.setTestPatientId(value.toLongLong());

        }
        else if (index.column() == 4) {
            p.setReMPEstimate(value.toDouble());
        }
        else if (index.column() == 5) {
            p.setReMpAbsolute(value.toDouble());

        }
        else if (index.column() == 6) {
            p.setReMPAdjusted(value.toDouble());

        }
        else if (index.column() == 7) {
            p.setReCentralConfidenceLevel(value.toDouble());
        }
        else if (index.column() == 8) {
            p.setLeMPEstimate(value.toDouble());

        }
        else if (index.column() == 9) {
            p.setLeMPAbsolute(value.toDouble());

        }
        else if (index.column() == 10) {
            p.setLeMPAdjusted(value.toDouble());

        }
        else if (index.column() == 11) {
            p.setLeCentralConfidenceLevel(value.toDouble());

        }
        else if (index.column() == 12) {
            p.setLePeripheralConfidenceLevel(value.toDouble());
        }
        else{
            return false;
        }
        m_results.replace(row,p);
        emit(dataChanged(index,index));
        return  true;

    }
    return  false;
}
int MedicalTestModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
//    if(m_results.count()< 14)
//    {
//        return 14;
//    }
    return m_results.count();
}

int MedicalTestModel::columnCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return 14;//m_results.count();
}

QVariant MedicalTestModel::data(const QModelIndex &index, int role) const
{
    int row = index.row();
    int col = index.column();
    qDebug()<<QString("row %1,col %2,role %3").arg(row).arg(col).arg(role);
    if(index.row() < 0 || index.row() >= m_results.count())
        return  QVariant();
    const MedicalResult &result = m_results[index.row()];
    if(role == HeadingRole){
        if(index.row() == 0)
        {
            return  true;
        }
        else {
            return  false;
        }}
    if(role == AcceptRejectRole)
    {
        switch (index.column()) {
        //case 0:
        //    break;
            //        case 1:
            //            if(result.leftValue().toString() == "Accept")
            //            {
            //                return  true;
            //            }
            //            else {
            //                return  false;
            //            }
            //        case 2:
            //            if(result.rightValue().toString() == "Accept")
            //            {
            //                return  true;
            //            }
            //            else {
            //                return  false;
            //            }
        default:
            qDebug() << "Not supposed to happen";
            return QVariant();

        }
    }
    switch (index.column()) {
    case 0:
        return  result.testResultNo();
    case 1:
        return  result.testDate();
    case 2:
        return  result.testTime();
    case 3:
        return  result.testPatientId();
    case 4:
        return  result.reMPEstimate();
    case 5:
        return  result.reMpAbsolute();
    case 6:
        return  result.reMPAdjusted();
    case 7:
        return  result.reCentralConfidenceLevel();
    case 8:
        return  result.rePeripheralConfidenceLevel();
    case 9:
        return  result.leMPEstimate();
    case 10:
        return  result.leMPAbsolute();
    case 11:
        return  result.leMPAdjusted();
    case 12:
        return  result.leCentralConfidenceLevel();
    case 13:
        return  result.lePeripheralConfidenceLevel();
    default:
        qDebug() << "Not supposed to happen";
        return QVariant();

    }
}


QVariant MedicalTestModel::headerData(int section, Qt::Orientation orientation, int role) const
{
    if (role != Qt::DisplayRole)
        return QVariant();

    if (orientation == Qt::Horizontal) {
        switch (section) {


       // case 0:
       //     return tr("TestResults");
        case 0:
            return tr("Test Result Number");
        case 1:
            return tr("TestDate");
        case 2:
            return tr( "TestTime");
        case 3:
            return tr("PatientId");
        case 4:
            return tr( "RE MP Estimate");
        case 5:
            return tr("RE MP Absolute");
        case 6:
            return tr("RE MP Adjusted");
        case 7:
            return tr( "RE Confidence Level");
        case 8:
            return tr( "RE Peripheral Confidence Level");
        case 9:
            return tr( "LE MP Estimate");
        case 10:
            return tr( "LE MP Absolute");
        case 11:
            return tr( "LE MP Adjusted");
        case 12:
            return tr( "LE Central Confidence Level");
        case 13:
            return tr( "LE Peripheral Confidence Level");
        default:
            return QVariant();
        }
    }
    return QVariant();
}


Qt::ItemFlags MedicalTestModel::flags(const QModelIndex &index) const
{
    if (!index.isValid())
        return Qt::ItemIsEnabled;

    return QAbstractTableModel::flags(index) | Qt::ItemIsEditable;
}

QHash<int, QByteArray> MedicalTestModel::roleNames() const
{
    QHash<int,QByteArray> roles;
    roles[Qt::DisplayRole] = "display";
    roles[TitleRole] = "TestResults";
    roles[ResultNoRole] = "TestResultNumber";
    roles[DateRole] = "TestDate";
    roles[TimeRole] = "TestTime";
    roles[PatIDRole] = "PatientId";
    roles[REMPEstimateRole] = "RE MP Estimate";
    roles[REMPAbsoluteRole] = "RE MP Absolute";
    roles[REMPAdjustedRole] = "RE MP Adjusted";
    roles[REMPCentralConfidenceRole] = "RE Confidence Level";
    roles[REMPPeripheralConfidenceRole] = "RE Peripheral Confidence Level";
    roles[LEMPEstimateRole] = "LE MP Estimate";
    roles[LEMPAbsoluteRole] = "LE MP Absolute";
    roles[LEMPAdjustedRole] = "LE MP Adjusted";
    roles[LECentralConfidenceRole] = "LE Central Confidence Level";
    roles[LEPeripheralConfidenceRole] = "LE Peripheral Confidence Level";
    roles[HeadingRole] = "heading";
    //roles[AcceptRejectRole] = "arRole";
    return  roles;
}
