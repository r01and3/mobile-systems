import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    property int rectangleSize: 420

    Rectangle {
        anchors.verticalCenter: page.verticalCenter
        anchors.horizontalCenter: page.horizontalCenter
        width: page.rectangleSize
        height: page.rectangleSize
        color: "teal"
        transform: [
            Scale {
                xScale: 1 / 2
            },
            Rotation {
                angle: 135
            },
            Translate {
                x: page.rectangleSize
                y: page.rectangleSize
            }
        ]
    }
}
