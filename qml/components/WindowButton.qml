import QtQuick

Rectangle {
    id: root

    property url iconSource
    property bool danger: false

    signal clicked

    width: 48
    height: 40

    radius: 3

    color: {
        if (danger && mouse.containsMouse)
            return "#c42b3c";

        if (mouse.containsMouse)
            return "#35383d";

        return "transparent";
    }

    Image {
        anchors.centerIn: parent

        source: root.iconSource

        width: 22
        height: 18

        fillMode: Image.PreserveAspectFit
    }

    MouseArea {
        id: mouse

        anchors.fill: parent

        hoverEnabled: true

        onClicked: root.clicked()
    }
}
