import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        PushUpMenu {
            MenuItem {
                text: qsTr("Show anchors rectangle")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("02_anchors_rect.qml"))
            }
            MenuItem {
                text: qsTr("Show column and row rectangles")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("03_row_column_rect.qml"))
            }
            MenuItem {
                text: qsTr("Show grid rectangles")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("04_grid_rect.qml"))
            }
            MenuItem {
                text: qsTr("Show mutation")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("05_mutation.qml"))
            }
            MenuItem {
                text: qsTr("Show animation")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("06_animation.qml"))
            }
            MenuItem {
                text: qsTr("Show inputs")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("07_inputs.qml"))
            }
        }

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge

            PageHeader {
                title: qsTr("Rectangle and Input application")
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
