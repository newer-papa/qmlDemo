import QtQuick 2.4
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12

Rectangle {
    id:header_rectangle
    width: 1000
    height: 41
    color: "#5A5959"
    property alias btn_permission: btn_permission
    property alias btn_logout: btn_logout
    property alias label_user: label_user
    property alias label_time: label_time
    RowLayout{
        anchors.fill: parent
        Image{
            Layout.fillHeight: true
            width: 300
            fillMode: Image.left
            anchors.left: parent.left
            source: "image//smore_logo.png"
        }

        Item {
            Layout.fillHeight: true
            Layout.fillWidth: true
        }

        Label{
            color: "#ffffff"
            text:qsTr("当前时间：")
        }

        Label{
            id:label_time
            color: "#ffffff"
            text: qsTr("lable_time")
        }

        Label{
            color: "#ffffff"
            text: qsTr("当前登录：")
        }

        Label{
            id:label_user
            color: "#ffffff"
            text: qsTr("label_user")
        }

        Button{
            id:btn_logout
            Layout.fillHeight: true
            Layout.preferredWidth: 100
            background: Rectangle{
                id:btn_logoutColor
                radius: 8
                color: btn_logout.down?"black":"#0f72ca"
                Text {
                    id: loginTxtlogout
                    color: "white"
                    anchors.centerIn: parent
                    text: qsTr("登录")
                }
            }
            onClicked: {
                userLogIn.visible=true
            }
        }

        Button{
            id:btn_permission
            Layout.fillHeight: true
            Layout.preferredWidth: 100
            background: Rectangle{
                id:btn_permissionColor
                radius: 8
                color: btn_permission.down?"black":"#0f72ca"
                Text {
                    id: loginTxtPermission
                    color: "white"
                    anchors.centerIn: parent
                    text: qsTr("管理")
                }
            }
        }
    }
    UserLogIn{
        id:userLogIn
    }
}
