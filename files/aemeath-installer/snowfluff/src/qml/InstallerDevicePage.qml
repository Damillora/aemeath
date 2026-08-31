import QtQuick
import QtQuick.Layouts
import QtQuick.Controls as Controls
import org.kde.kirigami as Kirigami

import com.damillora.aemeath.snowfluff

Kirigami.ScrollablePage {
    title: i18nc("@title.page", "Select Disk for Installation")

    QtObject {
        id: currentDevice
        property string deviceName
        property string deviceLocation
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
                text: i18n("Select the device used for installation")
            }
            Kirigami.ScrollablePage {
                ListView {
                    id: installerDiskListView
                    model: InstallerDiskListModel

                    delegate: Controls.ItemDelegate {
                        id: delegate

                        width: ListView.view.width
                        highlighted: ListView.isCurrentItem

                        leftPadding: Kirigami.Units.gridUnit
                        rightPadding: leftPadding
                        topPadding: Kirigami.Units.largeSpacing
                        bottomPadding: topPadding

                        required property int index
                        required property string udi
                        required property string name
                        required property string deviceIcon
                        required property string deviceLocation
                        required property string deviceSize

                        onClicked: {
                            ListView.view.currentIndex = index;
                            currentDevice.deviceName = name;
                            currentDevice.deviceLocation = deviceLocation;
                        }

                        contentItem: RowLayout {
                            id: delegateLayout
                            spacing: Kirigami.Units.largeSpacing

                            Kirigami.Icon {
                                source: delegate.deviceIcon
                                Layout.fillHeight: true
                                Layout.maximumHeight: Kirigami.Units.iconSizes.huge
                                Layout.preferredWidth: height
                            }
                            Kirigami.Heading {
                                Layout.fillWidth: true
                                wrapMode: Text.WordWrap
                                text: delegate.name + " (" + delegate.deviceLocation + ")"
                            }
                            Controls.Label {
                                text: delegate.deviceSize
                            }
                        }
                    }
                }
            }
            Controls.Button {
                Layout.alignment: Qt.AlignHCenter
                icon.name: "install-symbolic"
                text: "Install"

                onClicked: {
                    confirmationDialog.open();
                }
            }
        }
    }
    Kirigami.PromptDialog {
        id: confirmationDialog
        title: i18n("Install Aemeath OS")
        subtitle: i18n("This action will ERASE the entire disk! Proceed with installation?")

        standardButtons: Kirigami.Dialog.Ok | Kirigami.Dialog.Cancel
        onAccepted: {
            if(!currentDevice.deviceLocation) {
                return;
            }
            applicationWindow().pageStack.push(Qt.resolvedUrl("InstallerActionPage.qml"),  {
                deviceName: currentDevice.deviceName,
                deviceLocation: currentDevice.deviceLocation,
            });
        }
    }
}
