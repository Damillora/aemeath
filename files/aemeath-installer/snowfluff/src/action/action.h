#include <KAuth/ActionReply>
#include <KAuth/HelperSupport>

using namespace KAuth;

class SnowfluffHelper : public QObject
{
    Q_OBJECT
public Q_SLOTS:
    ActionReply install(const QVariantMap &args);
};
