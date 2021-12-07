#ifndef COUNTER_H
#define COUNTER_H

#include <QObject>

class Counter : public QObject
{
    Q_OBJECT
    Q_PROPERTY(int counter READ getCounter)
private:
    int counter;
public:
    Counter();
    int getCounter();
    Q_INVOKABLE void increaseCounter();
    Q_INVOKABLE void resetCounter();
signals:
    void counterChanged();
};

#endif // COUNTER_H
