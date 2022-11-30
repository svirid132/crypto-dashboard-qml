import QtQuick 2.12
import QtQuick.Controls 2.15
import Qt.labs.qmlmodels 1.0

Item {
    id: root
    property real heightCell: 48

    // left/right
    HorizontalHeaderView {
        z: 2
        id: horizontalHeader
        syncView: table
        anchors.left: table.left
        boundsBehavior: Flickable.StopAtBounds
        delegate: Item {
            id: cellHeader
            implicitHeight: 30
            Text { id: text; anchors.verticalCenter: cellHeader.verticalCenter; text: model.display; color: '#666873'; }
            Component.onCompleted: {
                if (column === 0 || column === 1 || column === 2 || column === 6) {
                    text.anchors.left = cellHeader.left
                } else if (column === 3 || column === 4) {
                    text.anchors.right = cellHeader.right
                } else {
                    text.anchors.centerIn = cellHeader
                }
                const data = ['From', 'To', 'Currency', 'Price', 'Amount', 'Buy/Sell', 'Date']
                text.text = data[column]
            }
        }
    }

    TableView {
        id: table

        anchors.top: horizontalHeader.bottom
        anchors.left: verticalHeader.right

        width: root.width
        height: root.height

        z: 2
        boundsMovement: Flickable.StopAtBounds
        boundsBehavior: Flickable.StopAtBounds

        leftMargin: 38

        rowSpacing: 4
        clip: true

        model: TableModel {
            TableModelColumn { display: "From" }
            TableModelColumn { display: "To" }
            TableModelColumn { display: "Currency" }
            TableModelColumn { display: "Price" }
            TableModelColumn { display: "Amount" }
            TableModelColumn { display: "Buy/Sell" }
            TableModelColumn { display: "Date" }

            rows: [
                {
                    "From": "0xce4...QnoY",
                    "To": "0xr3...rq3Z",
                    "Currency": {
                        "icon": "image/BTC.svg",
                        "text": "Bitcoin"
                    },
                    "Price": "$21,843.47",
                    "Amount": {
                        "crypto": "19BTC",
                        "price": "$399,000"
                    },
                    "Buy/Sell": "Buy",
                    "Date": "12/08/2022"
                },
                {
                    "From": "0xce4...QnoY",
                    "To": "0xr3...rq3Z",
                    "Currency": {
                        "icon": "image/BTC.svg",
                        "text": "Bitcoin"
                    },
                    "Price": "$21,843.47",
                    "Amount": {
                        "crypto": "19BTC",
                        "price": "$399,000"
                    },
                    "Buy/Sell": "Buy",
                    "Date": "12/08/2022"
                },
                {
                    "From": "0xce4...QnoY",
                    "To": "0xr3...rq3Z",
                    "Currency": {
                        "icon": "image/BTC.svg",
                        "text": "Bitcoin"
                    },
                    "Price": "$21,843.47",
                    "Amount": {
                        "crypto": "19BTC",
                        "price": "$399,000"
                    },
                    "Buy/Sell": "Buy",
                    "Date": "12/08/2022"
                },
                {
                    "From": "0xce4...QnoY",
                    "To": "0xr3...rq3Z",
                    "Currency": {
                        "icon": "image/BTC.svg",
                        "text": "Bitcoin"
                    },
                    "Price": "$21,843.47",
                    "Amount": {
                        "crypto": "19BTC",
                        "price": "$399,000"
                    },
                    "Buy/Sell": "Buy",
                    "Date": "12/08/2022"
                },
                {
                    "From": "0xce4...QnoY",
                    "To": "0xr3...rq3Z",
                    "Currency": {
                        "icon": "image/BTC.svg",
                        "text": "Bitcoin"
                    },
                    "Price": "$21,843.47",
                    "Amount": {
                        "crypto": "19BTC",
                        "price": "$399,000"
                    },
                    "Buy/Sell": "Buy",
                    "Date": "12/08/2022"
                },
                {
                    "From": "0xce4...QnoY",
                    "To": "0xr3...rq3Z",
                    "Currency": {
                        "icon": "image/BTC.svg",
                        "text": "Bitcoin"
                    },
                    "Price": "$21,843.47",
                    "Amount": {
                        "crypto": "19BTC",
                        "price": "$399,000"
                    },
                    "Buy/Sell": "Buy",
                    "Date": "12/08/2022"
                }
            ]
        }

        DelegateChooser {
            id: chooser
            DelegateChoice {
                column: 0;
                delegate: CellTable {
                    implicitWidth: 145; implicitHeight: heightCell
                    text: model.display
                    textAlign: 'left'
                }
            }
            DelegateChoice {
                column: 1;
                delegate: CellTable {
                    implicitWidth: 145; implicitHeight: heightCell
                    text: model.display
                    textAlign: 'left'
                }
            }
            DelegateChoice {
                column: 2;
                delegate: CellTable {
                    implicitWidth: 145; implicitHeight: heightCell
                    text: model.display.text
                    textAlign: 'left'
                }
            }
            DelegateChoice {
                column: 3;
                delegate: CellTable {
                    implicitWidth: 102; implicitHeight: heightCell
                    text: model.display
                    textAlign: 'right'
                }
            }
            DelegateChoice {
                column: 4;
                delegate: CellTable {
                    implicitWidth: 130; implicitHeight: heightCell
                    text: model.display.crypto
                    textAlign: 'right'
                }
            }
            DelegateChoice {
                column: 5;
                delegate: CellTable {
                    implicitWidth: 130; implicitHeight: heightCell
                    text: model.display
                    textAlign: 'center'
                }
            }
            DelegateChoice {
                column: 6;
                delegate: CellTable {
                    implicitWidth: 130; implicitHeight: heightCell
                    text: model.display
                    textAlign: 'left'
                }
            }
        }

        Column {
            spacing: 4
            x: -38
            Repeater {
                model: table.rows
                Rectangle {
                    width: table.width
                    height: heightCell
                    color: '#171822'
                    border.width: 1
                    border.color: '#303241'
                    radius: 8
                }
            }
        }

        Column {
            spacing: 4
            x: -38
            Repeater {
                model: table.rows
                Item {
                    width: 38
                    height: heightCell
                    Text {anchors.centerIn: parent; text: index + 1; color: '#303241'}
                }
            }
        }

        delegate: chooser
    }
}
