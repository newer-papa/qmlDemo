import QtQuick 2.0
import NativeClass 1.0
import QtQuick.Controls 2.12

TextField {
    property int addr: -1

    onTextChanged: {
        if (text == "") {
            placeholderText = DeviceController.getFloatValue(addr)
        }
    }

    onAccepted: {
        if (addr != -1) {
            var value = $$cvt.toDouble(text)
            DeviceController.setFloatValue(addr, value);
        }
    }

    Component.onCompleted: {
        placeholderText = DeviceController.getFloatValue(addr)
    }
}
