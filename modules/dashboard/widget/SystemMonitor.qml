import QtQuick
import QtQuick.Layouts

import Quickshell

import qs.modules.common
import qs.modules.common.widgets
import qs.services

Rectangle {
    id: root
    color: Color.colors.surface_container
    width: parent.width
    height: 82
    radius: Variable.radius.small
    Layout.fillWidth: true
    ColumnLayout {
        id: col
        anchors.fill: parent
        anchors.margins: 8
        RowLayout {
            spacing: 8
            LucideIcon {
                icon: "cpu"
                color: Color.colors.on_surface
                font.pixelSize: 24
            }
            Rectangle {
                color: Color.colors.primary_container
                radius: Variable.radius.small
                Layout.fillWidth: true
                height: 8
                Rectangle {
                    width: parent.width * CPU.cpuUsage / 100
                    height: 8
                    color: Color.colors.primary
                    radius: Variable.radius.small
                }
            }
        }
        RowLayout {
            spacing: 8
            LucideIcon {
                icon: "memory-stick"
                color: Color.colors.on_surface
                font.pixelSize: 24
            }
            Rectangle {
                color: Color.colors.primary_container
                radius: Variable.radius.small
                Layout.fillWidth: true
                height: 8
                Rectangle {
                    width: parent.width * RAM.ramUsage / 100
                    height: 8
                    color: Color.colors.primary
                    radius: Variable.radius.small
                }
            }
        }
    }
}
