import QtQuick 2.0
import NativeClass 1.0
import QtQuick.Controls 2.12

RoundButton {
    property int addr: -1

    onPressed: {
        DeviceController.setBoolValue(addr, true)
    }

    onReleased: {
        DeviceController.setBoolValue(addr, false)
    }

    Component.onDestruction: {
        if (down) {
            released()
        }
    }
}
