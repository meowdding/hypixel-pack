#moj_import <color_util.glsl>

vec4 getModifiedVanillaColor(vec4 color) {
    int tintColorID = getColorID(color.rgb);

    // Swap vanilla color palette with more pleasant one
    switch (tintColorID) {
        case 0xAAAAAA: return vec4(0xA8, 0xBF, 0xD2, color.a * 255.0) / 255.0; // Light gray
        case 0x2A2A2A: return vec4(0x2A, 0x2F, 0x34, color.a * 255.0) / 255.0; // Light gray shadow
        case 0x555555: return vec4(0x70, 0x75, 0x92, color.a * 255.0) / 255.0; // Gray
        case 0x151515: return vec4(0x1C, 0x1D, 0x24, color.a * 255.0) / 255.0; // Gray shadow
        case 0xFFFF55: return vec4(0xFF, 0xDE, 0x2F, color.a * 255.0) / 255.0; // Yellow
        case 0x3F3F15: return vec4(0x3F, 0x37, 0x0B, color.a * 255.0) / 255.0; // Yellow shadow
        case 0x55FF55: return vec4(0x51, 0xFF, 0x58, color.a * 255.0) / 255.0; // Light green
        case 0x153F15: return vec4(0x14, 0x3F, 0x16, color.a * 255.0) / 255.0; // Light green shadow
        case 0xFF5555: return vec4(0xFF, 0x65, 0x65, color.a * 255.0) / 255.0; // Red
        case 0x3F1515: return vec4(0x3F, 0x19, 0x19, color.a * 255.0) / 255.0; // Red shadow
        case 0xFF55FF: return vec4(0xEA, 0x89, 0xFF, color.a * 255.0) / 255.0; // Light purple
        case 0x3F153F: return vec4(0x3A, 0x22, 0x3F, color.a * 255.0) / 255.0; // Light purple shadow
        case 0x55FFFF: return vec4(0x45, 0xF4, 0xFF, color.a * 255.0) / 255.0; // Aqua
        case 0x153F3F: return vec4(0x11, 0x3D, 0x3F, color.a * 255.0) / 255.0; // Aqua shadow
        case 0xFFAA00: return vec4(0xFF, 0xA2, 0x16, color.a * 255.0) / 255.0; // Gold
        case 0x3F2A00: return vec4(0x3F, 0x28, 0x05, color.a * 255.0) / 255.0; // Gold shadow
        case 0x5555FF: return vec4(0x45, 0x9B, 0xFF, color.a * 255.0) / 255.0; // Blue
        case 0x15153F: return vec4(0x11, 0x26, 0x3F, color.a * 255.0) / 255.0; // Blue shadow
        case 0xAA00AA: return vec4(0x82, 0x4D, 0xFF, color.a * 255.0) / 255.0; // Purple
        case 0x2A002A: return vec4(0x20, 0x13, 0x3F, color.a * 255.0) / 255.0; // Purple shadow
        case 0xAA0000: return vec4(0xD1, 0x32, 0x28, color.a * 255.0) / 255.0; // Dark red
        case 0x2A0000: return vec4(0x34, 0x0C, 0x0A, color.a * 255.0) / 255.0; // Dark red shadow
        case 0x00AA00: return vec4(0x50, 0xD6, 0x4E, color.a * 255.0) / 255.0; // Dark green
        case 0x002A00: return vec4(0x14, 0x35, 0x13, color.a * 255.0) / 255.0; // Dark green shadow
        case 0x00AAAA: return vec4(0x00, 0x9A, 0x88, color.a * 255.0) / 255.0; // Cyan
        case 0x002A2A: return vec4(0x00, 0x26, 0x22, color.a * 255.0) / 255.0; // Cyan shadow
        default: return color;
    }
}