import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    property int counter: 0
    allowedOrientations: Orientation.All

    Column {
        id: column
        anchors.verticalCenter: page.verticalCenter
        anchors.horizontalCenter: page.horizontalCenter

        Label {
            anchors.horizontalCenter: column.horizontalCenter
            text: page.counter.toString()
            color: Theme.secondaryHighlightColor
            font.pixelSize: 240
        }
        Button {
            text: "Add"
            onClicked: { page.counter += 1 }
        }
    }
}
