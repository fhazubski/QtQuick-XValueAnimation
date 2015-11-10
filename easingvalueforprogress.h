#ifndef EASINGVALUEFORPROGRESS_H
#define EASINGVALUEFORPROGRESS_H

#include <QObject>
#include <QEasingCurve>

class EasingValueForProgress : public QObject
{
    Q_OBJECT
public:
    explicit EasingValueForProgress(QObject *parent = 0);

    Q_INVOKABLE double getValue(int easingEnum, double progress){
        QEasingCurve easing((QEasingCurve::Type)easingEnum);
        return easing.valueForProgress(progress);
    }

signals:

public slots:
};

#endif // EASINGVALUEFORPROGRESS_H
