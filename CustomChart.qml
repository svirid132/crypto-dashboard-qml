import QtQuick 2.15
import QtCharts 2.15

Item {
    id: root
    anchors.fill: parent

    //![1]
    ChartView {
        id: chart
        title: "Spline"
        anchors.fill: parent
        antialiasing: true
//        legend.visible: false
        locale: Qt.locale("en_EN")

        ValueAxis {
           id: chartYAxis
           min: 0
           max: 7
           color: "#8c8a89"
           labelsColor: "#9c9998"
           labelFormat: "%d"
           tickCount: 7
//           titleText: "Y Axis"
           gridLineColor: "#313131"
           titleFont.pointSize: 10
           labelsVisible: false
//           style: Qt.DashDotLine
//           tickInterval:
//           minorTickCount: 1
        }

        function toMsecsSinceEpoch(date) {
            var msecs = date.getTime();
            return msecs;
        }

        DateTimeAxis {
           id: chartXAxis
           format: "MMM"
           tickCount: 5
           min: toMsecsSinceEpoch(new Date('2022-01-01T03:24:00'))
           max: toMsecsSinceEpoch(new Date('2022-05-01T03:24:00'))
           gridLineColor: '#313131'
//           format: "dd.MM.yyyy-hh:mm"
//           labelsColor: "white"
//           gridVisible: true
//           lineVisible: true
//           titleText: "Date"
//           titleFont.pointSize: 10
//           labelsVisible: true
        }

        SplineSeries {
            name: "SplineSeries1"
            axisX: chartXAxis
            axisY: chartYAxis
//            style: Qt.DashDotLine
            width: 5
            color: 'green'
            XYPoint { x: chart.toMsecsSinceEpoch(new Date('2022-01-01T03:24:00')); y: 0 }
            XYPoint { x: chart.toMsecsSinceEpoch(new Date('2022-05-01T03:24:00')); y: 3.2 }
        }

        SplineSeries {
            name: "SplineSeries2"
            axisX: chartXAxis
            axisY: chartYAxis
            color: '#2B3FF2'
            width: 5
            XYPoint { x: chart.toMsecsSinceEpoch(new Date('2022-01-01T03:24:00')); y: 1 }
            XYPoint { x: chart.toMsecsSinceEpoch(new Date('2022-03-01T03:24:00')); y: 6 }
            XYPoint { x: chart.toMsecsSinceEpoch(new Date('2022-05-01T03:24:00')); y: 3.2 }
        }

        ScatterSeries {
//            name: "ScatterSeries"
            color: '#2B3FF2'
            axisX: chartXAxis
            axisY: chartYAxis
            borderWidth: 5
            borderColor: '#2B3FF2'
            XYPoint { x: chart.toMsecsSinceEpoch(new Date('2022-03-01T03:24:00')); y: 6 }
            pointLabelsFormat: '@yPoint'
            pointLabelsVisible: true
            pointLabelsFont.pixelSize: 16
        }
    }
}
