import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import Quickshell
import Quickshell.Wayland
import Quickshell.Hyprland

import qs.modules.common
import qs.modules.common.widgets
import qs.modules.common.functions
import qs.modules.notification
import qs.services

Scope {
    id: root
    PanelWindow {
        id: dashboardWindow
        visible: Config.ready && GlobalState.dashboardOpen
        screen: Quickshell.screens.find(s => s.name === Hyprland.focusedMonitor?.name) ?? null
        WlrLayershell.namespace: "quickshell:dashboard"
        WlrLayershell.keyboardFocus: WlrKeyboardFocus.OnDemand
        WlrLayershell.layer: WlrLayer.Overlay
        // exclusiveZone: 0
        exclusionMode: ExclusionMode.Ignore
        implicitWidth: 400
        anchors.top: true
        anchors.right: true
        anchors.bottom: true
        color: "transparent"
        Rectangle {
            anchors.fill: parent
            anchors.margins: Config.options.windowManager.gapsOut + Config.options.bar.margin
            color: Color.colors.surface
            radius: 16
            ColumnLayout {
                anchors.fill: parent
                anchors.margins: 16
                spacing: 16
                Repeater {
                    Layout.alignment: Qt.AlignTop
                    model: Config.options.dashboard.widgets
                    Loader {
                        source: "widget/" + modelData
                    }
                }
            }
        }
    }
}
