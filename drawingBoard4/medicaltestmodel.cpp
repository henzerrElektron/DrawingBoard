#include "medicaltestmodel.h"
#include <QDebug>


QList<MedicalResult> medicalTestModel::results() const
{
    return m_results;
}

void medicalTestModel::setResults(const QList<MedicalResult> &results)
{
    m_results = results;
}


qlonglong MedicalResult::testResultNo() const
{
    return m_testResultNo;
}

void MedicalResult::setTestResultNo(qlonglong testResultNo)
{
    m_testResultNo = testResultNo;
}

QDate MedicalResult::testDate() const
{
    return m_testDate;
}

void MedicalResult::setTestDate(const QDate &testDate)
{
    m_testDate = testDate;
}

QTime MedicalResult::testTime() const
{
    return m_testTime;
}

void MedicalResult::setTestTime(const QTime &testTime)
{
    m_testTime = testTime;
}

qlonglong MedicalResult::testPatientId() const
{
    return m_testPatientId;
}

void MedicalResult::setTestPatientId(qlonglong testPatientId)
{
    m_testPatientId = testPatientId;
}

double MedicalResult::reMPEstimate() const
{
    return m_reMPEstimate;
}

void MedicalResult::setReMPEstimate(double reMPEstimate)
{
    m_reMPEstimate = reMPEstimate;
}

double MedicalResult::reMpAbsolute() const
{
    return m_reMpAbsolute;
}

void MedicalResult::setReMpAbsolute(double reMpAbsolute)
{
    m_reMpAbsolute = reMpAbsolute;
}

double MedicalResult::reMPAdjusted() const
{
    return m_reMPAdjusted;
}

void MedicalResult::setReMPAdjusted(double reMPAdjusted)
{
    m_reMPAdjusted = reMPAdjusted;
}

double MedicalResult::reCentralConfidenceLevel() const
{
    return m_reCentralConfidenceLevel;
}

void MedicalResult::setReCentralConfidenceLevel(double reCentralConfidenceLevel)
{
    m_reCentralConfidenceLevel = reCentralConfidenceLevel;
}

double MedicalResult::rePeripheralConfidenceLevel() const
{
    return m_rePeripheralConfidenceLevel;
}

void MedicalResult::setRePeripheralConfidenceLevel(double rePeripheralConfidenceLevel)
{
    m_rePeripheralConfidenceLevel = rePeripheralConfidenceLevel;
}

double MedicalResult::leMPEstimate() const
{
    return m_leMPEstimate;
}

void MedicalResult::setLeMPEstimate(double leMPEstimate)
{
    m_leMPEstimate = leMPEstimate;
}

double MedicalResult::leMPAbsolute() const
{
    return m_leMPAbsolute;
}

void MedicalResult::setLeMPAbsolute(double leMPAbsolute)
{
    m_leMPAbsolute = leMPAbsolute;
}

double MedicalResult::leMPAdjusted() const
{
    return m_leMPAdjusted;
}

void MedicalResult::setLeMPAdjusted(double leMPAdjusted)
{
    m_leMPAdjusted = leMPAdjusted;
}

double MedicalResult::leCentralConfidenceLevel() const
{
    return m_leCentralConfidenceLevel;
}

void MedicalResult::setLeCentralConfidenceLevel(double leCentralConfidenceLevel)
{
    m_leCentralConfidenceLevel = leCentralConfidenceLevel;
}

double MedicalResult::lePeripheralConfidenceLevel() const
{
    return m_lePeripheralConfidenceLevel;
}

void MedicalResult::setLePeripheralConfidenceLevel(double lePeripheralConfidenceLevel)
{
    m_lePeripheralConfidenceLevel = lePeripheralConfidenceLevel;
}

MedicalResult::MedicalResult(const qlonglong testResultNo, const QDate testDate, QTime testTime, qlonglong testPatId, double reMPEstimate, const double reMPAbsolute, const double reMPAdusted, const double reCentralConfidenceLevel, const double rePeripheralConfidenceLevel, const double leMpEstimate, const double leMpAbsolute, const double leMpAdjusted, const double leCentralConfidenceLevel, const double lePeripheralConfidenceLevel)
{
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

medicalTestModel::medicalTestModel(QList<MedicalResult> medicalResults, QObject *parent)
{
    m_results = medicalResults;
}
medicalTestModel::medicalTestModel(QObject *parent)
{

}



void medicalTestModel::addMedicalResult(const MedicalResult &result)
{
    beginInsertRows(QModelIndex(),rowCount(),rowCount());
    m_results<<result;
    endInsertRows();
}

bool medicalTestModel::insertRows(int position, int rows, const QModelIndex &index)
{
    Q_UNUSED(index);
    beginInsertRows(QModelIndex(), position, position+rows-1);
    m_results.insert(position,MedicalResult(1,QDate::currentDate(),QTime::currentTime(),0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0,0.0));
    endInsertRows();
    return true;
}


bool medicalTestModel::removeRows(int position, int rows, const QModelIndex &index)
{
    Q_UNUSED(index);
    Q_UNUSED(rows);
    beginRemoveRows(QModelIndex(), position, position+rows-1);
    m_results.removeAt(position);
    endRemoveRows();
    return true;
}


bool medicalTestModel::setData(const QModelIndex &index, const QVariant &value, int role)
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
int medicalTestModel::rowCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return m_results.count();
}

int medicalTestModel::columnCount(const QModelIndex &parent) const
{
    Q_UNUSED(parent);
    return 13;//m_results.count();
}

QVariant medicalTestModel::data(const QModelIndex &index, int role) const
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


QVariant medicalTestModel::headerData(int section, Qt::Orientation orientation, int role) const
{
    if (role != Qt::DisplayRole)
        return QVariant();

    if (orientation == Qt::Horizontal) {
        switch (section) {


        case 0:
            return tr("TestResults");
        case 1:
            return tr("TestResultNumber");
        case 2:
            return tr("TestDate");
        case 3:
            return tr( "TestTime");
        case 4:
            return tr("PatientId");
        case 5:
            return tr( "RE MP Estimate");
        case 6:
            return tr("RE MP Absolute");
        case 7:
            return tr("RE MP Adjusted");
        case 8:
            return tr( "RE Confidence Level");
        case 9:
            return tr( "RE Peripheral Confidence Level");
        case 10:
            return tr( "LE MP Estimate");
        case 11:
            return tr( "LE MP Absolute");
        case 12:
            return tr( "LE MP Adjusted");
        case 13:
            return tr( "LE Central Confidence Level");
        case 14:
            return tr( "LE Peripheral Confidence Level");
        default:
            return QVariant();
        }
    }
    return QVariant();
}


Qt::ItemFlags medicalTestModel::flags(const QModelIndex &index) const
{
    if (!index.isValid())
        return Qt::ItemIsEnabled;

    return QAbstractTableModel::flags(index) | Qt::ItemIsEditable;
}

QHash<int, QByteArray> medicalTestModel::roleNames() const
{
    QHash<int,QByteArray> roles;
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
    roles[AcceptRejectRole] = "arRole";
    return  roles;
}
