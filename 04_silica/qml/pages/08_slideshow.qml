import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    ListModel {
        id: taskModel
        ListElement {date: "17.10.05"; description: "Testing"}
        ListElement {date: "18.10.05"; description: "Building"}
        ListElement {date: "19.10.05"; description: "Deploy"}
        ListElement {date: "20.10.05"; description: "Release"}
    }
    SlideshowView {
        id: view
        anchors.centerIn: page
        model: taskModel
        height: 400
        itemHeight: 400
        itemWidth: parent.width
        delegate: Rectangle {
            height: view.itemHeight
            width: view.itemWidth
            Text {
                anchors.centerIn: parent
                text: description + "\n" + date
            }
        }
    }
}
