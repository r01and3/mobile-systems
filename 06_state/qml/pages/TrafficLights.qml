import QtQuick 2.0

Column {
    Rectangle {
        id: redLight
        height: 120
        width: 120
        radius: 60
    }
    Rectangle {
        id: yellowLight
        height: 120
        width: 120
        radius: 60
    }
    Rectangle {
        id: greenLight
        height: 120
        width: 120
        radius: 60
    }

    state: "RED"
    states: [
        State {
            name: "RED"
            PropertyChanges {
                target: redLight
                color: "red"
            }
            PropertyChanges {
                target: yellowLight
                color: "black"
            }
            PropertyChanges {
                target: greenLight
                color: "black"
            }
        },
        State {
            name: "YELLOW"
            PropertyChanges {
                target: redLight
                color: "black"
            }
            PropertyChanges {
                target: yellowLight
                color: "yellow"
            }
            PropertyChanges {
                target: greenLight
                color: "black"
            }
        },
        State {
            name: "GREEN"
            PropertyChanges {
                target: redLight
                color: "black"
            }
            PropertyChanges {
                target: yellowLight
                color: "black"
            }
            PropertyChanges {
                target: greenLight
                color: "green"
            }
        }
    ]
}
