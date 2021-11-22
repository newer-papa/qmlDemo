import QtQuick 2.0
import NativeClass 1.0
import QtQuick.Controls 2.12

Button {
    property int addr: -1
    property alias interval: timer.interval

    onClicked: {
        enabled = false
        DeviceController.setBoolValue(addr, true)
        timer.start()
    }

    Timer {
        id: timer

        onTriggered: {
            DeviceController.setBoolValue(addr, false)
            enabled = true
        }
    }

    Component.onDestruction: {
        timer.stop()
        if (enabled == false) {
            timer.triggered()
        }
    }
}
