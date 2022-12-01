import QtQuick 2.15
import QtCharts 2.15
import QtQuick.Controls 2.15
import QtQuick.Shapes 1.4
import QtGraphicalEffects 1.15

Rectangle {
    id: root

    color: '#151823'
    radius: 12
    border.width: 1
    border.color: '#303241'

    Column {
        id: wrap
        anchors.top: root.top
        topPadding: 30
        leftPadding: 16
        rightPadding: 16
        spacing: 8

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

        ChartView {
            id: chart
            width: 308
            height: 208
            antialiasing: true
            locale: Qt.locale("en_EN")
            legend.visible: false
            backgroundColor: '#151823'
            margins.top: 0
            margins.left: 0
            margins.bottom: 0
            x: -20

            ValueAxis {
                id: chartYAxis
                min: 0
                max: 10
                color: "#313131"
                gridLineColor: "#313131"
                labelsColor: "#9c9998"
                labelFormat: "%d"
                tickCount: 7
                titleFont.pointSize: 10
                labelsVisible: false
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
                min: new Date('2022-01-01T03:24:00')
                max: new Date('2022-05-01T03:24:00')
                gridLineColor: '#313131'
                labelsColor: '#FFF'
            }

            SplineSeries {
                id: splineSeries1
                name: "SplineSeries1"
                axisX: chartXAxis
                axisY: chartYAxis
                color: '#8BC34A'
                XYPoint { x: chart.toMsecsSinceEpoch(new Date('2022-01-01T03:24:00')); y: 0 }
                XYPoint { x: chart.toMsecsSinceEpoch(new Date('2022-05-01T03:24:00')); y: 3.2 }
            }

            SplineSeries {
                id: splineSeries2
                name: "SplineSeries2"
                axisX: chartXAxis
                axisY: chartYAxis
                color: '#2B3FF2'
                XYPoint { x: chart.toMsecsSinceEpoch(new Date('2022-01-01T03:24:00')); y: 1 }
                XYPoint { x: chart.toMsecsSinceEpoch(new Date('2022-03-01T03:24:00')); y: 6 }
                XYPoint { x: chart.toMsecsSinceEpoch(new Date('2022-05-01T03:24:00')); y: 3.2 }
            }

            ScatterSeries {
                id: scatterSeries2
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

        Row {
            id: row
            topPadding: 4
            spacing: 40
            CustomCheckBox {
                text: qsTr("Income")
                indicatorColor: '#902B3FF2'
                indicatorOkColor: '#2B3FF2'
                onCheckedChanged: {
                    splineSeries2.visible = checked
                    scatterSeries2.visible = checked
                }
            }
            CustomCheckBox {
                text: qsTr("outcome")
                indicatorColor: '#908EF27E'
                indicatorOkColor: '#8EF27E'
                onCheckedChanged: {
                    splineSeries1.visible = checked
                }
            }
        }
    }
}
