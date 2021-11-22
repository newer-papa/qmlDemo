import QtQuick 2.0
import NativeClass 1.0
import QtQuick.Controls 2.12

TextField {
    property int addr: -1

    onAccepted: {
        if (addr != -1) {
            DeviceController.setBoolValue(addr, text == "1");
        }
    }
}
