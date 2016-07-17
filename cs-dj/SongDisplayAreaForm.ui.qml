import QtQuick 2.4

Item {
    id: item1
    width: 400
    height: 400
    property alias color: bg.color

    Text {
        id: title
        y: 4
        height: parent.height / 3
        text: qsTr("<Song>")
        font.bold: true
        z: 1
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        font.pixelSize: 40
    }

    Text {
        id: artist
        y: parent.height / 3
        height: parent.height / 3
        text: "<Artist>"
        verticalAlignment: Text.AlignVCenter
        z: 2
        horizontalAlignment: Text.AlignHCenter
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        font.pixelSize: 30
    }

    Rectangle {
        id: bg
        color: "#ff0000"
        anchors.fill: parent
    }

    Text {
        id: nvotes
        y: parent.height / 3 * 2
        height: parent.height / 3
        text: qsTr("<#Votes>")
        font.bold: true
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 0
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        font.pixelSize: 35
    }
}
