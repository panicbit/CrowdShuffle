import QtQuick 2.5
import QtQuick.Window 2.2
import QtMultimedia 5.6
import Qt.labs.folderlistmodel 2.1

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    Timer {
        interval: 1000 // ms
        repeat: true
        running: true
        onTriggered: {
            console.log("Hello from QML");
        }
    }

    Audio {
        source: "file:///path/to/file.mp3"
        autoPlay: true
    }

    MainForm {
        anchors.fill: parent
        mouseArea.onClicked: {
        }
    }
}
