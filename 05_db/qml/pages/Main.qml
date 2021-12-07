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
                text: qsTr("Color list")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("01_color_list.qml"))
            }
            MenuItem {
                text: qsTr("Add list")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("02_add_list.qml"))
            }
            MenuItem {
                text: qsTr("Color list(js)")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("03_color_list_js.qml"))
            }
            MenuItem {
                text: qsTr("Currency")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("04_currency.qml"))
            }
            MenuItem {
                text: qsTr("Currency(js)")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("05_currency_js.qml"))
            }
            MenuItem {
                text: qsTr("Notes")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("06_notes.qml"))
            }
            MenuItem {
                text: qsTr("ConfigValue")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("07_config.qml"))
            }
            MenuItem {
                text: qsTr("ConfigGroup")
                onClicked: pageStack.animatorPush(Qt.resolvedUrl("08_config_group.qml"))
            }
        }
        Column {
            id: column

            width: page.width
            spacing: Theme.paddingLarge
            PageHeader {
                title: qsTr("DataBase")
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
