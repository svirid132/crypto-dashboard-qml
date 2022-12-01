import QtQuick 2.12
import QtQuick.Controls 2.15
import Qt.labs.qmlmodels 1.0

Rectangle {
    id: root

    color: 'transparent'

    Column {
        spacing: 16
        HeaderHomePage {}

        Row {
            spacing: 16
            Column {
                spacing: 16
                Row {
                    spacing: 10
                    Repeater {
                        id: repeater
                        model: 4
                        Card {
                            id: card
                            function infoCard(index) {
                                const items = [
                                                {imgLogoSource: 'image/BTC.svg', nameText:'Bitcoin (24h)', proc: 2.31, priceText: '32,482.44',imgChartSource: 'image/BTCChart.svg'},
                                                {imgLogoSource: 'image/ETH.svg', nameText: 'Ethereum (24h)', proc: 12.31, priceText: '1,021.49', imgChartSource: 'image/ETHChart.svg'},
                                                {imgLogoSource: 'image/BNB.svg', nameText: 'BNB (24h)', proc: -10.4, priceText: '9,589.55', imgChartSource: 'image/BNBChart.svg'},
                                                {imgLogoSource: 'image/sushiSwap.svg', nameText: 'Sushi (24h)', proc: 2.31, priceText: '438.76',imgChartSource: 'image/sushiSwapChart.svg'},
                                            ]
                                return items[index]
                            }
                            imgLogoSource: infoCard(index).imgLogoSource
                            nameText: infoCard(index).nameText
                            proc: infoCard(index).proc
                            priceText: infoCard(index).priceText
                            imgChartSource: infoCard(index).imgChartSource
                        }
                    }
                }
                Control {
                    topPadding: 10
                    contentItem: Item {
                        implicitWidth: 998
                        implicitHeight: textElem.height
                        Label {
                            id: textElem
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.left: parent.left
                            text: 'Top NFT this month'
                            font.pixelSize: 24
                            color: '#FFF'
                        }
                        ArrowButton {
                            anchors.right: parent.right
                            anchors.verticalCenter: parent.verticalCenter
                        }
                    }
                }
                Row {
                    id: cardRow
                    spacing: 10

                    Repeater {
                        model: 4
                        BigCard {
                            function infoBigCard(index) {
                                const items = [
                                                {mainImgSource: 'image/img_1.png', authorImgSource:'image/author_1.png', autorName: 'Malika Yanchenko', moneyText: '0.932 ETH', title: 'Pandora Street Key #5'},
                                                {mainImgSource: 'image/img_2.png', authorImgSource: 'image/author_2.png', autorName: 'Oscar Valdi', moneyText: '0.529ETH', title: 'Ring of eternity and love'},
                                                {mainImgSource: 'image/img_3.png', authorImgSource: 'image/author_3.png', autorName: 'Kimmi Jon', moneyText: '1.742 ETH', title: 'Head sculpture #2'},
                                                {mainImgSource: 'image/img_4.png', authorImgSource: 'image/author_4.png', autorName: 'Kayli Hifner', moneyText: '1 ETH', title: 'Thinking about the future'},
                                            ]
                                return items[index]
                            }
                            mainImgSource: infoBigCard(index).mainImgSource
                            authorImgSource: infoBigCard(index).authorImgSource
                            autorName: infoBigCard(index).autorName
                            moneyText: infoBigCard(index).moneyText
                            title: infoBigCard(index).title
                        }
                    }
                }
                Control {
                    topPadding: 10
                    contentItem: Item {
                        implicitWidth: 998
                        implicitHeight: textElem1.height
                        Label {
                            id: textElem1
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.left: parent.left
                            text: 'Biggest transactions of the month'
                            font.pixelSize: 24
                            color: '#FFF'
                        }
                        ArrowButton {
                            anchors.right: parent.right
                            anchors.verticalCenter: parent.verticalCenter
                        }
                    }
                }
                CustomTableView { height: 220; width: 998 }
            }

            Column {
                spacing: 12
                Rectangle {
                    width: 340
                    height: 340
                    color: '#151823'
                }

                Rectangle {
                    width: 340
                    height: 92
                    color: '#151823'
                }

                CustomChart {
                    width: 340
                    height: 360
                }
            }
        }
    }
}
