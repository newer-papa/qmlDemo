import QtQuick 2.0
import NativeClass 1.0
import QtQuick.Controls 2.12

Label {
    property int addr: -1
    property int type: 0
    text: qsTr("状态0")

    ReadableAddr.onBoolValueChanged: function(value) {
        text = value ? qsTr("状态1") : qsTr("状态0")
        color = value ? "red" : "white"
    }

    Component.onCompleted: {
        ReadableAddr.init();
    }
}
