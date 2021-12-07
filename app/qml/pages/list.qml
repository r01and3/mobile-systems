import QtQuick 2.0
import Sailfish.Silica 1.0
import harbour.app.StringListModule 1.0

Page {
    id: page

    StringList {
        id: stringList
    }

    Column {
        id: column
        anchors.verticalCenter: page.verticalCenter
        anchors.horizontalCenter: page.horizontalCenter
        width: page.width

        TextField {
            id: text
        }
        Button {
            text: "Add"
            width: column.width
            onClicked: { stringList.addString(text.text.toLowerCase()) }
        }
        Button {
            text: "Remove"
            width: column.width
            onClicked: { stringList.removeString() }
        }
        Text {
            id: str
            text: stringList.str
            wrapMode: Text.WordWrap
            color: Theme.secondaryHighlightColor
            font.pixelSize: 70
        }
    }
}
