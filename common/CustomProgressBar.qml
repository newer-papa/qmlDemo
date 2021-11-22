import QtQuick 2.12
import QtQuick.Controls 2.12
import QtQuick.Controls.impl 2.12

ProgressBar {
    id: control

    property int contentHeight: 25
    implicitWidth: Math.max(implicitBackgroundWidth + leftInset + rightInset,
                            implicitContentWidth + leftPadding + rightPadding)
    implicitHeight: Math.max(implicitBackgroundHeight + topInset + bottomInset,
                             implicitContentHeight + topPadding + bottomPadding)

    palette.dark: "#00FF00"
    palette.midlight: "white"

    contentItem: ProgressBarImpl {
        implicitHeight: control.contentHeight
        implicitWidth: 116
        scale: control.mirrored ? -1 : 1
        progress: control.position
        indeterminate: control.visible && control.indeterminate
        color: control.palette.dark
    }

    background: Rectangle {
        implicitWidth: 200
        implicitHeight: control.contentHeight
        y: (control.height - height) / 2

        color: control.palette.midlight
    }
}
