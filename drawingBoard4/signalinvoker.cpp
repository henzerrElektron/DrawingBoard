#include "signalinvoker.h"
SignalInvoker* SignalInvoker::m_instance = nullptr ;
SignalInvoker::SignalInvoker(QObject *parent) : QObject(parent)
{

}
SignalInvoker *SignalInvoker::instance()
{
    if(nullptr == m_instance)
    {
        m_instance = new SignalInvoker();
    }
    return m_instance;
}

SignalInvoker::~SignalInvoker()
{

}
