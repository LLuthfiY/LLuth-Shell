import QtQuick

import Quickshell.Io

import qs.modules.common

Text {
    id: root
    required property string icon
    property string label: ""
    font.family: Variable.font.family.iconLucide
    renderType: Text.QtRendering
    property string iconSymbol: String.fromCharCode(parseInt(Variable.lucideJson[icon].encodedCode.slice(1), 16))
    // text: String.fromCharCode(parseInt(Variable.lucideJson[icon].encodedCode.slice(1), 16))
    text: label !== "" ? iconSymbol + " " + label : iconSymbol
}
