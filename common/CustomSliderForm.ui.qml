import QtQuick 2.4
import QtQuick.Controls 2.12
import QtGraphicalEffects 1.0

Slider {
    id: root
    property color checkedColor: "#006DB2"
    property color handleColor: "#FFFFFF"

    background: Rectangle {
        x: root.leftPadding
        y: root.topPadding + root.availableHeight / 2 - height / 2
        implicitWidth: 200
        implicitHeight: 6
        width: root.availableWidth
        height: implicitHeight
        radius: height / 2
        color: Qt.rgba(0, 0, 0, 0.12)

        Rectangle {
            width: root.visualPosition == 0 ? 0 : root.handle.x + root.handle.width / 2
            height: parent.height
            color: root.checkedColor
            radius: height / 2
            layer.enabled: root.hovered | root.pressed
            layer.effect: DropShadow {
                transparentBorder: true
                color: root.checkedColor
                samples: 8
            }
        }
    }

    handle: Rectangle {
        x: root.leftPadding + root.visualPosition * (root.availableWidth - width)
        y: root.topPadding + root.availableHeight / 2 - height / 2
        implicitWidth: root.background.implicitHeight + 10
        implicitHeight: implicitWidth
        radius: implicitWidth / 2
        color: root.pressed ? Qt.darker(root.handleColor,
                                        1.2) : root.handleColor
        border.width: 1
        border.color: checkedColor
        layer.enabled: root.hovered | root.pressed
        layer.effect: DropShadow {
            transparentBorder: true
            color: root.checkedColor
            samples: 10
        }
    }
}
