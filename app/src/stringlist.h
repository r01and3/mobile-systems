#ifndef STRINGLIST_H
#define STRINGLIST_H

#include <QObject>

class StringList : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString str READ getStr NOTIFY listChanged)
private:
    QString str;
    QList<QString> stringList;
    void updateStr();
public:
    StringList();
    QString getStr();
    Q_INVOKABLE void addString(QString str);
    Q_INVOKABLE void removeString();
signals:
    void listChanged();
};

#endif // STRINGLIST_H
