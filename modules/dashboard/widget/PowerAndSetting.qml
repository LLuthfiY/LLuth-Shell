import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Quickshell
import Quickshell.Io

import qs.modules.common
import qs.modules.common.widgets

RowLayout {
    id: root
    spacing: 8
    property string uptime: "uptime"
    RowLayout {
        spacing: 8

        Rectangle {
            id: powerButton
            implicitWidth: 32
            implicitHeight: 32
            radius: 12
            property bool isHovered: false
            color: isHovered ? Color.colors.primary : Color.colors.primary_container
            Behavior on color {
                ColorAnimation {
                    duration: 200
                }
            }
            LucideIcon {
                id: powerIcon
                anchors.centerIn: parent
                icon: "power"
                color: powerButton.isHovered ? Color.colors.on_primary : Color.colors.primary
            }
            MouseArea {
                anchors.fill: parent
                hoverEnabled: true
                onEntered: {
                    powerButton.isHovered = true;
                }
                onExited: {
                    powerButton.isHovered = false;
                }
                onClicked: {
                    powerMenu.popup();
                }
            }
            Menu {
                id: powerMenu
            }
        }
    }
}
