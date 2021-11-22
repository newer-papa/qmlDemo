import QtQuick 2.4
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.12

Item {
    width: 40
    property alias text: label.text
    state: "Off"
    states: [
        State {
            name: "Off"
            PropertyChanges { target: color; color: "#0000FF" }
        },
        State {
            name: "On"
            PropertyChanges { target: color; color: "#00FF00" }
        },
        State {
            name: "Error"
            PropertyChanges { target: color; color: "#FF0000" }
        }
    ]

    ColumnLayout {
        anchors.fill: parent
        spacing: 0

        Item {
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.topMargin: 5

            Rectangle {
                id: color
                anchors.fill: parent
                visible: false
            }

            Image {
                id: shape
                anchors.fill: parent
                source: "../image/circle.svg"
                sourceSize: Qt.size(parent.width, parent.height)
                fillMode: Image.PreserveAspectFit
                visible: false
            }

            OpacityMask {
                anchors.fill: color
                source: color
                maskSource: shape
            }
        }

        Label {
            id: label
            Layout.fillWidth: true
            Layout.preferredHeight: 20
            font.pixelSize: 10
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
        }
    }
}


