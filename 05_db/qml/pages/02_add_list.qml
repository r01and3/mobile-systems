import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page
    property int count: 0

    ListModel {
        id: dataModel
    }
    Column {
        anchors.fill: page
        SilicaListView {
            height: parent.height - addButton.height
            width: parent.width
            model: dataModel
            header: PageHeader {title: "Add list"}
            delegate: Rectangle {
                width: parent.width
                height: 100
                color: "skyblue"
                Text {
                    text: model.text
                    color: Theme.secondaryHighlightColor
                    font.pixelSize: 50
                    anchors.centerIn: parent
                }
                MouseArea {
                    anchors.fill: parent
                    onClicked: dataModel.remove(model.index)
                }
            }
        }
        Button {
            id: addButton
            anchors.horizontalCenter: parent.horizontalCenter
            text: "Add item"
            onClicked: dataModel.append({text: "Item" + (++count)})
        }
    }
}
