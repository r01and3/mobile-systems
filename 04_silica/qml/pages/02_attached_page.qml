import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    property bool isAttach: true

    PageHeader{
        title: "First page"
    }
    Column {
        anchors.centerIn: page
        spacing: 15

        Button {
            text: "Attach page"
            enabled: isAttach

            onClicked: {
                pageStack.pushAttached(Qt.resolvedUrl("02_back_page.qml"))
                pageStack.navigateForward(1)
                isAttach = !isAttach
            }
        }
        Button {
            text: "Unpin page"
            enabled: !isAttach

            onClicked: {
                pageStack.popAttached()
                isAttach = !isAttach
            }
        }
    }
}
