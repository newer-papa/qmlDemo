import QtQuick 2.0
import QtQuick.Controls 2.4

Rectangle {
    id:deviceParametersRoot
    anchors.fill: parent
    visible: false
    color: "LightYellow"
    property alias deviceParametersRoot: deviceParametersRoot
    Button{
        id:btnDeviceParametersNextStep
        text: qsTr("下一步")
        onClicked: {
            deviceParametersRoot.visible=false
        }
    }
}
