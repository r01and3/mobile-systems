import QtQuick 2.0
import Sailfish.Silica 1.0
import QtQuick.XmlListModel 2.0

Page {
    id: page

    function loadCurrency() {
        var xhr = new XMLHttpRequest();
        xhr.open("GET", "http://www.cbr.ru/scripts/XML_daily.asp", true);
        xhr.onreadystatechange = function() {
            if (xhr.readyState === XMLHttpRequest.DONE) {
                xmlListModel.xml = xhr.responseText;
            }
        }
        xhr.send();
    }

    XmlListModel {
        id: xmlListModel
        query: "/ValCurs/Valute"
        XmlRole { name: "Name"; query: "Name/string()"; }
        XmlRole { name: "Value"; query: "Value/string()" }
    }

    SilicaListView {
        anchors.fill: parent
        header: PageHeader { title: "Currency" }
        model: xmlListModel
        delegate: Column {
            x: 10
            width: parent.width - 2 * x
            Label {
                width: parent.width
                text: Name + "\n" + Value
            }
        }
    }
    Component.onCompleted: loadCurrency()
}
