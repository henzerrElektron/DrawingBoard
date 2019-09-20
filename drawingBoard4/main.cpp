#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "plotdatapoint.h"
#include <QQmlContext>
#include <QVariant>
#include <testresultmodels.h>
#include <testpagesupplementationmodel.h>
#include <switchpatienttablemodel.h>
#include <QTableView>
#include <QApplication>
#include <QSettings>
#include <QQuickStyle>
#include <QDebug>
#include <QDir>
#include "medicaltestmodel.h"
#include "patientresultmodel.h"
#include "sortfiltermodel.h"
int main(int argc, char *argv[])
{
    QApplication app(argc, argv);
    QGuiApplication::setApplicationName("MPSRewrite");
    QGuiApplication::setOrganizationName("EET");
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
    QIcon::setThemeName("all");
    QQuickStyle::setStyle("Material");
    QStringList list;
    //list<<":/icons";
    //list<<":/icons/small";
    //list<<"/usr/share/icons";
    //QIcon::setThemeSearchPaths(list);
    qDebug()<<QIcon::themeSearchPaths();
    QDir dir(":/");
    for (auto entry : dir.entryList()) {
        qWarning() << "Found entry in resources:" << entry;
    }
    //    QSettings settings;
    //    QString style = QQuickStyle::name();
    //    if (!style.isEmpty())
    //        settings.setValue("style", style);
    //    else
    //        QQuickStyle::setStyle(settings.value("style").toString());
    MedicalTestModel medTestModel;
    medTestModel.addMedicalResult(MedicalResult("TestResultNo","TestDate","TestTime","PatientId","RE MP Estimate","RE  MP Absolute","RE MP Adjusted","RE Central Confidence Level","RE Peripheral Confidence Level","LE MP Estimate","LE MP Absolute","LE MP Adjusted","LE Central Confidence Level","LE Peripheral Confidence Level"));
    medTestModel.addMedicalResult(MedicalResult(1,QDate::currentDate().toString("dd-MM-yyyy"),QTime::currentTime().toString("mm:hh"),1,1.01,2.02,3.03,4.05,5.06,7.07,8.07,3.56,2.69,3.34));
    medTestModel.addMedicalResult(MedicalResult(2,QDate::currentDate().toString("dd-MM-yyyy"),QTime::currentTime().toString("mm:hh"),2,2.01,3.02,4.03,5.05,6.06,8.07,9.07,11.56,1.69,13.34));
    medTestModel.addMedicalResult(MedicalResult(3,QDate::currentDate().toString("dd-MM-yyyy"),QTime::currentTime().toString("mm:hh"),3,3.01,4.02,5.03,6.05,7.06,9.07,11.07,21.56,18.69,19.34));
    medTestModel.addMedicalResult(MedicalResult(4,QDate::currentDate().toString("dd-MM-yyyy"),QTime::currentTime().toString("mm:hh"),4,5.01,6.02,7.03,6.05,6.06,8.07,9.07,11.56,1.69,43.34));
    medTestModel.addMedicalResult(MedicalResult(5,QDate::currentDate().toString("dd-MM-yyyy"),QTime::currentTime().toString("mm:hh"),5,2.01,5.02,6.03,5.05,6.06,8.07,9.07,11.56,1.69,16.34));
    medTestModel.addMedicalResult(MedicalResult(6,QDate::currentDate().toString("dd-MM-yyyy"),QTime::currentTime().toString("mm:hh"),6,6.01,3.02,4.03,5.05,6.06,18.07,2.47,17.56,1.29,14.34));
    medTestModel.addMedicalResult(MedicalResult(7,QDate::currentDate().toString("dd-MM-yyyy"),QTime::currentTime().toString("mm:hh"),7,2.01,7.02,3.03,0.05,5.06,38.07,19.07,15.56,1.349,13.34));
    medTestModel.addMedicalResult(MedicalResult(8,QDate::currentDate().toString("dd-MM-yyyy"),QTime::currentTime().toString("mm:hh"),8,2.01,3.02,4.03,6.05,3.06,48.07,2.67,21.56,1.59,15.34));


    PatientResultModel leftpatResultModel;
    leftpatResultModel.addPatientResult(PatientResult("TestResultNo","TestDate","TestTime","MP Estimate","MP Absolute","MP Adjusted"));
    leftpatResultModel.addPatientResult(PatientResult(1,QDate::currentDate().toString("dd-MM-yyyy"),QTime::currentTime().toString("mm:hh"),3.034,6.029,1.03));
    leftpatResultModel.addPatientResult(PatientResult(2,QDate::currentDate().toString("dd-MM-yyyy"),QTime::currentTime().toString("mm:hh"),6.134,7.029,2.03));
    leftpatResultModel.addPatientResult(PatientResult(3,QDate::currentDate().toString("dd-MM-yyyy"),QTime::currentTime().toString("mm:hh"),2.134,4.029,3.03));
    leftpatResultModel.addPatientResult(PatientResult(4,QDate::currentDate().toString("dd-MM-yyyy"),QTime::currentTime().toString("mm:hh"),1.034,8.029,7.03));

    PatientResultModel rightPatResultModel;
    rightPatResultModel.addPatientResult(PatientResult("TestResultNo","TestDate","TestTime","MP Estimate","MP Absolute","MP Adjusted"));
    rightPatResultModel.addPatientResult(PatientResult(1,QDate::currentDate().toString("dd-MM-yyyy"),QTime::currentTime().toString("mm:hh"),3.1232,4.121,0.23));
    rightPatResultModel.addPatientResult(PatientResult(2,QDate::currentDate().toString("dd-MM-yyyy"),QTime::currentTime().toString("mm:hh"),1.43,21.21,1.121));
    rightPatResultModel.addPatientResult(PatientResult(3,QDate::currentDate().toString("dd-MM-yyyy"),QTime::currentTime().toString("mm:hh"),1.2,2.3,0.21));
    rightPatResultModel.addPatientResult(PatientResult(4,QDate::currentDate().toString("dd-MM-yyyy"),QTime::currentTime().toString("mm:hh"),1.33,4.22,1.221));




    SwitchPatientTableModel existingPatientModel;
    // existingPatientModel.addExistingPatient(ExistingPatients("FirstName","SurName","Date","TestResults(R/L)","MedicalReference","Address"));
    existingPatientModel.addExistingPatient(ExistingPatients("Abc","vm0",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("Bat","vm1",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("Bcd","vm2",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("Bod","vm3",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("falu","vm4",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("meerou","vm5",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("zolnkee","vm6",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("ferdoshi","vm7",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("manshui","vm8",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("perefal","vm9",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("vazhlour","vm10",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("feafrvv","vm11",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("erfavlue","vm12",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("negala","vm13",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("CVDFGDAbc","vm0",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("DFGDFGBat","vm1",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("DFVDFGBcd","vm2",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("DFGBod","vm3",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("FGDFGfalu","vm4",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("FDGDFGmeerou","vm5",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("DFGVDGzolnkee","vm6",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("ASGFDGferdoshi","vm7",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("DFCGmanshui","vm8",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("DFGDFGperefal","vm9",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("DFGvazhlour","vm10",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("GDFGfeafrvv","vm11",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("DFGerfavlue","vm12",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("DFGnegala","vm13",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("DFGAbc","vm0",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("DFGDBat","vm1",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("FDDFGBcd","vm2",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("DDFGBod","vm3",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("DFGfalu","vm4",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("meerou","vm5",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("zolnkee","vm6",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("ferdoshi","vm7",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("manshui","vm8",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("perefal","vm9",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("vazhlour","vm10",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("feafrvv","vm11",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("erfavlue","vm12",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("negala","vm13",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("SDFSFAbc","vm0",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("SDFBat","vm1",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("EWRWERBcd","vm2",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("EWRBod","vm3",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("WERfalu","vm4",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("ACSVmeerou","vm5",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("BDVzolnkee","vm6",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("REWRferdoshi","vm7",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("HNHGNmanshui","vm8",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("DFDFperefal","vm9",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("AFFFvazhlour","vm10",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("VFDFfeafrvv","vm11",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("HFRTGRTerfavlue","vm12",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("FGDDFGREnegala","vm13",QDate::currentDate(),1.857,"5632fggf424","Address1"));

    TestPageSupplementationModel supplementModel;
    supplementModel.addSupplement(Supplementation("Date","Dosage","PerDay","Description"));
    supplementModel.addSupplement(Supplementation(QDate::currentDate(),"test",1,"testing"));
    supplementModel.addSupplement(Supplementation(QDate::currentDate(),"test",1,"testing"));
    TestResultModels model;// = nullptr;
    model.addResult(Result("ConfidenceLevel","Right","Left"));
    model.addResult(Result("Central","Accept","Reject"));
    model.addResult(Result("Peripheral","Accept","Reject"));
    //    model.addResult(Result("Mp Value","",""));
    //    model.addResult(Result("Estimated",0.67,0.57));
    //    model.addResult(Result("Absolute",0.78,0.49));
    //    model.addResult(Result("Graph Adjusted",0.78,0.49));
    //    model.addResult(Result("Parameters","",""));
    //    model.addResult(Result("Central Sensitivity (Hz)",33.67,0.57));
    //    model.addResult(Result("Central Minima (dB)",7.78,0.49));
    //    model.addResult(Result("Graph Adjusted",28.78,0.49));
    //    model.addResult(Result("PeripheralMinima (dB)",5.18,3.17));
    TestResultModels model1;// = nullptr;
    model1.addResult(Result("Mp Value","",""));
    model1.addResult(Result("Estimated",0.67,0.57));
    model1.addResult(Result("Absolute",0.78,0.49));
    model1.addResult(Result("Graph Adjusted",0.78,0.49));
    TestResultModels model2;// = nullptr;
    model2.addResult(Result("Parameters","",""));
    model2.addResult(Result("Central Sensitivity (Hz)",33.67,0.57));
    model2.addResult(Result("Central Minima (dB)",7.78,0.49));
    model2.addResult(Result("Graph Adjusted",28.78,0.49));
    model2.addResult(Result("PeripheralMinima (dB)",5.18,3.17));
    FilterProxyModel filterModel;
    filterModel.setSourceModel(&existingPatientModel);
    filterModel.setFilterRole(FirstNameRole);
    filterModel.setSortRole(FirstNameRole);
    FilterProxyModel filterModel1;
    filterModel1.setSourceModel(&existingPatientModel);
    filterModel1.setFilterRole(SecNameRole);
    filterModel1.setSortRole(SecNameRole);
    FilterProxyModel filterModel2;
    filterModel2.setSourceModel(&existingPatientModel);
    filterModel2.setFilterRole(MedRefRole);
    filterModel2.setSortRole(MedRefRole);
    //QGuiApplication app(argc, argv);
    plotDataPoint PlotPoint;
    QQmlApplicationEngine engine;
    QStringList dataList;
    dataList.append("Item 1");
    dataList.append("Item 2");
    dataList.append("Item 3");
    dataList.append("Item 4");
    //engine.rootContext()->setContextProperty("availableStyles", QQuickStyle::availableStyles());
    engine.rootContext()->setContextProperty("theModel", &model);
    engine.rootContext()->setContextProperty("theModel1", &model1);
    engine.rootContext()->setContextProperty("theModel2", &model2);
    engine.rootContext()->setContextProperty("theSupplementModel",&supplementModel);
    engine.rootContext()->setContextProperty("theExistingPatientsModel",&existingPatientModel);
    engine.rootContext()->setContextProperty("theRightPatientResultModel",&rightPatResultModel);
    engine.rootContext()->setContextProperty("theLeftPatientResultModel",&leftpatResultModel);
    engine.rootContext()->setContextProperty("theMedicalTestModel",&medTestModel);
    engine.rootContext()->setContextProperty("filterModel",&filterModel);
    engine.rootContext()->setContextProperty("filterModel",&filterModel1);
    engine.rootContext()->setContextProperty("filterModel",&filterModel2);
    engine.rootContext()->setContextProperty("myModel", QVariant::fromValue(dataList));
    qmlRegisterType<TestResultModels>("TestResultModels",0,1,"TestResultModels");
    qmlRegisterType<TestPageSupplementationModel>("TestPageSupplementationModel",0,1,"TestPageSupplementationModel");
    qmlRegisterType<SwitchPatientTableModel>("SwitchPatientTableModel",0,1,"SwitchPatientTableModel");
    qmlRegisterType<MedicalTestModel>("MedicalTestModel",0,1,"MedicalTestModel");
    qmlRegisterType<PatientResultModel>("PatientResultModel",0,1,"PatientResultModel");
    qmlRegisterType<SortFilterModel>("SortFilterModel",0,1,"SortFilterModel");
    //qmlRegisterSingletonType(QUrl("qrc:/imports/ApplicationConstants/IntegerConstants.qml"),"ApplicationIntegerConstants",1,0,"IntegerConstants");
    //qmlRegisterSingletonType(QUrl("qrc:/imports/ApplicationConstants/StringConstants.qml"),"ApplicationStringConstants",1,0,"StringConstants");
    //qmlRegisterSingletonType(QUrl("qrc:/imports/ApplicationConstants/OtherConstants.qml"),"ApplicationOtherConstants",1,0,"OtherConstants");

    engine.addImportPath("qrc:/");
    engine.addImportPath("qrc:/imports/");
    engine.addImportPath(":/");
    engine.addImportPath(":/imports/");
    engine.addImportPath("qrc:/imports/ApplicationConstants");
    engine.addImportPath(":/imports/ApplicationConstants");
    engine.addImportPath("qrc:/imports/ApplicationConstants/");
    engine.addImportPath(":/imports/ApplicationConstants/");
    engine.addImportPath( "qrc:///imports/ApplicationConstants" );
    engine.addImportPath( "qrc:///imports/ApplicationConstants/" );

    engine.addImportPath("qrc:/");
    engine.addImportPath("qrc:/models/");
    engine.addImportPath(":/");
    engine.addImportPath(":/models/");
    engine.addImportPath( "qrc:/models/" );
    engine.addImportPath(":/page/");
    engine.addImportPath( "qrc:/page/" );
    engine.addImportPath(":/common/");
    engine.addImportPath( "qrc:/common/" );
    engine.rootContext()->setContextProperty("PlotPoint",&PlotPoint);
    //engine.rootContext()->setContextProperty("PlotList",QVariant::fromValue&PlotPoint.xyPlotPoints()))
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);
    //QTableView view;
    //view.setModel(&leftpatResultModel);//&medTestModel//(&supplementModel);//(&supplementModel);//(&model2);//Also test for other model1 and model
    //view.show();
    return app.exec();
}
