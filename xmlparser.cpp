#include "xmlparser.h"

XmlParser::XmlParser(QObject *parent) : QObject(parent) {}

void XmlParser::parseXml(const QString &filePath) {
    QFile file(filePath);
    if (!file.open(QIODevice::ReadOnly | QIODevice::Text)) {
        qWarning() << "XML dosyası açılamadı: " << filePath;
        return;
    }

    QDomDocument doc;
    if (!doc.setContent(&file)) {
        qWarning() << "XML içeriği yüklenemedi!";
        return;
    }

    QDomElement root = doc.documentElement();
    QDomNodeList shapes = root.firstChildElement("Shapes").childNodes();

    for (int i = 0; i < shapes.size(); ++i) {
        QDomElement shape = shapes.at(i).toElement();

        if (shape.tagName() == "Rectangle") {
            emit newRectangle(
                shape.attribute("x").toInt(),
                shape.attribute("y").toInt(),
                shape.attribute("width").toInt(),
                shape.attribute("height").toInt(),
                shape.attribute("color")
                );
            qDebug() << "Rectangle created at: " << shape.attribute("x") << ", " << shape.attribute("y");
        }
        else if (shape.tagName() == "Circle") {
            emit newCircle(
                shape.attribute("cx").toInt(),
                shape.attribute("cy").toInt(),
                shape.attribute("radius").toInt(),
                shape.attribute("color")
                );
        }
        else if (shape.tagName() == "Image") {
            emit newImage(
                shape.attribute("x").toInt(),
                shape.attribute("y").toInt(),
                shape.attribute("width").toInt(),
                shape.attribute("height").toInt(),
                shape.attribute("path")
                );
        }
        else if (shape.tagName() == "Line") {
            emit newLine(
                shape.attribute("x1").toInt(),
                shape.attribute("y1").toInt(),
                shape.attribute("x2").toInt(),
                shape.attribute("y2").toInt(),
                shape.attribute("color"),
                shape.attribute("thickness").toInt()
                );
        }
        else if (shape.tagName() == "Text") {
            emit newText(
                shape.attribute("x").toInt(),
                shape.attribute("y").toInt(),
                shape.attribute("size").toInt(),
                shape.attribute("color"),
                shape.text()
                );
        }
        else {
            qWarning() << "Bilinmeyen XML elemanı: " << shape.tagName();
        }
    }
}
