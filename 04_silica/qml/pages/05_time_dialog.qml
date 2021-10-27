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
            text: "Open time dialog"
            onClicked: timePicker.open()
        }
    }
    TimePickerDialog {
        id: timePicker

        onAccepted: result.text = timePicker.timeText
    }
}
