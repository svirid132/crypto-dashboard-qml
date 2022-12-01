import QtQuick 2.0
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.4
import QtGraphicalEffects 1.15

CheckBox {
    id: root
    checked: true
    spacing: 10
    property alias indicatorColor: customIndicator.color
    property alias indicatorOkColor: overlay.color
    padding: 0
    contentItem: Label {
        id: label
        text: parent.text
        verticalAlignment: Text.AlignVCenter
        color: '#FFF'
        font.pixelSize: 16
        leftPadding: root.indicator.width + root.spacing
    }
    indicator: Rectangle {
        id: customIndicator
        implicitWidth: 20
        implicitHeight: 20
        x: root.leftPadding
        y: parent.height / 2 - height / 2
        radius: 3
        anchors.verticalCenter: root.verticalCenter

        Item {
            anchors.fill: parent
            visible: root.checked
            Image {
                id: img1
                source: 'icon/ok.svg'
                anchors.centerIn: parent
            }
            ColorOverlay {
                id: overlay
                anchors.fill: img1
                source: img1
            }
        }
    }
}
