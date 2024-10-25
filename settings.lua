local rainbowSpeedSetting = {
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

local rainbowPaletteSetting = {
  type = "string-setting",
  name = "rainbow-character-palette",
  setting_type = "runtime-per-user",
  default_value = "default",
  allowed_values = {
    -- "random all",
    -- original:
    "light",
    "pastel",
    "default",
    "vibrant",
    "deep",
    -- pride flags:
    -- "random pride",
    "lesbian",
    "gay",
    "bi",
    "trans",
    "pan",
    "ace",
    "nonbinary",
    "agender",
    "progress",
    -- seasonal:
    -- "random seasonal",
    "fresh spring",
    "blossoming spring",
    "vibrant summer",
    "lively summer",
    "golden autumn",
    "crisp autumn",
    "cozy winter",
    "serene winter",
    -- railways:
    -- "random railway",
    "deutsche bahn",
    "SNCF",
    "union pacific",
    "BNSF",
    "CSX",
    "CN",
    "trenitalia",
    "amtrak",
    -- natural:
    -- "random natural",
    "water",
    "earth",
    "fire",
    "air",
    "ice",
    "sunlight",
    "moonlight",
    "stars",
    "sunrise",
    "sunset",
    "fog",
    "rain",
    "snow",
    "forest",
    "meadow",
    "ocean",
    "desert",
    "mountain",
    "rainforest",
    "coral reef",
    "volcano",
    "waterfall",
    "cave",
    "canyon",
    -- country flags:
    -- "random country",
    "china",
    "india",
    "united states",
    "brazil",
    "russia",
    "mexico",
    "japan",
    "germany",
    "united kingdom",
    "ukraine",
    "czech republic",
    "sweden"
  }
}

data:extend({
  rainbowSpeedSetting,
  rainbowPaletteSetting
})
