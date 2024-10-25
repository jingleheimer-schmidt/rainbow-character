
local rainbow_speed = {
    type = "string-setting",
    name = "rainbow-character-speed",
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

local rainbow_theme = {
    type = "string-setting",
    name = "rainbow-character-theme",
    setting_type = "runtime-per-user",
    default_value = "default",
    allowed_values = {
        -- original continuous themes
        "light",
        "pastel",
        "default",
        "vibrant",
        "deep",
        -- stepwise pride flag themes
        "lesbian",
        "gay",
        "bi",
        "trans",
        "pan",
        "ace",
        "nonbinary",
        "agender",
        "progress",
        -- stepwise country flag themes
        "united nations",
        "china",
        "india",
        "united states",
        "indonesia",
        "pakistan",
        "nigeria",
        "brazil",
        "bangladesh",
        "russia",
        "mexico",
        "japan",
        "philippines",
        "ethiopia",
        "egypt",
        "vietnam",
        "democratic republic of the congo",
        "turkey",
        "iran",
        "germany",
        "thailand",
        "france",
        "united kingdom",
        "tanzania",
        "south africa",
        "italy",
        "ukraine",
        "australia",
        "netherlands",
        "belgium",
        "cuba",
        "czech republic",
        "greece",
        "sweden",
    }
}

local sync_chat_color = {
    type = "bool-setting",
    name = "rainbow-character-sync-chat-color",
    setting_type = "runtime-per-user",
    default_value = false,
    order = "a"
}

data:extend({
    rainbow_speed,
    rainbow_theme,
    sync_chat_color,
})
