import QtQuick 2.12
import QtQuick.Controls 2.15
import Qt.labs.qmlmodels 1.0
import QtQuick.Layouts 1.15

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
                    color: '#151823'
                    width: 340
                    height: 340
                    border.color: '#303241'
                    border.width: 1
                    radius: 12
                    Column {
                        id: column
                        width: parent.width
                        spacing: 15
                        padding: 16
                        property int fullWidth: width - leftPadding - rightPadding
                        Rectangle {
                            width: parent.fullWidth
                            height: 24
                            color: 'transparent'
                            Text {
                                color: '#fff'
                                anchors.left: parent.left
                                text: 'Exchange'
                                font.pixelSize: 20
                            }
                            Image {
                                source: 'qrc:/image/refresh.svg'
                                width: 24
                                height: 24
                                anchors.verticalCenter: parent.verticalCenter
                                anchors.right: parent.right
                            }
                        }

                        Rectangle {
                            height: 20
                            width: parent.fullWidth
                            color: 'transparent'
                            Text {
                                id: numBtc
                                text: '1'
                                anchors.verticalCenter: parent.verticalCenter
                                color: '#fff'
                                anchors.left: parent.left
                            }
                            Text {
                                text: ' BTC'
                                anchors.verticalCenter: parent.verticalCenter
                                color: '#43465C'
                                anchors.left: numBtc.right
                            }
                            Image {
                                source: 'qrc:/image/leftArrow.svg'
                                width: 24
                                height: 24
                                anchors.verticalCenter: parent.verticalCenter
                                x: 100
                            }
                            Text {
                                id: numUsdt
                                text: '52,415.31'
                                anchors.right: usdt.left
                                verticalAlignment: Text.AlignVCenter
                                anchors.verticalCenter: parent.verticalCenter
                                color: '#fff'
                            }
                            Text {
                                id: usdt
                                text: ' USDT'
                                anchors.right: parent.right
                                anchors.verticalCenter: parent.verticalCenter
                                color: '#43465C'
                            }
                        }

                        CustomComboBox {
                            label: 'Get'
                            model: ['6000']
                            iconSource: 'qrc:/image/techer.svg'
                        }

                        CustomComboBox {
                            id: payComboBox
                            label: 'Pay'
                            model: ['0.8511']
                            iconSource: 'qrc:/image/BTC.svg'
                        }
                    }

                    CustomButton {
                        text: 'Exchange'
                        anchors.top: column.bottom
                        anchors.topMargin: 5
                        anchors.horizontalCenter: parent.horizontalCenter
                        width: column.fullWidth
                    }
                }

                Rectangle {
                    width: 340
                    height: 92
                    color: '#151823'
                    border.color: '#303241'
                    border.width: 1
                    radius: 12
                    CircleProgressBar {
                        x: 23
                        anchors.verticalCenter: parent.verticalCenter
                    }
                    Text {
                        text: '80% of transactions'
                        font.pixelSize: 20
                        color: '#FFFFFF'
                        x: 94
                        y: 20
                    }
                    Text {
                        text: 'Absolutely on this platform'
                        font.pixelSize: 12
                        color: '#43465C'
                        x: 94
                        y: 48
                    }
                }
                CustomChart {
                    width: 340
                    height: 360
                }
            }
        }
    }
}
