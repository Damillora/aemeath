#include <QApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include <QUrl>
#include <QQuickStyle>
#include <KLocalizedContext>
#include <KLocalizedString>
#include <KIconTheme>
#include <KLocalizedQmlContext>

int main(int argc, char *argv[])
{
    KIconTheme::initTheme();
    QApplication app(argc, argv);
    KLocalizedString::setApplicationDomain("snowfluff");
    QApplication::setOrganizationName(QStringLiteral("Damillora"));
    QApplication::setOrganizationDomain(QStringLiteral("nanao.moe"));
    QApplication::setApplicationName(QStringLiteral("Aemeath OS Installer"));
    QApplication::setDesktopFileName(QStringLiteral("com.damillora.aemeath.snowfluff"));

    QApplication::setStyle(QStringLiteral("breeze"));
    if (qEnvironmentVariableIsEmpty("QT_QUICK_CONTROLS_STYLE")) {
        QQuickStyle::setStyle(QStringLiteral("org.kde.desktop"));
    }

    QQmlApplicationEngine engine;

    KLocalization::setupLocalizedContext(&engine);
    engine.loadFromModule("com.damillora.aemeath.snowfluff", "MainWindow");

    if (engine.rootObjects().isEmpty()) {
        return -1;
    }

    return app.exec();
}
