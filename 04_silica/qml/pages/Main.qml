import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent
        contentHeight: column.height

        PushUpMenu {
            MenuItem {
                text: qsTr("Stack depth")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("01_stack_depth.qml"))
            }
            MenuItem {
                text: qsTr("Attached page")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("02_attached_page.qml"))
            }
            MenuItem {
                text: qsTr("Input dialog")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("03_text_dialog.qml"))
            }
            MenuItem {
                text: qsTr("Date dialog")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("04_date_dialog.qml"))
            }
            MenuItem {
                text: qsTr("Time dialog")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("05_time_dialog.qml"))
            }
            MenuItem {
                text: qsTr("Tasks list")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("06_list.qml"))
            }
            MenuItem {
                text: qsTr("Web")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("07_web.qml"))
            }
            MenuItem {
                text: qsTr("Slideshow")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("08_slideshow.qml"))
            }
            MenuItem {
                text: qsTr("Menus")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("09_menus.qml"))
            }
            MenuItem {
                text: qsTr("Context")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("10_context.qml"))
            }
        }
        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("Silica")
            }
            Label {
                x: Theme.horizontalPageMargin
                text: qsTr("Push up to see menu")
                color: Theme.secondaryHighlightColor
                font.pixelSize: Theme.fontSizeExtraLarge
            }
        }
    }
}
