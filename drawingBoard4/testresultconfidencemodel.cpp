#include "testresultconfidencemodel.h"

TestResultConfidenceModel::TestResultConfidenceModel(QObject *parent)
    : QAbstractTableModel(parent)
{
}

QVariant TestResultConfidenceModel::headerData(int section, Qt::Orientation orientation, int role) const
{
    if(role == Qt::DisplayRole){
        if(orientation == Qt::Horizontal)
        {

            if(section == 0)
            {
                return  "Left";
            }
            if(section == 1)
            {
                return  "Right";
            }
            return  QString("hor-%1").arg(section);

        }
        else if(orientation == Qt::Vertical)
        {
            if(section == 0)
            {
                return  "Confidence Level";
            }
            if(section == 1)
            {
                return  "Central";
            }
            if(section == 2)
            {
                return "Peripheral";
            }
            if(section == 3)
            {
                return "MP Value";
            }
            if(section == 4)
            {
                return  "Estimated";
            }
            if(section == 5)
            {
                return  "Absolute";
            }
            if(section == 6)
            {
                return  "Graph Adjusted";
            }
            if(section == 7)
            {
                return  "Parameters";
            }
            if(section == 8)
            {
                return  "Central Sensitivity (Hz)";
            }
            if(section == 9)
            {
                return  "Central Minima (dB)";
            }
            if(section == 10)
            {
                return  "Peripheral Sensitivity (Hz)";
            }
            if(section == 11)
            {
                return  "Peripheral Minima (dB)";
            }
            return QString("ver-%1").arg(section);
        }
    }
    return QVariant();
}

int TestResultConfidenceModel::rowCount(const QModelIndex &parent) const
{
    if (parent.isValid())
        return 0;
    return 15;
}

int TestResultConfidenceModel::columnCount(const QModelIndex &parent) const
{
    if (parent.isValid())
        return 0;
    return 2;
}

QVariant TestResultConfidenceModel::data(const QModelIndex &index, int role) const
{
    if (!index.isValid())
        return QVariant();
    //    if(role == HeadingRole)
    //    {
    //        if( index.row()==0)
    //        {
    //            return true;
    //        }
    //        else
    //        {
    //            return false;
    //        }
    //    }
    if(role == HeadingRole)
    {
        if((index.row() == 3)||(index.row() == 7)){
            if((index.column() == 0)||(index.column() == 1))
            {
                return true;
            }
        }
        else
        {
            return false;
        }
    }
    //    if(role == DecorationRole)
    //    {
    //        // int rowValue = index.row();
    //        int colValue = index.column();
    //        if(index.row() == 0)
    //        {
    //            if(colValue ==0 )
    //            {
    //                return QColor(5,6,255);//"green";
    //            }
    //            if(colValue ==1)
    //            {
    //                return QColor(5,6,255);
    //            }
    //            // return  "green";
    //        }
    //        if(index.row() == 3)
    //        {
    //            if(colValue ==0 )
    //            {
    //                return QColor(5,6,255);
    //            }
    //            if(colValue ==1)
    //            {
    //                return QColor(5,6,255);
    //            }
    //            // return  "red";
    //        }
    //        if(index.row() == 7)
    //        {
    //            if(colValue ==0 )
    //            {
    //                return QColor(5,6,255);
    //            }
    //            if(colValue ==1)
    //            {
    //                return QColor(5,6,255);
    //            }
    //            //return  "blue";
    //        }
    //        else {
    //            return  QColor(5,6,255);
    //        }
    //    }
    if(role == Qt::DisplayRole
            && index.row() >= 0 && index.row() < rowCount()
            && index.column() >= 0 && index.column() < columnCount())
    {
        int rowValue = index.row();
        int colValue = index.column();
        if(rowValue == 0 )
        {
            if(colValue ==0 )
            {
                return "00";
            }
            if(colValue ==1)
            {
                return "01";
            }
        }
        if(rowValue ==1)
        {
            if(colValue ==0 )
            {
                return "10";
            }
            if(colValue ==1)
            {
                return "11";
            }
        }
        if(rowValue ==2)
        {
            if(colValue ==0 )
            {
                return "20";
            }
            if(colValue ==1)
            {
                return "21";
            }
        }
        if(rowValue ==3)
        {
            if(colValue ==0 )
            {
                return "Left";
            }
            if(colValue ==1)
            {
                return "Right";
            }
        }
        if(rowValue ==4)
        {
            if(colValue ==0 )
            {
                return "40";
            }
            if(colValue ==1)
            {
                return "41";
            }
        }
        if(rowValue ==5)
        {if(colValue ==0 )
            {
                return "50";
            }
            if(colValue ==1)
            {
                return "51";
            }
        }
        if(rowValue ==6)
        {
            if(colValue ==0 )
            {
                return "60";
            }
            if(colValue ==1)
            {
                return "61";
            }
        }
        if(rowValue ==7)
        {
            if(colValue ==0 )
            {
                return "Left";
            }
            if(colValue ==1)
            {
                return "Right";
            }
        }
        if(rowValue ==8)
        {
            if(colValue ==0 )
            {
                return "80";
            }
            if(colValue ==1)
            {
                return "81";
            }
        }
        if(rowValue ==9)
        {
            if(colValue ==0 )
            {
                return "90";
            }
            if(colValue ==1)
            {
                return "91";
            }
        }
        if(rowValue ==10)
        {
            if(colValue ==0 )
            {
                return "90";
            }
            if(colValue ==1)
            {
                return "91";
            }
        }
        if(rowValue ==11)
        {
            if(colValue ==0 )
            {
                return "90";
            }
            if(colValue ==1)
            {
                return "91";
            }
        }
        return QString("data %1-%2").arg(index.row()).arg(index.column());
    }
    return QVariant();
}

QHash<int, QByteArray> TestResultConfidenceModel::roleNames() const
{
    QHash<int,QByteArray> roles;
    roles[Qt::DisplayRole]= "display";
    roles[HeadingRole] = "heading";
    roles[DecorationRole] = "decoration";
    //roles[BackgroundRole] = "background";
    return  roles;
}

