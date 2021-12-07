import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    property var dataModel: [
        {bgcolor: "red", description: "Red"},
        {bgcolor: "green", description: "Green"},
        {bgcolor: "blue", description: "Blue"},
        {bgcolor: "aqua", description: "Aqua"},
    ]

    SilicaListView {
        anchors.fill: page
        model: dataModel
        header: PageHeader {title: "Color List"}
        delegate: Rectangle {
            width: page.width
            height: 100
            color: modelData.bgcolor
            Text {
                text: modelData.description
                color: Theme.secondaryHighlightColor
                font.pixelSize: 50
                anchors.centerIn: parent
            }
        }
    }
}
