#include "switchpatienttablemodel.h"
#include <QDebug>

QVariant ExistingPatients::firstName() const
{
    return m_firstName;
}

void ExistingPatients::setFirstName(const QVariant &firstName)
{
    m_firstName = firstName;
}

QVariant ExistingPatients::secName() const
{
    return m_secName;
}

void ExistingPatients::setSecName(const QVariant &secName)
{
    m_secName = secName;
}

QVariant ExistingPatients::dob() const
{
    return m_dob;
}

void ExistingPatients::setDob(const QVariant &dob)
{
    m_dob = dob;
}

QVariant ExistingPatients::testResult() const
{
    return m_testResult;
}

void ExistingPatients::setTestResult(const QVariant &testResult)
{
    m_testResult = testResult;
}

QVariant ExistingPatients::medRef() const
{
    return m_medRef;
}

void ExistingPatients::setMedRef(const QVariant &medRef)
{
    m_medRef = medRef;
}

QVariant ExistingPatients::address() const
{
    return m_address;
}

void ExistingPatients::setAddress(const QVariant &address)
{
    m_address = address;
}

SwitchPatientTableModel::SwitchPatientTableModel(QList<ExistingPatients> existingPatients, QObject *parent)
{
    m_existingPatients = existingPatients;
}

SwitchPatientTableModel::SwitchPatientTableModel(QObject *parent) //: QObject(parent)
{

}

ExistingPatients::ExistingPatients(const QVariant &firstName, const QVariant secName, const QVariant dob, const QVariant testResult, const QVariant medRef, const QVariant address)
{
    m_firstName = firstName;
    m_secName = secName;
    m_dob = dob;
    m_testResult = testResult;
    m_medRef = medRef;
    m_address = address;
    qDebug()<<"The values for date is"<<m_firstName.toString();
    qDebug()<<"The values for dosage is"<<m_secName.toString();
    qDebug()<<"The values for per day is"<<m_dob.toDate();
    qDebug()<<"The values for description is"<<m_testResult.toInt();
    qDebug()<<"The values for med ref is"<<m_medRef.toString();
    qDebug()<<"The values for address is"<<m_address.toString();
}

void SwitchPatientTableModel::addExistingPatient(const ExistingPatients &existingPatients)
{
    beginInsertRows(QModelIndex(),rowCount(),rowCount());
    m_existingPatients<<existingPatients;
    endInsertRows();
}

bool SwitchPatientTableModel::insertRows(int position, int rows, const QModelIndex &index)
{
    Q_UNUSED(index);
    beginInsertRows(QModelIndex(), position, position+rows-1);
    m_existingPatients.insert(position,ExistingPatients("Fn","Sn",QDate::currentDate(),1.05,14434435,"32 bridgegate"));
    endInsertRows();
    return true;
}

bool SwitchPatientTableModel::removeRows(int position, int rows, const QModelIndex &index)
{
    Q_UNUSED(index);
    Q_UNUSED(rows);
    beginRemoveRows(QModelIndex(), position, position+rows-1);
    m_existingPatients.removeAt(position);
    endRemoveRows();
    return true;
}

bool SwitchPatientTableModel::setData(const QModelIndex &index, const QVariant &value, int role)
{
    if (index.isValid() && role == Qt::EditRole) {
        int row = index.row();

        ExistingPatients p = m_existingPatients.at(row);

        if (index.column() == 0)
            p.setFirstName(value.toString());
        else if (index.column() == 1)
            p.setSecName(value.toString());
        else if (index.column() == 2)
            p.setDob(value.toDate());
        else if (index.column() == 3)
            p.setTestResult(value.toInt());
        else if (index.column() == 4)
            p.setMedRef(value.toString());
        else if (index.column() == 5)
            p.setAddress(value.toString());
        else
            return false;
        m_existingPatients.replace(row, p);
        emit(dataChanged(index, index));

        return true;
    }

    return false;
}

int SwitchPatientTableModel::rowCount(const QModelIndex &parent) const
{
    if (parent.isValid())
        return 0;
    return m_existingPatients.count();
}

