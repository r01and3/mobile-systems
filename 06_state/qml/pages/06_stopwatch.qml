import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    property int hours: 0
    property int minutes: 0
    property int seconds: 0
    property bool isActive: false

    function startStopF() {
        isActive = !isActive
    }

    Timer {
        interval: 1000
        repeat: true
        running: isActive
        onTriggered: {
            var tmpSeconds = seconds + 1;
            seconds = tmpSeconds % 60
            var tmpMinutes = minutes + Math.floor(tmpSeconds / 60);
            minutes = tmpMinutes % 60;
            hours = hours + Math.floor(tmpMinutes / 60);
        }
    }

    Column {
        id: timer
        anchors.centerIn: page
        spacing: 10

        Text {
            font.pixelSize: 50
            color: "blue"
            text: "Hours\n" + hours.toString()
        }
        Text {
            font.pixelSize: 50
            color: "blue"
            text: "Minutes\n" + minutes.toString()
        }
        Text {
            font.pixelSize: 50
            color: "blue"
            text: "Seconds\n" + seconds.toString()
        }
        Rectangle {
            width: 140
            height: 140
            radius: 70
            border.color: "blue"
            color: "transparent"
            Text {
                anchors.centerIn: parent
                font.pixelSize: 50
                color: "blue"
                text: !isActive ? "Start" : "Stop"
            }
            MouseArea {
                id: startStop
                anchors.fill: parent
            }
        }
    }

    Component.onCompleted: startStop.clicked.connect(startStopF)
}
