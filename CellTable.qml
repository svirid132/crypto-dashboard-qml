import QtQuick 2.0

Item {
    id: root
    property string textAlign
    property alias text: text.text

    Text {
        id: text
        color: '#71A8FE'
        anchors.verticalCenter: root.verticalCenter
    }

    Component.onCompleted: {
        switch(root.textAlign) {
            case 'left': {
                text.anchors.left = root.left
                break
            }
            case 'right': {
                text.anchors.right = root.right
                break
            }
            case 'center': {
                text.anchors.centerIn = root
                break
            }
        }
    }
}

