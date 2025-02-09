#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>
#include "udpreceiver.h"
#include "xmlparser.h"
#include "socketcanreader.h"

int main(int argc, char *argv[]) {
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    UdpReceiver udpReceiver;
    XmlParser xmlParser;
    SocketCanReader socketCanReader;

    udpReceiver.startListening();
    socketCanReader.startReading();

    engine.rootContext()->setContextProperty("udpReceiver", &udpReceiver);
    engine.rootContext()->setContextProperty("xmlParser", &xmlParser);
    engine.rootContext()->setContextProperty("socketCanReader", &socketCanReader);

    QString filePath = QCoreApplication::applicationDirPath() + "/sceneData.xml";
    xmlParser.parseXml(filePath);

    engine.load(QUrl::fromLocalFile(QCoreApplication::applicationDirPath() + "/qml/Main.qml"));
    if (engine.rootObjects().isEmpty())
        return -1;

    return app.exec();
}
