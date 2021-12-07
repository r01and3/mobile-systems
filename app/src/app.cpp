#ifdef QT_QML_DEBUG
#include <QtQuick>
#endif

#include <sailfishapp.h>
#include <QGuiApplication>
#include <QtQml/QQmlEngine>
#include <qqml.h>
#include "counter.h"
#include "stringlist.h"

int main(int argc, char *argv[])
{
    qmlRegisterType<Counter>("harbour.app.CounterModule", 1, 0, "Counter");
    qmlRegisterType<StringList>("harbour.app.StringListModule", 1, 0, "StringList");
    return SailfishApp::main(argc, argv);
}
