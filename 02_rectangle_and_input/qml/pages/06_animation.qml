import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    Rectangle {
        property int rectangleSize: 120
        anchors.horizontalCenter: page.horizontalCenter
        width: rectangleSize
        height: rectangleSize
        color: "teal"
        NumberAnimation on y {
            from: 0
            to: 600
            duration: 1500
        }
        NumberAnimation on rectangleSize {
            from: 120
            to: 420
            duration: 1500
        }
    }
}
