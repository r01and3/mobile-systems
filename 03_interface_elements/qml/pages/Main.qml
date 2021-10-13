import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        PushUpMenu {
            MenuItem {
                text: qsTr("Text Field")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("02_textfield.qml"))
            }
            MenuItem {
                text: qsTr("Button")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("03_button.qml"))
            }
            MenuItem {
                text: qsTr("Counter")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("04_counter.qml"))
            }
            MenuItem {
                text: qsTr("Date")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("05_date.qml"))
            }
            MenuItem {
                text: qsTr("Time")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("06_time.qml"))
            }
            MenuItem {
                text: qsTr("List")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("07_list.qml"))
            }
            MenuItem {
                text: qsTr("Toggle")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("08_toggle.qml"))
            }
            MenuItem {
                text: qsTr("Slider")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("09_slider.qml"))
            }
        }
        contentHeight: column.height

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge

            PageHeader {
                title: qsTr("Interface elements")
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
