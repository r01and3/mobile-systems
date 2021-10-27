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
            text: "Open date dialog"
            onClicked: datePicker.open()
        }
    }
    DatePickerDialog {
        id: datePicker

        onAccepted: result.text = datePicker.day + " " + datePicker.month + " " + datePicker.year
    }
}
