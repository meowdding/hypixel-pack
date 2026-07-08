#moj_import <color_util.glsl>

vec4 getModifiedNormalColor(int color) {
    return vec4((color >> 16 & 0xFF) / 255.0, (color >> 8 & 0xFF) / 255.0, (color & 0xFF) / 255.0, 1.0);
}

vec4 getModifiedShadowColor(int color) {
    return vec4(((color >> 16 & 0xFF) / 4) / 255.0, ((color >> 8 & 0xFF) / 4) / 255.0, ((color & 0xFF) / 4) / 255.0, 1.0);
}

vec4 getModifiedVanillaColor(vec4 color) {
    int tintColorID = getColorID(color.rgb);

    // Swap vanilla color palette with more pleasant one
    switch (tintColorID) {
        case 0xAA0000: return getModifiedNormalColor(0xD13228); // Dark red
        case 0x2A0000: return getModifiedShadowColor(0xD13228); 
        case 0xFFAA00: return getModifiedNormalColor(0xFF9000); // Gold
        case 0x3F2A00: return getModifiedShadowColor(0xFF9000); 
        case 0x0000AA: return getModifiedNormalColor(0x353FCE); // Dark blue
        case 0x00002A: return getModifiedShadowColor(0x353FCE); 
        case 0x5555FF: return getModifiedNormalColor(0x459BFF); // Blue
        case 0x15153F: return getModifiedShadowColor(0x459BFF); 
        case 0xAA00AA: return getModifiedNormalColor(0xA335EE); // Purple
        case 0x2A002A: return getModifiedShadowColor(0xA335EE); 
        case 0xAAAAAA: return getModifiedNormalColor(0xA8BFD2); // Light gray
        case 0x2A2A2A: return getModifiedShadowColor(0xA8BFD2); 
        case 0x555555: return getModifiedNormalColor(0x707592); // Gray
        case 0x151515: return getModifiedShadowColor(0x707592); 
        case 0xFFFF55: return getModifiedNormalColor(0xFFDE2F); // Yellow
        case 0x3F3F15: return getModifiedShadowColor(0xFFDE2F); 
        default: return color;
    }
}