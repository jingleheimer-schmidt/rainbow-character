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
  setting_type = "runtime-global",
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
  rainbowSpeedSetting,
  rainbowPaletteSetting
})
