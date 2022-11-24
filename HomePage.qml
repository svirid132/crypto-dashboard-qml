import QtQuick 2.0

Rectangle {

    color: 'transparent'

    TextFieldElem {
        x: 16
        y: 16
    }

    Card {
        id: btcCard
        x: 16
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
        x: 16
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
        x: 16
        y: 82
        imgLogoSource: 'image/sushiSwap.svg'
        nameText: 'Sushi (24h)'
        proc: 2.31
        priceText: '438.76'
        imgChartSource: 'image/sushiSwapChart.svg'
        anchors.left: bnbCard.right
        anchors.verticalCenter: bnbCard.verticalCenter
        anchors.leftMargin: 8
    }

    Item {
        id: item
        x: 16
        y: 218
        width: 992
        height: 36
        Text {
            id: textElem
            anchors.verticalCenter: item.verticalCenter
            anchors.left: item.left
            anchors.topMargin: 16
            text: 'Top NF       T this month'
            font.pixelSize: 24
            color: '#FFF'
        }

        ArrowButton {
            anchors.right: item.right
            anchors.verticalCenter: item.verticalCenter
        }
    }

    BigCard {
        mainImgSource: 'image/img_1.png'
        authorImgSource: 'image/author_1.png'
    }
}
