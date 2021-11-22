import QtQuick 2.0
import QtQuick.Controls 2.4

Rectangle {
    id:positioningSetRoot
    anchors.fill: parent
    visible: false
    property alias positioningSetRoot: positioningSetRoot
    Button{
        id:btnPositioningSetNextStep
        text: qsTr("下一步")
        onClicked: {
            deviceParametersRoot.visible=true
        }
    }
}
