import QtQuick 2.4

HeaderBarForm {
    Timer{
        interval: 1000
        running: true
        repeat: true
        onTriggered: updateTime()
    }

    Component.onCompleted: {
        updateTime()
    }

    function updateTime() {
        label_time.text = new Date().toTimeString("hh:mm:ss")
    }
}
