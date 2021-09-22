import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    Button {
        anchors.verticalCenter: page.verticalCenter
        anchors.horizontalCenter: page.horizontalCenter
        text: "Open inputs"
        onClicked: dialog.open()
    }

    Dialog {
        id: dialog

        function clear() {
            leftInput.text = ""
            rightInput.text = ""
        }

        function result() {
            if (isNaN(parseInt(leftInput.text)) || isNaN(parseInt(rightInput.text))) {
                dialog.clear()
                return
            }

            console.log(parseInt(leftInput.text) + parseInt(rightInput.text))
        }

        Column {
            id: column
            anchors.verticalCenter: dialog.verticalCenter

            Row {
                TextField {
                    id: leftInput
                    width: 360
                    color: Theme.secondaryHighlightColor
                    font.pixelSize: 50
                    placeholderText: "Input number"
                }
                TextField {
                    id: rightInput
                    width: 360
                    color: Theme.secondaryHighlightColor
                    font.pixelSize: 50
                    placeholderText: "Input number"
                }
            }

            Row {
                anchors.horizontalCenter: column.horizontalCenter
                spacing: 20
                Button {
                    color: Theme.secondaryHighlightColor
                    text: "Clear"
                    onClicked: dialog.clear()
                }
                Button {
                    color: Theme.secondaryHighlightColor
                    text: "Result"
                    onClicked: dialog.result()
                }
            }
        }

        onAccepted: dialog.result()
        onRejected: dialog.clear()
    }
}
