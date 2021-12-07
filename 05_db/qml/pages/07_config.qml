import QtQuick 2.0
import Sailfish.Silica 1.0
import Nemo.Configuration 1.0

Page {
    id: page

    Column {
        width: page.width
        TextField {
            id: textField
            text: textConfig.value
            EnterKey.onClicked: {
                textConfig.value = textField.text
            }
        }
        TextSwitch {
            width: parent.width
            id: switchText
            checked: switchConfig.value
            text: checked ? "On" : "Off"
            onClicked: switchConfig.value = checked
        }
    }
    ConfigurationValue {
        id: textConfig
        key: "/apps/05_db/settings"
        defaultValue: ""
    }
    ConfigurationValue {
        id: switchConfig
        key: "/apps/05_db/settings"
        defaultValue: false
    }
}
