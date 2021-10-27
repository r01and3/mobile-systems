import QtQuick 2.0
import Sailfish.Silica 1.0

CoverBackground {
    property int counter: 0

    Label {
        id: label
        anchors.centerIn: parent
        text: qsTr(counter.toString())
    }

    CoverActionList {
        id: coverAction

        CoverAction {
            iconSource: "image://theme/icon-splus-add"
            onTriggered: counter++
        }

        CoverAction {
            iconSource: "image://theme/icon-splus-clear"
            onTriggered: counter = 0
        }
    }
}
