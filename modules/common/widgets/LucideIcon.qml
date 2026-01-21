import QtQuick

import Quickshell.Io

import qs.modules.common

Text {
    id: root
    required property string icon
    font.family: Variable.font.family.iconLucide
    renderType: Text.QtRendering
    text: String.fromCharCode(parseInt(Variable.lucideJson[icon].encodedCode.slice(1), 16))
}
