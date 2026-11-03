pragma ComponentBehavior: Bound

import QtQuick
import QtQuick.Window

Item {
    id: root

    required property Window targetWindow

    property int thickness: 6
    property int cornerSize: 12

    Repeater {
        model: [
            // Sides
            {
                x: 0,
                y: root.cornerSize,
                w: root.thickness,
                h: Math.max(0, root.height - 2 * root.cornerSize),
                edges: Qt.LeftEdge,
                cursor: Qt.SizeHorCursor
            },
            {
                x: root.width - root.thickness,
                y: root.cornerSize,
                w: root.thickness,
                h: Math.max(0, root.height - 2 * root.cornerSize),
                edges: Qt.RightEdge,
                cursor: Qt.SizeHorCursor
            },
            {
                x: root.cornerSize,
                y: 0,
                w: Math.max(0, root.width - 2 * root.cornerSize),
                h: root.thickness,
                edges: Qt.TopEdge,
                cursor: Qt.SizeVerCursor
            },
            {
                x: root.cornerSize,
                y: root.height - root.thickness,
                w: Math.max(0, root.width - 2 * root.cornerSize),
                h: root.thickness,
                edges: Qt.BottomEdge,
                cursor: Qt.SizeVerCursor
            },

            // Corners
            {
                x: 0,
                y: 0,
                w: root.cornerSize,
                h: root.cornerSize,
                edges: Qt.LeftEdge | Qt.TopEdge,
                cursor: Qt.SizeFDiagCursor
            },
            {
                x: root.width - root.cornerSize,
                y: 0,
                w: root.cornerSize,
                h: root.cornerSize,
                edges: Qt.RightEdge | Qt.TopEdge,
                cursor: Qt.SizeBDiagCursor
            },
            {
                x: 0,
                y: root.height - root.cornerSize,
                w: root.cornerSize,
                h: root.cornerSize,
                edges: Qt.LeftEdge | Qt.BottomEdge,
                cursor: Qt.SizeBDiagCursor
            },
            {
                x: root.width - root.cornerSize,
                y: root.height - root.cornerSize,
                w: root.cornerSize,
                h: root.cornerSize,
                edges: Qt.RightEdge | Qt.BottomEdge,
                cursor: Qt.SizeFDiagCursor
            }
        ]

        delegate: MouseArea {
            required property var modelData

            x: modelData.x
            y: modelData.y
            width: modelData.w
            height: modelData.h

            cursorShape: modelData.cursor
            acceptedButtons: Qt.LeftButton

            onPressed: {
                root.targetWindow.startSystemResize(modelData.edges);
            }
        }
    }
}
