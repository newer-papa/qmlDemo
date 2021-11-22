import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.12
import QtQuick.Layouts 1.12
import QtQuick.Dialogs 1.2
import Qt.labs.platform 1.0

Window {
    id:userLogInRoot
    width: 500
    height: 300
    color: "#5A5959"
    visible: false
    title: qsTr("用户登录")
    flags:Qt.FramelessWindowHint
    Rectangle{
        id:userLogInHeader
        anchors.fill: parent
        color: "#5A5959"
        Image {
            id: splashScreenLogo
            source: "image/smore_logo.png"
            Layout.fillHeight: true
            anchors.left: parent.left
            fillMode: Image.TileHorizontally
        }
        Label{
            id:labUserName
            text: qsTr("用户名")
            font.pixelSize: 25
            anchors.left: parent.left
            anchors.top: parent.top
            anchors.leftMargin: 50
            anchors.topMargin: 100
        }
        Label{
            id:labPassword
            text: qsTr("密码")
            font.pixelSize: 25
            anchors.top: parent.top
            anchors.left: labUserName.left
            anchors.topMargin: 150
        }

        Rectangle{
            id:recgTxtInputUserName
            width: 300
            color: "white"
            radius: 3
            border.color: "black"
            border.width: 1
            height: 30
            anchors.top: parent.top
            anchors.topMargin: 100
            anchors.left: labUserName.right
            anchors.leftMargin: 20
            TextField{
                id: txtInputUserName
                cursorVisible: true
                anchors.fill: parent
                focus: true
                placeholderText: "请输入用户名称"
            }
        }
        Rectangle{
            id:recgTxtInputPassword
            width: 300
            color: "white"
            radius: 3
            border.color: "black"
            border.width: 1
            height: 30
            anchors.top: parent.top
            anchors.topMargin: 150
            anchors.left: recgTxtInputUserName.left
            TextField{
                id: txtInputPassword
                cursorVisible: true
                anchors.fill: parent
                focus: true
                echoMode: TextInput.PasswordEchoOnEdit
                placeholderText: "请输入用户密码"
            }
        }

        Button{
            id:btnUserLogInOK
            width: 50
            height: 30
            anchors.top: parent.top
            anchors.topMargin: 230
            anchors.left: parent.left
            anchors.leftMargin: 300
            background: Rectangle{
                id:btnUserLogInOKcolor
                radius: 6
                color: btnUserLogInOK.down?"lightgreen":"lightblue"
                Text {
                    id: loginTxtOK
                    anchors.centerIn: parent
                    text: qsTr("确认")
                }
            }
        }

        Button{
            id:btnUserLogInCancel
            width: 50
            height: 30
            anchors.top: parent.top
            anchors.topMargin: 230
            anchors.left: btnUserLogInOK.right
            anchors.leftMargin: 40
            background: Rectangle{
                id:btnUserLogInCancelcolor
                radius: 6
                color: btnUserLogInCancel.down?"lightgreen":"lightblue"
                Text {
                    id: loginTxtCancel
                    anchors.centerIn: parent
                    text: qsTr("取消")
                }
            }
            onClicked: {
                userLogInRoot.visible=false
            }
        }
    }
}
