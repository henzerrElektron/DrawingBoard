#ifndef SIGNALINVOKER_H
#define SIGNALINVOKER_H

#include <QObject>

class SignalInvoker : public QObject
{
    Q_OBJECT
    Q_DISABLE_COPY(SignalInvoker)
public:
    explicit SignalInvoker(QObject *parent = nullptr);
    static SignalInvoker *instance() ;
    ~SignalInvoker();
signals:
    Q_INVOKABLE void signalInvokeHome();
    Q_INVOKABLE void signalInvokeNewPatient();
    Q_INVOKABLE void signalInvokeViewPatient();
    Q_INVOKABLE void signalInvokeTestPatient();
    Q_INVOKABLE void signalInvokeViewReport();
    Q_INVOKABLE void signalInvokeOperator();

public slots:
private:
    static SignalInvoker* m_instance;
};

#endif // SIGNALINVOKER_H
