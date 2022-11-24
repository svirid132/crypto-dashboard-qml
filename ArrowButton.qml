import QtQuick 2.0

Item {
    id: root
    Text {
        text: 'See all'
        anchors.right: image.left
        anchors.rightMargin: 4
        anchors.verticalCenter: image.verticalCenter
        color: '#FFF'
        font.pixelSize: 16
    }

    Image {
        anchors.right: root.right
        anchors.verticalCenter: root.verticalCenter
        id: image
        source: 'image/arrowBtn.svg'
        width: 24
        height: 24
    }
}
