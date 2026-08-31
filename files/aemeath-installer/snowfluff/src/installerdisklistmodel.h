#pragma once

#include <QAbstractListModel>
#include <QJSEngine>
#include <QObject>
#include <QQmlEngine>

#include <qqmlintegration.h>
#include <solid/device.h>

class InstallerDiskListModel : public QAbstractListModel {

    Q_OBJECT
    QML_ELEMENT
    QML_SINGLETON
public:
    enum Roles {
        UdiRole = Qt::UserRole,
        NameRole,
        DeviceIconRole,
        DeviceLocationRole,
        DeviceSizeRole
    };

    explicit InstallerDiskListModel(QObject* parent = nullptr);
    ~InstallerDiskListModel();
    static InstallerDiskListModel* create(QQmlEngine* qmlEngine, QJSEngine*);
    static InstallerDiskListModel* self();

    int rowCount(const QModelIndex& parent = QModelIndex()) const override;
    QHash<int, QByteArray> roleNames() const override;
    QVariant data(const QModelIndex& index, int role = Qt::DisplayRole) const override;
private:
    QList<Solid::Device> m_devices;
};
