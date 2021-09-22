import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    property int spacingSize: 10
    property int rectangleSize: 220

    Row {
        spacing: page.spacingSize
        anchors.horizontalCenter: page.horizontalCenter
        anchors.verticalCenter: page.verticalCenter

        Column {
            spacing: page.spacingSize

            Rectangle {
                width: page.rectangleSize
                height: page.rectangleSize
                color: "#ff0000"
            }

            Rectangle {
                width: page.rectangleSize
                height: page.rectangleSize
                color: "#fc0fc0"
            }
        }

        Column {
            spacing: page.spacingSize

            Rectangle {
                width: page.rectangleSize
                height: page.rectangleSize
                color: "#00ff00"
            }
        }

        Column {
            spacing: page.spacingSize

            Rectangle {
                width: page.rectangleSize
                height: page.rectangleSize
                color: "#0000ff"
            }

            Rectangle {
                width: page.rectangleSize
                height: page.rectangleSize
                color: "#000000"
            }
        }
    }
}
