import QtQuick 2.4
import QtQuick.Layouts 1.1
import Ubuntu.Components 1.3

Page {
    anchors.fill: parent

    header: PageHeader {
        id: header
        title: i18n.tr('Info')
        StyleHints {
            foregroundColor: "white"
            backgroundColor: "#3F51B5"
        }
    }

    Image {
        id: coffeeImage
        anchors.top: header.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: parent.width / 4
        width: parent.width / 2
        height: width
        source: "../../assets/logo.svg"
    }


    Label {
        id: label2
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottomMargin: height
        text: i18n.tr('Maintainer: Christian Pauly') + "\n" + i18n.tr('Email: ') + ' christian-pauly@posteo.de'
        onLinkActivated: Qt.openUrlExternally(link)
        horizontalAlignment: Text.AlignHCenter
    }

}
