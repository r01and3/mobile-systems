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
    SilicaListView {
        anchors.fill: page
        model: taskModel
        header: PageHeader {title: "Tasks"}
        section {
            property: "date"
            delegate: SectionHeader {text: section}
        }
        delegate: Text {
            text: description
            color: Theme.secondaryHighlightColor
            font.pixelSize: 50
        }
    }
}
