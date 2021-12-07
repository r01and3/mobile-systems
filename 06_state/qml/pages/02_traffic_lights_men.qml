import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    Column {
        anchors.centerIn: page

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
                PropertyChanges {
                    target: men
                    x: 0
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
                PropertyChanges {
                    target: men
                    x: page.width - men.width
                }
            }
        ]
        transitions: [
            Transition {
                from: "YELLOW"
                to: "GREEN"
                SequentialAnimation {
                    NumberAnimation {
                        target: men
                        property: "x"
                        duration: 2000
                    }
                }
            }
        ]
        Timer {
            interval: 2000
            repeat: true
            running: true
            onTriggered: {
                var states = ["RED", "YELLOW", "GREEN"];
                var nextIndex = ( states.indexOf( parent.state ) + 1 ) % states.length;
                parent.state = states[nextIndex];
            }
        }
    }
    Image {
        id: men
        source: "image://theme/icon-m-people"
    }
}
