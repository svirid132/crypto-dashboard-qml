import QtQuick 2.15
import QtGraphicalEffects 1.15

Rectangle {
    id: button
    property string imgSource

    width: 64
    height: 36
    activeFocusOnTab: true

    FocusScope {
        id: focus
        anchors.fill: button
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        hoverEnabled: true
    }

    Rectangle {
        visible: mouseArea.containsMouse | button.activeFocus
        width: 4
        height: parent.height
        gradient: Gradient {
                GradientStop { position: 0.0; color: "#2AD6F1" }
                GradientStop { position: 1.0; color: "#5860E3" }
        }
    }

    Image {
        id: image
        source: imgSource
        sourceSize.width: 24
        sourceSize.height: 24
        anchors.centerIn: parent
    }

    ColorOverlay {
            anchors.fill: image
            source: image
            color: mouseArea.containsMouse | button.activeFocus ? "#BDC0C9" : '#303241'
        }

    color: "transparent"
}
