import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    TextInput {
        id: textInput
        anchors.centerIn: page
        color: Theme.secondaryHighlightColor
        font.pixelSize: 100
        focus: true
        validator: IntValidator { bottom: 0; top: 100 }
        onAccepted: { _VALUE = parseInt(textInput.text) }
    }
}
