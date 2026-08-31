#include "installerdisklistmodel.h"
#include <QRegularExpression>
#include <QRegularExpressionMatch>
#include <Solid/Block>
#include <Solid/Device>
#include <Solid/DeviceInterface>
#include <Solid/StorageDrive>
#include <Solid/StorageVolume>
#include <KCoreAddons>
#include <KFormat>
#include <solid/storagedrive.h>

InstallerDiskListModel::InstallerDiskListModel(QObject *parent)
    : QAbstractListModel(parent) {
  this->m_devices = Solid::Device::listFromType(
      Solid::DeviceInterface::StorageDrive, QString());

  qDebug() << "Initializing Disk List Model";
}

InstallerDiskListModel::~InstallerDiskListModel() {}
InstallerDiskListModel *InstallerDiskListModel::self() {
  static InstallerDiskListModel *fslm = new InstallerDiskListModel();
  return fslm;
}

InstallerDiskListModel *InstallerDiskListModel::create(QQmlEngine *,
                                                       QJSEngine *) {
  return InstallerDiskListModel::self();
}

int InstallerDiskListModel::rowCount(const QModelIndex &) const {
  return m_devices.count();
}

QHash<int, QByteArray> InstallerDiskListModel::roleNames() const {
  return {{UdiRole, "udi"},
          {NameRole, "name"},
          {DeviceIconRole, "deviceIcon"},
          {DeviceLocationRole, "deviceLocation"},
          {DeviceSizeRole, "deviceSize"}};
}

QVariant InstallerDiskListModel::data(const QModelIndex &index,
                                      int role) const {
  const auto device = m_devices.at(index.row());
  const auto deviceBlock = device.as<Solid::Block>();
  const auto deviceDrive = device.as<Solid::StorageDrive>();
  KFormat formatter;
  auto location = deviceBlock->device();
  QRegularExpression blockRegex(QStringLiteral(
      "^(\\/dev\\/"
      "(hd[a-z]+|sd[a-z]+|vd[a-z]+|nvme\\d+n\\d+|mmcblk\\d+))p?\\d+$"));
  QRegularExpressionMatch match = blockRegex.match(location);
  if (match.hasMatch()) {
    location = match.captured(1);
  }

  switch (role) {
  case Qt::DisplayRole:
    return QVariant::fromValue(device.udi());
  case InstallerDiskListModel::Roles::UdiRole:
    return QVariant::fromValue(device.udi());
  case InstallerDiskListModel::Roles::NameRole:
    return QVariant::fromValue(device.product());
  case InstallerDiskListModel::Roles::DeviceIconRole:
    return QVariant::fromValue(device.icon());
  case InstallerDiskListModel::Roles::DeviceLocationRole:
    return QVariant::fromValue(location);
  case InstallerDiskListModel::Roles::DeviceSizeRole:
    return QVariant::fromValue(formatter.formatByteSize(deviceDrive->size()));
  default:
    return QVariant::fromValue(device.udi());
  }
}
