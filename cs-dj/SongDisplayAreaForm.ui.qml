import QtQuick 2.4

Item {
    width: 400
    height: 400
    property alias color: bg.color

    Text {
        id: title
        y: 0
        height: parent.height / 2
        text: qsTr("<Song>")
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
        y: parent.height / 2
        height: parent.height / 2
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
}
