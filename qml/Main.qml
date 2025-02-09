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

        Column {
            spacing: 10
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter

            TextField { id: addressInput; text: "239.255.0.1"; width: 200 }
            TextField { id: portInput; text: "45454"; width: 100 }

            Button {
                text: "Bağlan"
                onClicked: udpReceiver.startListening(addressInput.text, portInput.text)
            }

            Button {
                text: "Bağlantıyı Kes"
                onClicked: udpReceiver.stopListening()
            }

            Rectangle {
                width: 20; height: 20
                color: udpReceiver.isConnected ? "green" : "red"
            }
        }

        ListView {
            id: messageList
            width: parent.width; height: 200
            anchors.bottom: parent.bottom
            model: ListModel { id: messageModel }
            delegate: Text { text: model.message; color: "white" }
        }

        Connections {
            target: udpReceiver
            function onDataReceived(message) {
                messageModel.append({ message: message })
            }
        }

        Connections {
            target: xmlParser
            function onNewRectangle(x, y, width, height, color) {
                shapeModel.append({ type: "Rectangle", x, y, width, height, color });
                shapeModel.reset();  
            }
        }

        ListModel { id: shapeModel }
        
        Repeater {
            model: shapeModel
            delegate: Rectangle {
                x: model.x; y: model.y; width: model.width; height: model.height
                color: model.color
            }
        }

        ComboBox {
            id: canInterfaceSelector
            model: ListModel { id: canModel }
        }

        Connections {
            target: socketCanReader
            function onCanInterfacesUpdated(interfaces) {
                canModel.clear()
                for (let i = 0; i < interfaces.length; i++) {
                    canModel.append({ text: interfaces[i] })
                }
            }
        }
    }
}

