import QtQuick 2.0
import QtQuick.Controls 2.15

ComboBox {
    id: comboBox

    property string iconSource
    property string label

    model: ['6000']
    padding: 0
    implicitWidth: 308
    implicitHeight: privateComboBox.backTextHeight + privateComboBox.spacingLabel + privateComboBox.labelHeight
    topPadding: privateComboBox.labelHeight + privateComboBox.spacingLabel
    leftPadding: 20
    rightPadding: indicator.width + parent.spacing

    QtObject {
        id: privateComboBox
        property int labelHeight: 20
        property int spacingLabel: 10
        property int backTextHeight: 50
    }

    contentItem: Control {
        implicitWidth: comboBox.implicitWidth - parent.horizontalPadding
        implicitHeight: comboBox.implicitHeight - parent.verticalPadding
        padding: 0

        contentItem: Rectangle {
            implicitWidth: parent.implicitWidth
            implicitHeight: parent.implicitHeight
            color: 'transparent'
            Text {
                text: comboBox.displayText
                font: comboBox.font
                color: '#fff'
                anchors.verticalCenter: parent.verticalCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }
            Image {
                width: 32
                height: 32
                source: iconSource
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
            }
        }
    }

    indicator: Item {
        implicitWidth: 16 * 3
        implicitHeight: contentItem.implicitHeight
        anchors.right: parent.right
        anchors.verticalCenter: contentItem.verticalCenter
        Canvas {
            id: canvas
            width: 10
            height: 4
            contextType: "2d"
            anchors.centerIn: parent

            onPaint: {
                context.reset();
                for (let i = 0; i < 4; ++i) {
                    context.beginPath();
                    context.moveTo(0, 0);
                    context.lineTo(width / 2, height);
                    context.lineTo(width, 0);
                    context.strokeStyle = "#fff";
                    context.stroke();
                }
            }
        }
    }

    background: Item {
        implicitWidth: parent.implicitWidth
        implicitHeight: parent.implicitHeight

        Text {
            id: textLabel
            text: label
            height: privateComboBox.labelHeight
            color: '#43465C'
        }

        Rectangle {
            anchors.topMargin: privateComboBox.spacingLabel
            anchors.top: textLabel.bottom
            color: '#171822'
            implicitWidth: parent.implicitWidth
            implicitHeight: privateComboBox.backTextHeight
            border.color: "#303241"
            border.width: 1
            radius: 12
        }
    }
}
