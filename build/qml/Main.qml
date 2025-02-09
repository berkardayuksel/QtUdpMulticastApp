import QtQuick 6.2
import QtQuick.Controls 6.2

ApplicationWindow {
    visible: true
    width: 800
    height: 600
    title: "Qt UDP Multicast"

    Rectangle {
        width: parent.width
        height: parent.height
        color: "black"

        ListModel {
            id: myModel
            ListElement { x: 50; y: 50; width: 100; height: 100; color: "red" }
            ListElement { x: 200; y: 50; width: 100; height: 100; color: "green" }
            ListElement { x: 50; y: 200; width: 100; height: 100; color: "blue" }
            ListElement { x: 200; y: 200; width: 100; height: 100; color: "yellow" }
        }

        Repeater {
            model: myModel
            delegate: Rectangle {
                x: model.x
                y: model.y
                width: model.width
                height: model.height
                color: model.color
            }
        }

        Text {
            id: udpDataText
            text: "Waiting for data..."
            color: "white"
            anchors.centerIn: parent
        }

        Connections {
            target: udpReceiver
            function onDataReceived(message) {
                udpDataText.text = message;
            }
        }
    }
}
