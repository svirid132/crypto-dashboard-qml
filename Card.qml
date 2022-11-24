import QtQuick 2.0

Rectangle {

    id: card

    property string imgLogoSource
    property string nameText
    property real proc
    property string priceText
    property string imgChartSource: value

    width: 241
    height: 120

    color: '#171822'
    border.width: 1
    border.color: '#303241'
    radius: 12

    Item {
        id: item
        x: 12
        y: 16
        Image {
            id: image
            source: imgLogoSource
            width: 24
            height: 24
        }

        Text {
            id: text
            text: nameText
            color: '#FFF'
            anchors.left: image.right
            anchors.leftMargin: 8
            anchors.verticalCenter: image.verticalCenter
            font.pixelSize: 16
        }

        Image {
            id: image_1
            source: proc >= 0 ? 'image/plusTriangle.svg' : 'image/minusTriangle.svg'
            anchors.top: text.top
            anchors.left: text.right
            anchors.leftMargin: 2
        }

        Text {
            id: text_1
            text: {
                const sign =  proc >= 0 ? '+' : ''
                const res = sign + proc + '%'
                return res
            }
            anchors.left: image_1.right
            anchors.verticalCenter: image_1.verticalCenter
            anchors.leftMargin: 4
            font.pixelSize: 8
            color: proc >= 0 ? '#22D49F' : '#FF5B6D'
        }
    }

    Text {
        id: text_3
        x: 12
        y: 48
        text: '$'
        font.pixelSize: 24
        font.family: 'Poppins'
        color: '#303241'
    }

    Text {
        text: priceText
        font.pixelSize: 24
        color: '#FFF'
        anchors.verticalCenter: text_3.verticalCenter
        font.family: 'Poppins'
        anchors.left: text_3.right
    }

    Image {
        id: image_3
        source: imgChartSource
        anchors.bottom: card.bottom
        anchors.right: card.right
        width: 239
        height: 55
    }

}
