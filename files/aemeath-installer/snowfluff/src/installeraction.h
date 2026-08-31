#pragma once

#include <QObject>
#include <QQmlEngine>
#include <KAuth/ExecuteJob>

using namespace KAuth;

class InstallerAction : public QObject
{
    Q_OBJECT
    QML_ELEMENT
    Q_PROPERTY(unsigned long progress READ progress WRITE setProgress NOTIFY progressChanged)
public:
    explicit InstallerAction(QObject* parent = nullptr);
    ~InstallerAction();
    unsigned long progress();
    void setProgress(unsigned long val);
    Q_INVOKABLE void startInstallation(QString deviceTarget);
private:
    ExecuteJob *installJob;
    unsigned long m_progress;
Q_SIGNALS:
    void progressChanged(unsigned long val);
    void installStatus(bool isError, QString stdout, QString stderr);
};
