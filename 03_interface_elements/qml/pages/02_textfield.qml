import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    PageHeader {
        title: "Input number"
    }

    TextField {
        width: 360
        anchors.centerIn: page
        color: Theme.secondaryHighlightColor
        font.pixelSize: 50
        placeholderText: "Input number"
    }
}
