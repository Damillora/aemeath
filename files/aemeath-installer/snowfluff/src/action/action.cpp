#include "action.h"
#include <QProcess>
#include <QThread>
#include <cstdio>
#include <kauth/actionreply.h>
#include <kjob.h>
#include <qhashfunctions.h>

ActionReply SnowfluffHelper::install(const QVariantMap &args) {
  HelperSupport::progressStep(0);
  auto device = args[QStringLiteral("device")];
  qDebug() << "Install target: " << args[QStringLiteral("device")].toString();
  QProcess process;
  process.start(QStringLiteral("systemd-repart"),
                QStringList()
                    << QStringLiteral("--sector-size=512")
                    << QStringLiteral("--definitions=/usr/lib/repart.d.install")
                    << QStringLiteral("--empty=allow")
                    << QStringLiteral("--discard=no")
                    << QStringLiteral("--offline=true")
                    << QStringLiteral("--no-pager")
                    << QStringLiteral("--dry-run=no") << device.toString());

  ActionReply reply;

  if (process.waitForFinished()) {
    // Capture the exit code
    int exitCode = process.exitCode();
    auto stdoutOutput = QString::fromUtf8(process.readAllStandardOutput());
    auto stderrOutput = QString::fromUtf8(process.readAllStandardError());
    qDebug() << "stdout:";
    qDebug() << stdoutOutput;
    qDebug() << "stderr:";
    qDebug() << stderrOutput;
    reply.addData(QStringLiteral("exitCode"), exitCode);
    reply.addData(QStringLiteral("stdout"), stdoutOutput);
    reply.addData(QStringLiteral("stderr"), stderrOutput);
    return reply;
  } else {
    reply.setType(KAuth::ActionReply::HelperErrorType);
    reply.setError(2);
    reply.setErrorDescription(process.errorString());
    return reply;
  }
}

KAUTH_HELPER_MAIN("com.damillora.aemeath.snowfluffhelper", SnowfluffHelper)
