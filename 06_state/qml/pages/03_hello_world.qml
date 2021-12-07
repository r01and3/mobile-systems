import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    Text {
        id: helloWorld
        anchors.horizontalCenter: page.horizontalCenter
        text: "Hello world"
        font.pixelSize: 90

        MouseArea {
            anchors.fill: helloWorld
            onPressed: helloWorld.state = "BOTTOM"
            onReleased: helloWorld.state = "TOP"
        }

        state: "TOP"
        states: [
            State {
                name: "TOP"
                PropertyChanges {target: helloWorld; color: "blue"}
            },
            State {
                name: "BOTTOM"
                PropertyChanges {
                    target: helloWorld
                    color: "red"
                    rotation: 180
                }
                AnchorChanges {target: helloWorld; anchors.bottom: page.bottom}
            }
        ]
        transitions: Transition {
            ColorAnimation { duration: 1000 }
            AnchorAnimation { duration: 1000 }
            RotationAnimation { duration: 1000 }
        }
    }
}
