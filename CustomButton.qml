import QtQuick 2.0
import QtQuick.Controls 2.15
import QtGraphicalEffects 1.12
import QtQuick.Layouts 1.15

Button {
    id: root
    text: 'Bidded'
    font.family: "Helvetica"
    horizontalPadding: 21
    verticalPadding: 9    
    contentItem: Text {
        text: parent.text
        font.pixelSize: 12
        color: '#FFF'
        horizontalAlignment: Text.AlignHCenter
    }
    background: Rectangle {
        id: rectBtn
        radius: 8
        width: parent.width
        height: parent.height
        color: 'red'
        LinearGradient {
            anchors.fill: parent
            source: rectBtn
            start: Qt.point(0, 0)
            end: Qt.point(parent.width, parent.height)
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#AF53FF" }
                GradientStop { position: 0.95; color: "#6EACFE" }
            }
        }
    }
}