int SwitchPatientTableModel::columnCount(const QModelIndex &parent) const
{
    if (parent.isValid())
        return 0;
    return 6;//m_supplement.count();//3
}
QVariant SwitchPatientTableModel::data(const QModelIndex &index, int role) const
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
    qDebug()<<QString("row %1,col%2, role%3 role%4 %5").arg(row).arg(col).arg(role).arg(index.row()).arg(index.column());
    if (index.row() < 0 || index.row() >= m_existingPatients.count())
        return QVariant();
    const ExistingPatients &existingPatient = m_existingPatients[index.row()];
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
            if(existingPatient.firstName().toString() == "Accept")
            {
                return  true;
            }
            else {
                return  false;
            }
        case 2:
            if(existingPatient.secName().toString() == "Accept")
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
        switch(index.column())
        {
        //case 0:
        //    return tr("heading");
        case 0:
            return existingPatient.firstName();
        case 1:
            return existingPatient.secName();
        case 2:
            return  existingPatient.dob();
        case 3:
            return  existingPatient.testResult();
        case 4:
            return  existingPatient.medRef();
        case 5:
            return  existingPatient.address();
        default:   break;}
    break;
    case FirstNameRole:  return existingPatient.firstName() ;
    case SecNameRole: return existingPatient.secName();
    case DobRole:return existingPatient.dob();
    case MedRefRole: return existingPatient.medRef();
    case AddressRole: return existingPatient.address();
    case TestResultsRole:return existingPatient.testResult();
    default: break;
        //    default:
        //        qDebug() << "Not supposed to happen";
        //        return QVariant();
    }
   // if((role == Qt::DisplayRole)||(role == HeadingRole))
    {
        switch(index.column())
        {
        //case 0:
        //    return tr("heading");
        case 0:
            return existingPatient.firstName();
        case 1:
            return existingPatient.secName();
        case 2:
            return  existingPatient.dob();
        case 3:
            return  existingPatient.testResult();
        case 4:
            return  existingPatient.medRef();
        case 5:
            return  existingPatient.address();
        default:   break;
        //case 6:
        //    return  tr("arRole");
        //default:
       //     qDebug() << "Not supposed to happen";
        //    return QVariant();
        }
    }
    return QVariant();
    //if (role != Qt::DisplayRole)
    //       return {};
    //   return m_existingPatients.getData(index.row(), index.column());
}
QVariant SwitchPatientTableModel::headerData(int section, Qt::Orientation orientation, int role) const
{
    if (role != Qt::DisplayRole)
        return QVariant();

    if (orientation == Qt::Horizontal) {
        switch (section) {
        case 0:
            return tr("heading");
        case 1:
            return tr("First name");
        case 2:
            return tr("Surname");
        case 3:
            return  tr("Date of Birth");
        case 4:
            return  tr("Test results");
        case 5:
            return  tr("Medical Reference");
        case 6:
            return  tr("Address");
        case 7:
            return  tr("arRole");
        default:
            return QVariant();
        }
    }
    return QVariant();
}

Qt::ItemFlags SwitchPatientTableModel::flags(const QModelIndex &index) const
{
    if (!index.isValid())
        return Qt::ItemIsEnabled;

    return QAbstractTableModel::flags(index) | Qt::ItemIsEditable;
}

QHash<int, QByteArray> SwitchPatientTableModel::roleNames() const
{
    QHash<int,QByteArray> roles;
    roles[Qt::DisplayRole]= "display";
    roles[AcceptRejectRole]="arRole";
    roles[HeadingRole] = "heading";
    roles[FirstNameRole] = "First name";
    roles[SecNameRole] = "Surname";
    roles[DobRole] = "Date of Birth";
    roles[TestResultsRole] = "Test Results";
    roles[AddressRole] = "Address";
    roles[MedRefRole] = "Medical Reference";
    // roles[AcceptRejectRole] = "arRole";
    return  roles;
}
