import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    Column {
        anchors.centerIn: page
        spacing: 15

        Button {
            text: "Forward"
            onClicked: pageStack.push(Qt.resolvedUrl("01_stack_depth.qml"))
        }
        Button {
            text: "Back"
            onClicked:  pageStack.pop()
        }
        Label {
            text: pageStack.depth
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
}
