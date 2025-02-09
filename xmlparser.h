#ifndef XMLPARSER_H
#define XMLPARSER_H

#include <QObject>
#include <QDomDocument>
#include <QFile>
#include <QDebug>

class XmlParser : public QObject {
    Q_OBJECT
public:
    explicit XmlParser(QObject *parent = nullptr);
    void parseXml(const QString &filePath);

signals:
    void newRectangle(int x, int y, int width, int height, QString color);
    void newCircle(int cx, int cy, int radius, QString color);
    void newImage(int x, int y, int width, int height, QString path);
    void newLine(int x1, int y1, int x2, int y2, QString color, int thickness);
    void newText(int x, int y, int size, QString color, QString content);
};

#endif // XMLPARSER_H
