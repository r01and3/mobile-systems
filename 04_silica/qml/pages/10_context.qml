import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaListView {
        anchors.fill: parent
        model: 20
        delegate: ListItem {
            id: delegate
            Label {
                x: Theme.paddingLarge
                text: "List item number: " + index
                color: delegate.highlighted ? Theme.highlightColor : Theme.primaryColor
            }
            menu: ContextMenu {
                MenuLabel {text: "Context menu"}
                MenuItem {
                    text: "Menu item 1"
                    onClicked: console.log("Number: 1\nIndex: " + index)
                }
                MenuItem {
                    text: "Menu item 2"
                    onClicked: console.log("Number: 2\nIndex: " + index)
                }
            }
        }
    }
}
