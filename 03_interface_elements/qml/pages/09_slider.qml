import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    Slider {
        anchors.centerIn: page
        width: page.width
        minimumValue: 0
        maximumValue: 100
        value: _VALUE
        stepSize: 1
        valueText: value
    }
}
