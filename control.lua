
local speeds = {
  veryslow = 0.010,
  slow = 0.025,
  default = 0.050,
  fast = 0.100,
  veryfast = 0.200,
}

script.on_nth_tick(10, function(event)
  for every, player in pairs(game.connected_players) do
    if player then
      local index = player.index
      local nth_tick = event.nth_tick
      local tick = event.tick
      local frequency = 0.050
      local rainbow_speed = settings.get_player_settings(index)["rainbow-speed"].value
      if rainbow_speed == "off" then
        return
      else
        frequency = speeds[rainbow_speed]
      end
      local rainbow = {
        r = math.sin(frequency*((tick/nth_tick)+(index*10))+(0*math.pi/3))*127+128,
        g = math.sin(frequency*((tick/nth_tick)+(index*10))+(2*math.pi/3))*127+128,
        b = math.sin(frequency*((tick/nth_tick)+(index*10))+(4*math.pi/3))*127+128,
      }
      player.color = rainbow
    end
  end
end
)
