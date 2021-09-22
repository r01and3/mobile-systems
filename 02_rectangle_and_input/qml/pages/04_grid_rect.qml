import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    property int spacingSize: 10
    property int rectangleSize: 220

    Grid {
        columns: 3
        rows: 2
        spacing: page.spacingSize
        anchors.horizontalCenter: page.horizontalCenter
        anchors.verticalCenter: page.verticalCenter

        Rectangle {
            width: page.rectangleSize
            height: page.rectangleSize
            color: "#ff0000"
        }

        Rectangle {
            width: page.rectangleSize
            height: page.rectangleSize
            color: "#00ff00"
        }

        Rectangle {
            width: page.rectangleSize
            height: page.rectangleSize
            color: "#0000ff"
        }

        Rectangle {
            width: page.rectangleSize
            height: page.rectangleSize
            color: "#fc0fc0"
        }

        Rectangle {
            width: page.rectangleSize
            height: page.rectangleSize
            color: "transparent"
        }

        Rectangle {
            width: page.rectangleSize
            height: page.rectangleSize
            color: "#000000"
        }
    }
}
