import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

import Quickshell

import qs.services
import qs.modules.common
import qs.modules.common.widgets

Item {
    id: root
    property var notificationObject
    property bool hasAppIcon: notificationObject.appIcon !== ""
    property bool hasImage: notificationObject.image !== ""

    Rectangle {
        id: background
        color: Color.colors.primary
        width: Variable.sizes.notificationAppIconSize
        height: Variable.sizes.notificationAppIconSize
        LucideIcon {
            id: icon
            icon: "message-circle"
            anchors.centerIn: parent
            color: Color.colors.on_primary
            font.pixelSize: Variable.font.pixelSize.huge
        }
        radius: 100
    }

    Component {
        id: imageComponent
        Image {
            id: image
            source: notificationObject.image
            Layout.preferredWidth: Variable.sizes.notificationAppIconSize
            Layout.preferredHeight: Variable.sizes.notificationAppIconSize
            Layout.alignment: Qt.AlignVCenter
        }
    }

    Component {
        id: appIconComponent
        Image {
            id: appIcon
            source: notificationObject.appIcon
            Layout.preferredWidth: Variable.sizes.notificationAppIconSize
            Layout.preferredHeight: Variable.sizes.notificationAppIconSize
            Layout.alignment: Qt.AlignVCenter
        }
    }

    Component {
        id: emptyComponent
        Rectangle {
            id: empty
            Layout.preferredWidth: Variable.sizes.notificationAppIconSize
            Layout.preferredHeight: Variable.sizes.notificationAppIconSize
            Layout.alignment: Qt.AlignVCenter
            color: Color.colors.surface_container_high
        }
    }
}
