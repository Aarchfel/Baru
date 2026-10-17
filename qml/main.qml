import QtQuick
import QtQuick.Controls
import "components"

ApplicationWindow {
    id: window

    visible: true
    width: 1100
    height: 650

    flags: Qt.FramelessWindowHint | Qt.Window
    color: "transparent"

    Rectangle {
        anchors.fill: parent
        radius: 14
        color: "#202124"

        border.width: 1
        border.color: "#3a3d4a"

        clip: true

        TitleBar {
            id: titleBar

            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right

            window: window
        }
    }
}
