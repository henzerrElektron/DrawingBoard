#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "plotdatapoint.h"
#include <QQmlContext>
#include <QVariant>
int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);
    plotDataPoint PlotPoint;
    QQmlApplicationEngine engine;
    engine.addImportPath("qrc:/");
    engine.addImportPath("qrc:/imports/");
    engine.addImportPath(":/");
    engine.addImportPath(":/imports/");
    engine.addImportPath( "qrc:/imports/ApplicationContstants" );
    engine.rootContext()->setContextProperty("PlotPoint",&PlotPoint);
    //engine.rootContext()->setContextProperty("PlotList",QVariant::fromValue&PlotPoint.xyPlotPoints()))
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
