import QtQuick 2.0
import NativeClass 1.0
import QtQuick.Controls 2.12

Button {
    property int addr: -1

    signal turnOff()

    checkable: true
    text: checked ? qsTr("关闭") : qsTr("打开")

    onClicked: {
        if (checked) {
            if (DeviceController.setBoolValue(addr, true)) {
                checked = false
            }
        } else {
            DeviceController.setBoolValue(addr, false)
            turnOff()
        }
    }
}
