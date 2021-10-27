import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    Column {
        anchors.centerIn: page

        TextField {
            id: result
        }
        Button {
            text: "Open input dialog"
            onClicked: textDialog.open()
        }
    }
    Dialog {
        id: textDialog
        anchors.centerIn: page

        TextField {
            id: input
        }
        onAccepted: result.text = input.text
    }
}
