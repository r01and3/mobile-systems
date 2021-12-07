import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    property int rectangleSize: 240
    allowedOrientations: Orientation.All

    Rectangle {
        id: rect1
        width: page.rectangleSize
        height: page.rectangleSize
        color: "#ff0000"
        anchors.bottom: page.verticalCenter

        Rectangle {
            id: rect2
            width: page.rectangleSize
            height: page.rectangleSize
            color: "#00ff00"
            anchors.left: rect1.right
            anchors.top: rect1.verticalCenter

            Rectangle {
                id: rect3
                width: page.rectangleSize
                height: page.rectangleSize
                color: "#0000ff"
                anchors.left: rect2.horizontalCenter
                anchors.bottom: rect2.verticalCenter
                Text {
                    id: str
                    anchors.centerIn: parent
                    color: "#ffffff"
                    text: qsTr("Rectangle")
                }
            }
        }
    }
}
