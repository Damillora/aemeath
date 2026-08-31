import QtQuick
import QtQuick.Layouts
import QtQuick.Controls as Controls
import org.kde.kirigami as Kirigami

import com.damillora.aemeath.snowfluff

Kirigami.ScrollablePage {
    title: i18nc("@title.page", "Welcome to the Aemeath OS Installer")

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
                text: i18n("This application will install Aemeath OS onto your computer.")
            }
            Controls.Button {
                Layout.alignment: Qt.AlignHCenter
                icon.name: "go-next-symbolic"
                text: "Next"

                onClicked: {
                    applicationWindow().pageStack.push(Qt.resolvedUrl("InstallerDevicePage.qml"));
                }
            }
        }
    }
}
