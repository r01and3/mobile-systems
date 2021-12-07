import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    ListModel {
            id: taskModel
            ListElement {bgcolor: "red"; description: "Red"}
            ListElement {bgcolor: "green"; description: "Green"}
            ListElement {bgcolor: "blue"; description: "Blue"}
            ListElement {bgcolor: "aqua"; description: "Aqua"}
        }
    SilicaListView {
        anchors.fill: page
        model: taskModel
        header: PageHeader {title: "Color List"}
        delegate: Rectangle {
            width: page.width
            height: 100
            color: bgcolor
            Text {
                text: description
                color: Theme.secondaryHighlightColor
                font.pixelSize: 50
                anchors.centerIn: parent
            }
        }
    }
}
