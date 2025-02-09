#include "udpreceiver.h"
#include <QDebug>

UdpReceiver::UdpReceiver(QObject *parent) : QObject(parent), isConnected(false) {
    udpSocket = new QUdpSocket(this);
}

void UdpReceiver::startListening(const QString &address, quint16 port) {
    if (isConnected) stopListening();

    if (!udpSocket->bind(QHostAddress::AnyIPv4, port, QUdpSocket::ShareAddress)) {
        qWarning() << "Bağlantı başarısız!";
        return;
    }

    if (!udpSocket->joinMulticastGroup(QHostAddress(address))) {
        qWarning() << "Multicast grubuna katılım başarısız!";
        return;
    }

    connect(udpSocket, &QUdpSocket::readyRead, this, &UdpReceiver::processDatagram);
    isConnected = true;
    emit statusChanged(true);
}

void UdpReceiver::stopListening() {
    if (isConnected) {
        udpSocket->leaveMulticastGroup(QHostAddress::AnyIPv4);
        udpSocket->close();
        isConnected = false;
        emit statusChanged(false);
    }
}

void UdpReceiver::processDatagram() {
    while (udpSocket->hasPendingDatagrams()) {
        QByteArray datagram;
        datagram.resize(udpSocket->pendingDatagramSize());
        udpSocket->readDatagram(datagram.data(), datagram.size());
        emit dataReceived(QString(datagram));
    }
}
