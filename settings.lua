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

data:extend({
  rainbowSpeedSetting
})
