import QtQuick 2.0
import QtQuick.Controls 2.2
import QtQuick.Controls.Styles 1.4
import QtGraphicalEffects 1.0

TextField {
    id: textField
    width: 404
    placeholderText: qsTr("Search Market")
    placeholderTextColor: '#666873'
    font.pixelSize: 16
    font.family: 'Poppins'
    leftPadding: 50
    color: textField.activeFocus ? '#FFF' : '#666873'
    background: Rectangle {
        id: rect
        radius: 12
        implicitWidth: 100
        implicitHeight: 50
        border.color: textField.activeFocus ? '#FFF': '#303241'
        border.width: 1
        color: 'transparent'

        Item {
            id: item
            width: 50
            height: rect.height
            Image {
                id: image
                anchors.centerIn: item
                width: 20
                height: 20
                source: 'image/loupe.svg'
            }
            ColorOverlay {
                    anchors.fill: image
                    source: image
                    color: textField.activeFocus ? '#FFF': '#303241'
            }
        }
    }
}
