import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    ValueButton {
        anchors.centerIn: page
        property int counter: 0
        value: "Counter: " + counter
        description: "Number of clicks"
        onClicked: { counter += 1 }
    }
}
