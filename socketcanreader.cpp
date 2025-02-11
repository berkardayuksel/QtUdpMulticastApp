#include "socketcanreader.h"
#include <QDebug>
#include <QProcess>

SocketCanReader::SocketCanReader(QObject *parent) : QObject(parent) {}

void SocketCanReader::startReading() {
    QProcess process;
    process.start("ip link show");
    process.waitForFinished();

    QString output = process.readAllStandardOutput();
    QStringList interfaces;
    for (const QString &line : output.split("\n")) {
        if (line.contains("can") || line.contains("vcan")) {
            interfaces.append(line.split(":").first().trimmed());
        }
    }
    emit canInterfacesUpdated(interfaces);
}

void SocketCanReader::processCanFrame() {
    qDebug() << "SocketCAN frame processed.";
}
