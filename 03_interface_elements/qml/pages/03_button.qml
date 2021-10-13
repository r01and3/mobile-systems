import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    Column {
        id: column
        anchors.centerIn: page
        property bool isPressed: false

        Button {
            text: "Button"
            down: column.isPressed
            onClicked: { column.isPressed = !column.isPressed }
        }
        Label {
            anchors.horizontalCenter: column.horizontalCenter
            text: column.isPressed ? "Pressed" : "Not Pressed"
        }
    }
}
