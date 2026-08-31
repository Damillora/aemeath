import QtQuick
import QtQuick.Layouts
import QtQuick.Controls as Controls
import org.kde.kirigami as Kirigami

import com.damillora.aemeath.snowfluff

Kirigami.ScrollablePage {
    title: i18nc("@title.page", "Aemeath OS Installation")

    required property string deviceName
    required property string deviceLocation

    InstallerAction {
        id: installerAction

        onInstallStatus: (isError, stdout, stderr) => {
            applicationWindow().pageStack.push(Qt.resolvedUrl("InstallerStatusPage.qml"), {
                "isError": isError,
                "stdout": stdout,
                "stderr": stderr
            });
        }
    }

    Component.onCompleted: {
        installerAction.startInstallation(deviceLocation);
    }
    ColumnLayout {
        anchors.fill: parent

        ColumnLayout {
            Layout.alignment: Qt.AlignCenter

            Image {
                Layout.alignment: Qt.AlignHCenter
                source: "aemeath-os.png"
            }
            Controls.Label {
                Layout.alignment: Qt.AlignHCenter
                text: i18n("Aemeath OS is installing to your device...")
            }
            Controls.ProgressBar {
                Layout.fillWidth: true
                from: 0
                to: 100
                indeterminate: true
            }
        }
    }
}
