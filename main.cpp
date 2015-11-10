#include <QGuiApplication>
#include <QQmlApplicationEngine>

#include <QQmlContext>
#include "easingvalueforprogress.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
    QQmlApplicationEngine engine;

    EasingValueForProgress easingValueForProgress;
    engine.rootContext()->setContextProperty(
                "easingValueForProgress", &easingValueForProgress);
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    return app.exec();
}

