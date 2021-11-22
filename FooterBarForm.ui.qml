import QtQuick 2.4
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.12
import "common"

Rectangle {
    height: 41
    width: 1000
    color: "#5A5959"
    property alias progress_status: progress_status
    property alias label_status: label_status
    property alias label_version: label_version
    property alias label_nozzle: label_nozzle
    property alias label_id: label_id
    property alias label_time: label_time
    property alias state_scanner: state_scanner
    property alias state_net: state_net
    property alias state_light: state_light
    property alias state_camera: state_camera
    property alias state_manual: state_manual
    property alias state_moving: state_moving
    property alias state_plc: state_plc
    property alias state_running: state_running
    property alias label_pos: label_pos

    RowLayout {
        anchors.fill: parent

        StatusButton {
            id: state_running
            Layout.fillHeight: true
            text: qsTr("运行状态")
        }

        StatusButton {
            id: state_plc
            Layout.fillHeight: true
            text: qsTr("PLC")
        }

        StatusButton {
            id: state_moving
            Layout.fillHeight: true
            text: qsTr("运动状态")
        }

        StatusButton {
            id: state_manual
            Layout.fillHeight: true
            text: qsTr("手动模式")
        }

        StatusButton {
            id: state_camera
            Layout.fillHeight: true
            text: qsTr("相机状态")
        }

        StatusButton {
            id: state_light
            Layout.fillHeight: true
            text: qsTr("光源状态")
        }

        StatusButton {
            id: state_net
            Layout.fillHeight: true
            text: qsTr("联机状态")
        }

        StatusButton {
            id: state_scanner
            Layout.fillHeight: true
            text: qsTr("扫码枪")
        }

        Item {
            Layout.fillWidth: true
        }

        Label {
            id: label_status
            visible: false
            text: qsTr("正在扫描")
        }

        CustomProgressBar {
            id: progress_status
            Layout.fillHeight: true
            value: 0.5
            visible: false
        }

        Label {
            id: label_time
            text: qsTr("运行时间: 0:0:0")
            property var begin_time
        }

        ToolSeparator {}

        Label {
            id: label_id
            text: qsTr("Label")
        }

        ToolSeparator {}

        Label {
            id: label_nozzle
            text: qsTr("Label")
        }

        ToolSeparator {}

        Label {
            id: label_version
            text: qsTr("Label")
        }

        ToolSeparator {}

        Label {
            id: label_pos
            text: qsTr("Label")
        }
    }
}

