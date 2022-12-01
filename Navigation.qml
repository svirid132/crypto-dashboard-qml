import QtQuick 2.0

Rectangle  {

    width: 64
    color: '#12131C'
    border.width: 1
    border.color: '#22202A'

    Image {
        source: "image/union.svg"
        sourceSize.width: 34
        sourceSize.height: 36
        x: 15
        y: 23
    }

    IconButton {
        id: homeBtn
        imgSource: 'image/home.svg'
        y: 142
    }

    IconButton {
        id: picBtn_1
        imgSource: 'image/landscapeIcon.svg'
        y: 190
    }

    IconButton {
        id: picBtn_2
        imgSource: 'image/landscapeIcon.svg'
        y: 238
    }

    IconButton {
        id: picBtn_3
        imgSource: 'image/landscapeIcon.svg'
        y: 286
    }

    IconButton {
        id: picBtn_4
        imgSource: 'image/landscapeIcon.svg'
        y: 334
    }
}
