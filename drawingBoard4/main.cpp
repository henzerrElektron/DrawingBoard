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
    SwitchPatientTableModel existingPatientModel;
    existingPatientModel.addExistingPatient(ExistingPatients("FirstName","SurName","Date","TestResults(R/L)","MedicalReference","Address"));
    existingPatientModel.addExistingPatient(ExistingPatients("Henzerr","vm0",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("Henzerr1","vm1",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("Henzerr2","vm2",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("Henzerr3","vm3",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("Henzerr4","vm4",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("Henzerr55","vm5",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("Henzerr6","vm6",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("Henzerr7","vm7",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("Henzerr8","vm8",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("Henzerr9","vm9",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("Henzerr10","vm10",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("Henzerr11","vm11",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("Henzerr12","vm12",QDate::currentDate(),1.857,"5632fggf424","Address1"));
    existingPatientModel.addExistingPatient(ExistingPatients("Henzerr13","vm13",QDate::currentDate(),1.857,"5632fggf424","Address1"));
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

    //QGuiApplication app(argc, argv);
    plotDataPoint PlotPoint;
    QQmlApplicationEngine engine;
    //engine.rootContext()->setContextProperty("availableStyles", QQuickStyle::availableStyles());
    engine.rootContext()->setContextProperty("theModel", &model);
    engine.rootContext()->setContextProperty("theModel1", &model1);
    engine.rootContext()->setContextProperty("theModel2", &model2);
    engine.rootContext()->setContextProperty("theSupplementModel",&supplementModel);
    engine.rootContext()->setContextProperty("theExistingPatientsModel",&existingPatientModel);
    qmlRegisterType<TestResultModels>("TestResultModels",0,1,"TestResultModels");
    qmlRegisterType<TestPageSupplementationModel>("TestPageSupplementationModel",0,1,"TestPageSupplementationModel");
    qmlRegisterType<SwitchPatientTableModel>("SwitchPatientTableModel",0,1,"SwitchPatientTableModel");
    engine.addImportPath("qrc:/");
    engine.addImportPath("qrc:/imports/");
    engine.addImportPath(":/");
    engine.addImportPath(":/imports/");
    engine.addImportPath( "qrc:/imports/ApplicationContstants" );


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
    QTableView view;
    view.setModel(&existingPatientModel);//(&supplementModel);//(&supplementModel);//(&model2);//Also test for other model1 and model
    view.show();
    return app.exec();
}
