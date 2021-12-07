import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    TrafficLights {
        id: trafficLights
        anchors.centerIn: page

        Timer {
            interval: 1000
            repeat: true
            running: true
            onTriggered: {
                var states = ["RED", "YELLOW", "GREEN"];
                var nextIndex = ( states.indexOf( parent.state ) + 1 ) % states.length;
                parent.state = states[nextIndex];
            }
        }
    }
}
