import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    Button {
            anchors.centerIn: page
            text: "Open time picker"
            onClicked: timePicker.open()
        }

    TimePickerDialog {
        id: timePicker
        hourMode: DateTime.TwentyFourHours

        onAccepted: console.log(timePicker.timeText)
    }
}
