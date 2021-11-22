import QtQuick 2.0
import QtQuick.Controls 2.4

Rectangle {
    id:uISettingRoot
    anchors.fill: parent
    visible: false
    color: "lightblue"
    property alias uISettingRoot: uISettingRoot
    Button{
        id:btnUISetCompleteet
        text: qsTr("完成设定")
        onClicked: {
            uISettingRoot.visible=false
        }
    }
}
