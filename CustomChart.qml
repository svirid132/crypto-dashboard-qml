import QtQuick 2.15
import QtCharts 2.15

Rectangle {
    id: root

    color: 'red'

    Column {
        id: texts
        anchors.top: root.top

        Text {
            text: 'Income And Outcome'
            color: '#FFFFFF'
            font.pixelSize: 20
        }

        Text {
            text: 'Based on your performance'
            color: '#43465C'
            font.pixelSize: 12
        }
    }

    //![1]
    ChartView {
        id: chart
        width: 308
        height: 208
        anchors.top: texts.bottom
        antialiasing: true
        //        legend.visible: false
        locale: Qt.locale("en_EN")
        legend.visible: false
        backgroundColor: '#151823'
        //            plotAreaColor: '#151823'

        ValueAxis {
            id: chartYAxis
            min: 0
            max: 10
            color: "#313131"
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
            color: '#313131'
            tickCount: 5
            min: chart.toMsecsSinceEpoch(new Date('2022-01-01T03:24:00'))
            max: chart.toMsecsSinceEpoch(new Date('2022-05-01T03:24:00'))
            gridLineColor: '#313131'
            labelsColor: '#FFF'
        }

        SplineSeries {
            name: "SplineSeries1"
            axisX: chartXAxis
            axisY: chartYAxis
            width: 2
            color: 'green'
            XYPoint { x: chart.toMsecsSinceEpoch(new Date('2022-01-01T03:24:00')); y: 0 }
            XYPoint { x: chart.toMsecsSinceEpoch(new Date('2022-05-01T03:24:00')); y: 3.2 }
        }

        SplineSeries {
            name: "SplineSeries2"
            axisX: chartXAxis
            axisY: chartYAxis
            color: '#2B3FF2'
            width: 2
            XYPoint { x: chart.toMsecsSinceEpoch(new Date('2022-01-01T03:24:00')); y: 1 }
            XYPoint { x: chart.toMsecsSinceEpoch(new Date('2022-03-01T03:24:00')); y: 6 }
            XYPoint { x: chart.toMsecsSinceEpoch(new Date('2022-05-01T03:24:00')); y: 3.2 }
        }

        ScatterSeries {
            name: "ScatterSeries"
            color: '#2B3FF2'
            axisX: chartXAxis
            axisY: chartYAxis
            borderWidth: 1
            borderColor: '#2B3FF2'
            XYPoint { x: chart.toMsecsSinceEpoch(new Date('2022-03-01T03:24:00')); y: 6 }
            pointLabelsFormat: '@yPoint'
            pointLabelsVisible: true
            pointLabelsFont.pixelSize: 16
            pointLabelsColor: '#FFF'
        }
    }
}
