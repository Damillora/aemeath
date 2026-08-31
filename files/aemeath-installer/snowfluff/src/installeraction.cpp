#include "installeraction.h"
#include <QObject>
#include <KAuth/Action>
#include <KAuth/ExecuteJob>
#include <kauth/action.h>
#include <kjob.h>
#include <qhashfunctions.h>
#include <qobject.h>

InstallerAction::InstallerAction(QObject *parent)
    : QObject(parent) {
    this->setProgress(0);
}

InstallerAction::~InstallerAction() {}

void InstallerAction::startInstallation(QString deviceTarget)
{
    this->setProgress(0);
    QVariantMap args;
    args[QStringLiteral("device")] = deviceTarget;
    Action installAction(QStringLiteral("com.damillora.aemeath.snowfluffhelper.install"));
    installAction.setHelperId(QStringLiteral("com.damillora.aemeath.snowfluffhelper"));
    installAction.setArguments(args);
    this->installJob = installAction.execute();
    connect(installJob, &ExecuteJob::result, this, [this](const KJob* job) {
        qDebug() << "Finished " << this->installJob->error();
        if(this->installJob->error()) {
            Q_EMIT installStatus(true, QString(), QString());
        } else {
            auto exitCode = this->installJob->data()[QStringLiteral("exitCode")].toInt();
            auto stdoutOutput = this->installJob->data()[QStringLiteral("stdout")].toString();
            auto stderrOutput = this->installJob->data()[QStringLiteral("stderr")].toString();

            if (exitCode)
            {
                Q_EMIT installStatus(true, stdoutOutput, stderrOutput);
            } else {
                Q_EMIT installStatus(false, stdoutOutput, stderrOutput);
            }
        }
    });
    connect(installJob, &ExecuteJob::percentChanged, this, [this](const KJob* job, unsigned long percent) {
        this->setProgress(percent);
    });
    qDebug() << "Starting installation";
    installJob->start();
    qDebug() << "Started installation";
}

unsigned long InstallerAction::progress()
{
    return this->m_progress;
}
void InstallerAction::setProgress(unsigned long val)
{
    this->m_progress = val;
    Q_EMIT progressChanged(val);
}
