#include "counter.h"

Counter::Counter() : QObject()
{
    counter = 0;
}

int Counter::getCounter()
{
    return counter;
}

void Counter::increaseCounter()
{
    counter++;
    emit counterChanged();
}

void Counter::resetCounter()
{
    counter = 0;
    emit counterChanged();
}
