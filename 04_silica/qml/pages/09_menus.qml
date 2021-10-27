import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaFlickable {
        anchors.fill: parent

        Text {
            id: itemName
            anchors.centerIn: parent
            color: Theme.secondaryHighlightColor
            font.pixelSize: 50
            text: ""
        }
        PullDownMenu {
            MenuItem {
                text: "PullDown1"
                onClicked: itemName.text = text
            }
            MenuItem {
                text: "PullDown2"
                onClicked: itemName.text = text
            }
            MenuItem {
                text: "PullDown3"
                onClicked: itemName.text = text
            }
            MenuItem {
                text: "PullDown4"
                onClicked: itemName.text = text
            }
            MenuItem {
                text: "PullDown5"
                onClicked: itemName.text = text
            }
        }
        PushUpMenu {
            MenuItem {
                text: "PushUp1"
                onClicked: itemName.text = text
            }
            MenuItem {
                text: "PushUp2"
                onClicked: itemName.text = text
            }
            MenuItem {
                text: "PushUp3"
                onClicked: itemName.text = text
            }
            MenuItem {
                text: "PushUp4"
                onClicked: itemName.text = text
            }
            MenuItem {
                text: "PushUp5"
                onClicked: itemName.text = text
            }
        }
    }
}
