import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        PushUpMenu {
            MenuItem {
                text: qsTr("Counter")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("counter.qml"))
            }
            MenuItem {
                text: qsTr("List")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("list.qml"))
            }
        }

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge

            PageHeader {
                title: qsTr("C++")
            }

            Text {
                id: manual
                anchors.horizontalCenter: column.horizontalCenter
                text: qsTr("Push up to see menu")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }
        }
    }
}
