#ifndef UDPRECEIVER_H
#define UDPRECEIVER_H

#include <QObject>
#include <QUdpSocket>

class UdpReceiver : public QObject {
    Q_OBJECT
public:
    explicit UdpReceiver(QObject *parent = nullptr);
    void startListening(const QString &address, quint16 port);
    void stopListening();

signals:
    void dataReceived(QString message);
    void statusChanged(bool connected);

private slots:
    void processDatagram();

private:
    QUdpSocket *udpSocket;
    bool isConnected;
};

#endif // UDPRECEIVER_H
