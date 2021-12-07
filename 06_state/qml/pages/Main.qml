import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    allowedOrientations: Orientation.All

    SilicaFlickable {
        anchors.fill: parent

        PushUpMenu {
            MenuItem {
                text: qsTr("Traffic lights")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("01_traffic_lights.qml"))
            }
            MenuItem {
                text: qsTr("Traffic lights(with moving men)")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("02_traffic_lights_men.qml"))
            }
            MenuItem {
                text: qsTr("Hello world")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("03_hello_world.qml"))
            }
            MenuItem {
                text: qsTr("Traffic lights(component)")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("04_traffic_lights_component.qml"))
            }
            MenuItem {
                text: qsTr("Button creator")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("05_button_creator.qml"))
            }
            MenuItem {
                text: qsTr("Stopwatch")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("06_stopwatch.qml"))
            }
            MenuItem {
                text: qsTr("Page Stack Signal")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("07_page_stack_signal.qml"))
            }
        }
        contentHeight: column.height

        Column {
            id: column
            width: page.width
            spacing: Theme.paddingLarge

            PageHeader {
                title: qsTr("State")
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

