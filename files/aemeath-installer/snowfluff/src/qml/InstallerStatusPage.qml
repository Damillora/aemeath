import QtQuick
import QtQuick.Layouts
import QtQuick.Controls as Controls
import org.kde.kirigami as Kirigami

import com.damillora.aemeath.snowfluff

Kirigami.ScrollablePage {
    title: i18nc("@title.page", "Welcome to the Aemeath OS Installer")

    required property bool isError;
    required property string stdout;
    required property string stderr;

    property bool logVisible: false;

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
                text: {
                    if (isError) {
                        i18n("There was a problem with the Aemeath OS installation process.")
                    } else {
                        i18n("Aemeath OS has been successfully installed. Restart your computer to enter the new Aemeath OS installation.")
                    }
                }
            }
            Controls.ToolButton {
                text: "Show installation log"
                icon.name: "arrow-down-symbolic"
                Layout.alignment: Qt.AlignHCenter
                onClicked: {
                    logVisible = !logVisible
                }
            }
            Controls.TextArea {
                Layout.fillWidth: true
                visible: logVisible
                text: stderr
            }
            Controls.Button {
                Layout.alignment: Qt.AlignHCenter
                icon.name: "go-next-symbolic"
                text: "Finish"

                onClicked: {
                    Qt.quit()
                }
            }
        }
    }
}
