import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    id: page

    ComboBox {
         anchors.centerIn: page
         label: "Screen brightness:"

         menu: ContextMenu {
             MenuItem { text: "Automatic"; onClicked: console.log(text) }
             MenuItem { text: "Manual"; onClicked: console.log(text) }
             MenuItem { text: "High"; onClicked: console.log(text) }
         }
     }
}
