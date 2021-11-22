import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Layouts 1.12
import QtQuick.Controls 2.14

Window {
    id:splashScreenRoot
    width: 750
    height: 450
    objectName: "mainView"
    visible: true
    flags: Qt.Window | Qt.FramelessWindowHint
    Rectangle{
        id:splashScreenHeader
        height: 48
        width: parent.width
        anchors.top: parent.top
        color: "#5A5959"
        Image {
            id: splashScreenLogo
            source: "image/smore_logo.png"
            Layout.fillHeight: true
            anchors.left: parent.left
            fillMode: Image.TileHorizontally
        }
    }
    Rectangle{
        id:splashScreenBorder
        height: parent.height-splashScreenHeader.height
        anchors.topMargin: 0
        width: parent.width
        anchors.top: splashScreenHeader.bottom

        Image {
            id: name
            anchors.fill: parent
            source: "image/splashScreenBackImage.png"
            Layout.fillHeight: true
            ProgressBar{
                property color proColor: "#148014"
                property color proBackgroundColor: "#AAAAAA"
                property int proWidth: 2
                property real progress: 0
                property real proRadius: 3
                property alias interval: timer.interval

                function isRunning(){
                    return(timer.running)
                }

                function onStart(){
                    cProgress.progress = 0;
                    timer.running = true;
                }

                function onStop(){
                    timer.running = false;
                }

                id: cProgress
                anchors.centerIn: parent
                value: (progress/100)
                padding: 2
                background: Rectangle {
                    implicitWidth: 200
                    implicitHeight: 16
                    color: cProgress.proBackgroundColor
                    radius: cProgress.proRadius
                }

                contentItem: Item {
                    implicitWidth: 300
                    implicitHeight: 20

                    Rectangle {
                        width: cProgress.visualPosition * parent.width
                        height: parent.height
                        radius: 2
                        color: cProgress.proColor
                    }
                }

                Timer{
                    id: timer
                    running: true
                    repeat: true
                    interval: 25
                    onTriggered:{
                        cProgress.progress++;
                        if (cProgress.progress == 100){
                            cProgress.onStop();
                            return;
                        }
                    }
                }
            }

            Text {
                id: txtProcess
                text:  cProgress.progress+"%"
                color: "darkblue"
                font.pixelSize: 20
                font.bold: true
                anchors.centerIn: cProgress
            }
        }
    }

    Timer{
        id:splashScreenQuitTime
        interval: 3000
        running: true
        repeat: true
        onTriggered: splashScreenQuit()
    }

    function splashScreenQuit() {
        splashScreenRoot.visible=false
    }
}
