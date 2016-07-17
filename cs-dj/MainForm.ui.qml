import QtQuick 2.5

Rectangle {
    property alias mouseArea: mouseArea

    width: 800
    height: 800

    MouseArea {
        id: mouseArea
        width: parent.width
        height: parent.height
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.fill: parent
    }

    SongDisplayAreaForm {
        id: topLeft
        x: 0
        y: 0
        width: parent.width / 2
        height: parent.height / 2
        color: "yellow"
    }

    SongDisplayAreaForm {
        id: topRight
        x: parent.width / 2
        y: 0
        width: parent.width / 2
        height: parent.height / 2
        color: "lime"
    }

    SongDisplayAreaForm {
        id: bottomRight
        x: parent.width / 2
        y: parent.height / 2
        width: parent.width / 2
        height: parent.height / 2
        color: "blue"
    }

    SongDisplayAreaForm {
        id: bottomLeft
        x: 0
        y: parent.height / 2
        width: parent.width / 2
        height: parent.height / 2
        color: "red"
    }
}
