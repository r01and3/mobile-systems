import QtQuick 2.0
import Sailfish.Silica 1.0

Page {
    SilicaWebView {
        id: web
        anchors.fill: parent
        header: PageHeader {
            title: "HLTV"
            description: "SilicaWebView"
        }
        url: "https://www.hltv.org"
    }
}
