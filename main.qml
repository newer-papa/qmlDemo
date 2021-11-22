import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.14
import Qt.labs.settings 1.0
import QtQuick.Layouts 1.12

ApplicationWindow {
    id:applicationWindowRoot
    visible: true
    objectName: "app_window"
    width: 1600
    height: 900
    title: qsTr("CVR[带相机复检]")
    header: HeaderBar{
        height: 41
        width: parent.width
    }
    footer: FooterBar{
        height: 41
        width: parent.width
    }
    Item{
        id:main_leftPart
        anchors.left: HeaderBar.left
        anchors.top: HeaderBar.bottom
        anchors.bottom: FooterBar.top
        width: applicationWindowRoot.width/4
        height: applicationWindowRoot.height
        visible: true
        Rectangle{
            id:main_letRecg
            anchors.fill: parent
            visible: true
            color: "#cccccc"
            Rectangle{
                id:main_letTopRecg
                anchors.top: parent.top
                width: parent.width
                height: 30
                color: "#d9d9d9"
                RowLayout{
                    anchors.fill: parent
                    Item {
                        width: 20
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                    }
                    Button{
                        id:btn_recheck
                        width: 50
                        height: 30
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        background: Rectangle{
                            id:btnRecheckColor
                            anchors.fill: parent
                            radius: 8
                            color: btn_recheck.down?"black":"#0f72ca"
                            Text {
                                id: loginTxtRecheck
                                color: "white"
                                anchors.centerIn: parent
                                text: qsTr("复检")
                            }
                        }
                    }
                    Item {
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                    }
                    Button{
                        id:btn_setting
                        width: 50
                        height: 30
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                        background: Rectangle{
                            id:btnSettingColor
                            anchors.fill: parent
                            radius: 8
                            color: btn_setting.down?"black":"#0f72ca"
                            Text {
                                id: loginTxtSetting
                                color: "white"
                                anchors.centerIn: parent
                                text: qsTr("设定")
                            }
                        }
                        onClicked: {
                            main_rightPart.visible=false
                            main_leftPart.visible=false
                            positioningSetForm.visible=true
                        }
                    }
                    Item {
                        width: 20
                        Layout.fillHeight: true
                        Layout.fillWidth: true
                    }
                }
            }
            Button{
                id:btn_read
                width: 50
                height: 30
                anchors.right: parent.right
                anchors.top: main_letTopRecg.bottom
                background: Rectangle{
                    id:btnUserLogInOKcolor
                    radius: 4
                    color: btn_read.down?"black":"#0f72ca"
                    Text {
                        id: loginTxtOK
                        color: "white"
                        anchors.centerIn: parent
                        text: qsTr("读取")
                    }
                }
            }
        }
    }
    Item {
        id: main_rightPart
        anchors.left: main_leftPart.right
        anchors.top: HeaderBar.bottom
        anchors.bottom: FooterBar.top
        width: applicationWindowRoot.width/4*3
        height: applicationWindowRoot.height
        visible: true
        Rectangle{
            id:part_rightRecg
            anchors.fill:parent
            color: "#d9d9d9"
        }
    }
}
