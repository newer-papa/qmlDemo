#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQuickView>
#include <QElapsedTimer>

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    QQuickView view;

    view.setResizeMode(QQuickView::SizeRootObjectToView);

    view.setSource(QUrl(QStringLiteral("qrc:///SplashScreen.qml")));

    QElapsedTimer t;
    t.start();
    while(t.elapsed()<3000)
    {
        QCoreApplication::processEvents();
    }
    view.hide();

    QQmlApplicationEngine engine;
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);
    return app.exec();
}
