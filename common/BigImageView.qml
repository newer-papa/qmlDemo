import QtQuick 2.14
import QtQuick.Controls 2.12
import NativeClass 1.0

Rectangle {
    id: rect
    property url source

    color: "white"

    Flickable {
        id: view
        anchors.fill: parent
        contentWidth: image.width * image.scale
        contentHeight: image.height * image.scale
        clip: true

        ScrollBar.horizontal: ScrollBar {
            policy: ScrollBar.AlwaysOn
        }
        ScrollBar.vertical: ScrollBar {
            policy: ScrollBar.AlwaysOn
        }

        BigImage {
            id: image
            source: rect.source
            transformOrigin: Item.TopLeft

            MouseArea {
                anchors.fill: parent
                onWheel: {
                    var datla = wheel.angleDelta.y/120
                    var factor = 1
                    if(datla > 0)
                    {
                        var scale = image.scale/0.9
                        if (scale <= 1) {
                            factor = 1 / 0.9
                        }
                    }
                    else
                    {
                        if (image.width * image.scale <= view.width &&
                                image.height * image.scale <= view.height) {
                            return
                        }
                        factor = 0.9
                    }
                    var screenx = wheel.x * image.scale - view.contentX
                    var screeny = wheel.y * image.scale - view.contentY
                    image.scale = image.scale * factor
                    view.contentX = wheel.x * image.scale - screenx
                    view.contentY = wheel.y * image.scale - screeny
                }
            }
        }
    }
}
