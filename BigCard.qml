import QtQuick 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.11

Rectangle {
    id: root
    width: 241
    height: 282
    color: '#171822'
    border.width: 1
    border.color: '#303241'
    radius: 12

    property alias mainImgSource: mainImg.source
    property alias authorImgSource: authorImg.source

    Image {
        id: mainImg
        width: 225
        height: 152
        anchors.horizontalCenter: root.horizontalCenter
        anchors.top: root.top
    }

    Rectangle {
        id: rect
        anchors.top: mainImg.top
        anchors.right: mainImg.right
        anchors.topMargin: 4
        anchors.rightMargin: 4
        color: Qt.rgba(0xC0, 0xC1, 0xCA, 0.6)
        width: rectText.width + 12
        height: rectText.height + 12
        radius: 28
        Text {
           id: rectText
           text: '1h 35m 9s'
           font.pixelSize: 8
           anchors.centerIn: rect
        }
    }

    Image {
        id: authorImg
        width: 46
        height: 46
        anchors.top: mainImg.bottom
        anchors.topMargin: -23
        anchors.right: mainImg.right
        anchors.rightMargin: 4
    }

    Text {
       id: text_1
       anchors.left: mainImg.left
       anchors.top: mainImg.bottom
       text: 'Malika Yanchenko'
       anchors.topMargin: 8
       color: '#43465C'
       font.pixelSize: 12
    }

    Text {
        id: text_2
        text: 'Pandora Street Key #5'
        color: '#FFF'
        font.pixelSize: 16
        anchors.left: text_1.left
        anchors.top: text_1.bottom
        anchors.topMargin: 8
    }

    Text {
        id: text_3
        text: 'Current Bid'
        color: '#FFF'
        font.pixelSize: 12
        anchors.left: text_2.left
        anchors.top: text_2.bottom
        anchors.topMargin: 8
    }

    Text {
        text: '0.932 ETH'
        color: '#FFF'
        font.pixelSize: 12
        anchors.left: text_3.left
        anchors.top: text_3.bottom
    }

//    Button {
//        text: 'Bidded'
//        background: Rectangle {
//            gradient: ConicalGradient {
//              angle: 102
//              GradientStop { position: 0 ; color: "#AF53FF" }
//              GradientStop { position: 1 ; color: '#6EACFE' }
//            }
//        }
//    }
}
