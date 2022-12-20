import QtQuick 2.0

Item {
    id: root
    width: 52
    height: 52
    property int progress: 75

    QtObject {
        id: privateRoot
        property int lineWidth: 10
        property int circleSize: root.width - lineWidth
    }

    Canvas {
        id: canvas
        width: root.width
        height: root.width
//        contextType: "2d"

//        Connections {
//            target: control
//            function onPressedChanged() { canvas.requestPaint(); }
//        }

        onPaint: {
            const ctx = getContext("2d");
            const radius = privateRoot.circleSize / 2
            const lineWidth = privateRoot.lineWidth

            ctx.beginPath();

            ctx.arc(radius + lineWidth / 2, radius + lineWidth / 2, radius, 0, 2 * Math.PI);
            ctx.strokeStyle = '#414955'
            ctx.lineWidth = 2;
            ctx.stroke();

            ctx.beginPath();

            const gradient = ctx.createLinearGradient(radius + lineWidth / 2, radius + lineWidth / 2, radius * 2, radius * 2);

            gradient.addColorStop(0, "#AEB5F1");
            gradient.addColorStop(0.5, "#2B3FF2");

            const angle = 360 * root.progress / 100;
            const endAngle = (Math.PI / 180) * angle
            ctx.arc(radius + lineWidth / 2, radius + lineWidth / 2, radius, 0, endAngle);
            ctx.strokeStyle = gradient;
            ctx.lineCap = 'round';
            ctx.lineWidth = lineWidth;
            ctx.stroke();
        }
    }
}
