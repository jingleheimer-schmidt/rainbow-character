
local constants = require("constants")
local speeds = constants.speeds
local original_palettes = constants.original_palettes
local animation_palettes = constants.animation_palettes
local sin = math.sin
local floor = math.floor
local pi_0 = 0 * math.pi / 3
local pi_2 = 2 * math.pi / 3
local pi_4 = 4 * math.pi / 3

---@param tick any
---@param rainbow_speed string
---@param palette_name string
---@param player_index uint
---@return table
local function get_rainbow_color(tick, player_index, rainbow_speed, palette_name)
  local frequency = speeds[rainbow_speed] / 10
  local modifier = (player_index * 10 + tick) * frequency
  local amplitude = original_palettes[palette_name] and original_palettes[palette_name].amplitude
  local center = original_palettes[palette_name] and original_palettes[palette_name].center
  local animation_colors = animation_palettes[palette_name]
  if amplitude and center then
    return {
      r = sin(modifier + pi_0) * amplitude + center,
      g = sin(modifier + pi_2) * amplitude + center,
      b = sin(modifier + pi_4) * amplitude + center,
      a = 255,
    }
  elseif animation_colors then
    local index = floor(modifier % (#animation_colors)) + 1
    return animation_colors[index]
  else
    return { 1, 1, 1 }
  end
end

script.on_nth_tick(5, function(event)
  for _, player in pairs(game.connected_players) do
    local index = player.index
    local tick = event.tick
    local player_settings = settings.get_player_settings(index)
    local rainbow_speed = player_settings["rainbow-speed"].value --[[@as string]]
    local rainbow_palette = player_settings["rainbow-character-palette"].value --[[@as string]]
    if rainbow_speed == "off" then
      return
    else
      player.color = get_rainbow_color(tick, player.index, rainbow_speed, rainbow_palette)
    end
  end
end)
