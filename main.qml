import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 1440
    height: 900
    visible: true
    title: qsTr("Crypto Dashboard")

    color: '#181A25'

    Navigation {
        id: navigation
    }

    HomePage {
        height: parent.height
        width: parent.width - navigation.width
        x: navigation.width
    }
}
