#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <FelgoApplication>
#include <FelgoLiveClient>

int main(int argc, char *argv[])
{

#if QT_VERSION < QT_VERSION_CHECK(6, 0, 0)
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);
#endif
    QApplication app(argc, argv);

    FelgoApplication felgo;
    felgo.setPreservePlatformFonts(true);

    QQmlApplicationEngine engine;
//    const QUrl url(QStringLiteral("qrc:/main.qml"));
//    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
//                     &app, [url](QObject *obj, const QUrl &objUrl) {
//        if (!obj && url == objUrl)
//            QCoreApplication::exit(-1);
//    }, Qt::QueuedConnection);
//    engine.load(url);

    felgo.initialize(&engine);

    FelgoLiveClient client (&engine);

    return app.exec();
}
