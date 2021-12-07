#include "stringlist.h"

StringList::StringList() : QObject()
{
    str = "";
    stringList = QList<QString>();
}

QString StringList::getStr()
{
    return str;
}

void StringList::addString(QString str)
{
    stringList.append(str);
    updateStr();
    emit listChanged();
}

void StringList::removeString()
{
    if (!stringList.isEmpty()) {
        stringList.removeLast();
        updateStr();
        emit listChanged();
    }
}

void StringList::updateStr()
{
    str = "";
    if (stringList.isEmpty()) return;
    for (int i = 0; i < stringList.length() - 1; i++) {
        str += stringList.at(i) + ", ";
    }
    str += stringList.at(stringList.length() - 1);
    str[0] = str[0].toUpper();
}
