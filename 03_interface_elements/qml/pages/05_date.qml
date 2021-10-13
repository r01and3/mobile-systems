import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    Button {
            anchors.centerIn: page
            text: "Open date picker"
            onClicked: datePicker.open()
        }

    DatePickerDialog {
        id: datePicker

        onAccepted: console.log(datePicker.day + " " + datePicker.month + " " + datePicker.year)
    }
}
