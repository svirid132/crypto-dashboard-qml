import QtQuick 2.12
import QtQuick.Controls 2.15
import Qt.labs.qmlmodels 1.0

Rectangle {
    id: root

    color: 'transparent'

    Item {
        id: itemRoot
        anchors.top: root.top
        anchors.left: root.left
        anchors.right: root.right

        TextFieldElem { }

        Row {
            anchors.top: itemRoot.top
            anchors.right: itemRoot.right
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

    Card {
        id: btcCard
        y: 82
        imgLogoSource: 'image/BTC.svg'
        nameText: 'Bitcoin (24h)'
        proc: 2.31
        priceText: '32,482.44'
        imgChartSource: 'image/BTCChart.svg'
    }

    Card {
        id: ethCard
        imgLogoSource: 'image/ETH.svg'
        nameText: 'Ethereum (24h) '
        proc: 12.31
        priceText: '1,021.49'
        imgChartSource: 'image/ETHChart.svg'
        anchors.left: btcCard.right
        anchors.verticalCenter: btcCard.verticalCenter
        anchors.leftMargin: 8
    }

    Card {
        id: bnbCard
        y: 82
        imgLogoSource: 'image/BNB.svg'
        nameText: 'BNB (24h) '
        proc: -10.4
        priceText: '9,589.55'
        imgChartSource: 'image/BNBChart.svg'
        anchors.left: ethCard.right
        anchors.verticalCenter: ethCard.verticalCenter
        anchors.leftMargin: 8
    }

    Card {
        id: sushiCard
        y: 82
        imgLogoSource: 'image/SushiSwap.svg'
        nameText: 'Sushi (24h)'
        proc: 2.31
        priceText: '438.76'
        imgChartSource: 'image/SushiSwapChart.svg'
        anchors.left: bnbCard.right
        anchors.verticalCenter: bnbCard.verticalCenter
        anchors.leftMargin: 8
    }

    Item {
        id: item
        y: 218
        width: 992
        height: 36
        Text {
            id: textElem
            anchors.verticalCenter: item.verticalCenter
            anchors.left: item.left
            anchors.topMargin: 16
            text: 'Top NFT this month'
            font.pixelSize: 24
            color: '#FFF'
        }

        ArrowButton {
            anchors.right: item.right
            anchors.verticalCenter: item.verticalCenter
        }
    }

    Row {
        id: cardRow
        anchors.top: item.bottom
        anchors.left: item.left
        anchors.topMargin: 12
        spacing: 8

        BigCard {
            mainImgSource: 'image/img_1.png'
            authorImgSource: 'image/author_1.png'
        }

        BigCard {
            mainImgSource: 'image/img_2.png'
            authorImgSource: 'image/author_2.png'
            autorName: 'Oscar Valdi'
            moneyText: '0.529ETH'
            title: 'Ring of eternity and love'
        }

        BigCard {
            mainImgSource: 'image/img_3.png'
            authorImgSource: 'image/author_3.png'
            autorName: 'Kimmi Jon'
            moneyText: '1.742 ETH'
            title: 'Head sculpture #2'
        }

        BigCard {
            mainImgSource: 'image/img_4.png'
            authorImgSource: 'image/author_4.png'
            autorName: 'Kayli Hifner'
            moneyText: '1 ETH'
            title: 'Thinking about the future'
        }
    }

    Text {
        id: mainText
        anchors.top: cardRow.bottom
        anchors.left: cardRow.left
        anchors.topMargin: 16
        text: 'Biggest transactions of the month'
        font.pixelSize: 24
        color: '#FFF'
    }

    CustomTableView {
        width: 988
        anchors.top: mainText.bottom
        anchors.left: cardRow.left
        height: 200
    }
}
