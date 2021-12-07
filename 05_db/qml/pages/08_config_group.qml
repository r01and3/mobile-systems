import QtQuick 2.0
import Sailfish.Silica 1.0
import Nemo.Configuration 1.0

Page {
    id: page

    Column {
        width: page.width
        TextField {
            id: textField
            text: config.textValue
            EnterKey.onClicked: {
                config.textValue = textField.text
            }
        }
        TextSwitch {
            width: parent.width
            id: switchText
            checked: config.switchValue
            text: checked ? "On" : "Off"
            onClicked: config.switchValue = switchText.checked
        }
    }
    ConfigurationGroup {
        id: config
        path: "/apps/05_db/settings"

        property string textValue: ""
        property bool switchValue: false
    }
}
