import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    PageHeader {
        title: "Second page"
    }
    Column {
        anchors.centerIn: page
        spacing: 15

        Button {
            text: "Back"
            onClicked: {
                pageStack.navigateBack(1)
            }
        }
    }
}
