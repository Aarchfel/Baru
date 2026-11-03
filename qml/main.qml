import QtQuick
import QtQuick.Controls
import "components"
import "components/TitleBar"

ApplicationWindow {
    id: window

    visible: true
    width: 1100
    height: 650

    minimumWidth: 600
    minimumHeight: 400

    flags: Qt.FramelessWindowHint | Qt.Window
    color: "transparent"

    //            TitleBar
    // ===============================

    Rectangle {
        anchors.fill: parent
        radius: window.visibility === Window.Maximized ? 0 : 9
        color: "#202124"

        border.width: 1
        border.color: "#3a3d4a"

        clip: true

        WindowDragArea {
            targetWindow: window
            anchors.fill: parent
            z: 10
        }

        TitleBar {
            id: titleBar

            z: 9

            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right

            window: window
        }
    }
}
