import QtQuick 2.15
import QtQuick.Window 2.15
import QtCharts 2.15

Window {
    id: root
    minimumWidth: 1440
    maximumWidth: 1440
    minimumHeight: 900
    maximumHeight: 900
    visible: true
    title: qsTr("Crypto Dashboard")

    color: '#181A25'

    Item {
        id: itemRoot
        width: root.width
        height: root.height

        Navigation {
            id: navigation
            anchors.left: itemRoot.left
            height: root.height
        }

        HomePage {
            anchors.top: itemRoot.top
            anchors.left: navigation.right
            anchors.right: itemRoot.right
            anchors.margins: 16
        }
    }
}
