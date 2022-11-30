import QtQuick 2.15
import QtQuick.Window 2.15
import QtCharts 2.15

Window {
    id: root
    width: 1440
    height: 900
    visible: true
    title: qsTr("Crypto Dashboard")

    color: '#181A25'

    Item {
        id: itemRoot
        width: root.width
        height: root.height

        CustomChart {
            width: 340
            height: 360
        }

        //        Navigation {
        //            id: navigation
        //            anchors.left: itemRoot.left
        //            height: root.height
        //        }

        //        HomePage {
        //            anchors.top: itemRoot.top
        //            anchors.left: navigation.right
        //            anchors.right: itemRoot.right
        //            anchors.margins: 16
        //        }
    }
}
