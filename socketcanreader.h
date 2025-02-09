#ifndef SOCKETCANREADER_H
#define SOCKETCANREADER_H

#include <QObject>
#include <QSocketNotifier>
#include <linux/can.h>
#include <linux/can/raw.h>
#include <sys/socket.h>
#include <net/if.h>
#include <sys/ioctl.h>
#include <unistd.h>

class SocketCanReader : public QObject {
    Q_OBJECT

public:
    explicit SocketCanReader(QObject *parent = nullptr);
    void startReading();

signals:
    void canDataReceived(int id, QByteArray data);
    void canInterfacesUpdated(QStringList interfaces);

private slots:
    void processCanFrame();

private:
    int socketFd;
    QSocketNotifier *notifier;
};

#endif // SOCKETCANREADER_H
