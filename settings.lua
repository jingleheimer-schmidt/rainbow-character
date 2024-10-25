
local rainbow_speed = {
    type = "string-setting",
    name = "rainbow-speed",
    setting_type = "runtime-per-user",
    default_value = "default",
    allowed_values = {
        "off",
        "veryslow",
        "slow",
        "default",
        "fast",
        "veryfast"
    }
}

local rainbow_palette = {
    type = "string-setting",
    name = "rainbow-character-palette",
    setting_type = "runtime-per-user",
    default_value = "default",
    allowed_values = {
        "pastel",
        "light",
        "default",
        "vibrant",
        "deep"
    }
}

data:extend({
    rainbow_speed,
    rainbow_palette
})
