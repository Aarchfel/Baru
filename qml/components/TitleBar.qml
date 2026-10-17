import QtQuick
import QtQuick.Controls
import "."

Rectangle {
    id: root

    property ApplicationWindow window

    width: parent.width
    height: 80

    topLeftRadius: 9
    topRightRadius: 9

    border.width: 1
    border.color: "#3a3d4a"

    color: "#25272B"

    //            FontLoader
    // =================================

    FontLoader {
        id: inter

        source: "qrc:/fonts/fonts/Inter-VariableFont_opsz,wght.ttf"
    }

    FontLoader {
        id: montserrat

        source: "qrc:/fonts/fonts/Montserrat-VariableFont_wght.ttf"
    }

    //           Column Layout
    // =================================

    Row {
        anchors.left: parent.left
        anchors.leftMargin: 24
        anchors.verticalCenter: parent.verticalCenter
        spacing: 16

        Image {
            id: baruImage
            source: "qrc:/icons/titlebar/plate.svg"
            width: 32
            height: 32
            sourceSize: Qt.size(128, 128)

            fillMode: Image.PreserveAspectFit
            smooth: true
            antialiasing: true
            anchors.verticalCenter: parent.verticalCenter
        }

        Column {
            anchors.verticalCenter: parent.verticalCenter
            spacing: 2

            Item {
                width: mainTitle.width + subtitleText.width + 8
                height: mainTitle.height

                Text {
                    id: mainTitle
                    text: "Baru"
                    font.family: inter.name
                    font.pixelSize: 26
                    font.weight: Font.ExtraBold
                    color: "#e1ebea"
                }

                Text {
                    id: subtitleText
                    text: "Personal Productivity App"
                    font.family: inter.name
                    font.pixelSize: 15
                    font.weight: Font.Medium
                    color: "#9eb0af"

                    anchors.left: mainTitle.right
                    anchors.leftMargin: 8
                    anchors.baseline: mainTitle.baseline
                }
            }

            Text {
                id: taglineText
                text: "“Do It, Learn It, Try It”"
                font.family: montserrat.name
                font.pixelSize: 12
                font.weight: Font.Medium
                color: "#636968"
            }
        }
    }

    //            Buttons
    // =================================

    Row {
        anchors.right: parent.right
        anchors.rightMargin: 24
        anchors.verticalCenter: parent.verticalCenter

        spacing: 4

        WindowButton {
            iconSource: "qrc:/icons/titlebar/minimize.svg"

            onClicked: {
                root.window.showMinimized();
            }
        }

        WindowButton {
            iconSource: root.window.visibility === Window.Maximized ? "qrc:/icons/titlebar/separatewindow.svg" : "qrc:/icons/titlebar/maximize.svg"

            onClicked: {
                if (root.window.visibility === Window.Maximized)
                    root.window.showNormal();
                else
                    root.window.showMaximized();
            }
        }

        WindowButton {
            iconSource: "qrc:/icons/titlebar/close.svg"
            danger: true

            onClicked: {
                root.window.hide();
            }
        }
    }
}
