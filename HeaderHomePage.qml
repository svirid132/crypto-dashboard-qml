import QtQuick 2.0

Item {
    width: 1344
    height: 50
    TextFieldElem { anchors.left: parent.left}
    Row {
        anchors.right: parent.right
        spacing: 4
        Rectangle {
            height: 50
            width: 50
            color: '#171822'
            border.width: 1
            border.color: '#303241'
            radius: 12
            Image {
                source: 'image/heart.svg'
                anchors.centerIn: parent
            }
        }
        Rectangle {
            height: 50
            width: 50
            color: '#171822'
            border.width: 1
            border.color: '#303241'
            radius: 12
            Image {
                source: 'image/notification.svg'
                anchors.centerIn: parent
            }
        }
        Rectangle {
            height: 50
            width: 175
            color: '#171822'
            border.width: 1
            border.color: '#303241'
            radius: 12
            Item {
                anchors.fill: parent
                Text {
                    text: '0x3a....oeQb'
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: parent.left
                    anchors.leftMargin: 16
                    color: '#FFF'
                }
                Image {
                    source: 'image/user.png'
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.right: parent.right
                    anchors.rightMargin: 16
                }
            }
        }
    }
}
