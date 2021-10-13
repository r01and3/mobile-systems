import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    TextSwitch {
        id: switchText
        anchors.centerIn: page
        text: checked ? "On" : "Off"
    }
}
