import QtQuick 2.0
import Sailfish.Silica 1.0
import harbour.app.CounterModule 1.0

Page {
    id: page

    function updateCounter() {
        label.text = counter.counter;
    }

    Counter {
        id: counter
    }

    Column {
        id: column
        anchors.verticalCenter: page.verticalCenter
        anchors.horizontalCenter: page.horizontalCenter

        Label {
            id: label
            anchors.horizontalCenter: column.horizontalCenter
            text: counter.counter
            color: Theme.secondaryHighlightColor
            font.pixelSize: 240
        }
        Button {
            text: "Add"
            onClicked: { counter.increaseCounter() }
        }
        Button {
            text: "Reset"
            onClicked: { counter.resetCounter() }
        }
    }

    Component.onCompleted: counter.counterChanged.connect(updateCounter)
}
