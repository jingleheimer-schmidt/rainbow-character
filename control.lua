
local speeds = {
    veryslow = 0.010,
    slow = 0.025,
    default = 0.050,
    fast = 0.100,
    veryfast = 0.200,
}
local palette = {
    pastel = 1,
    light = 64,
    default = 128,
    vibrant = 192,
    deep = 255,
}

script.on_nth_tick(10, function(event)
    for every, player in pairs(game.connected_players) do
        if player then
            local index = player.index
            local nth_tick = event.nth_tick
            local tick = event.tick
            local frequency = 0.050
            local player_settings = settings.get_player_settings(index)
            local rainbow_speed = player_settings["rainbow-speed"].value
            if rainbow_speed == "off" then
                return
            else
                frequency = speeds[rainbow_speed]
            end
            local rainbow = {
                r = math.sin(frequency * ((tick / nth_tick) + (index * 10)) + (0 * math.pi / 3)) * 127 + 128,
                g = math.sin(frequency * ((tick / nth_tick) + (index * 10)) + (2 * math.pi / 3)) * 127 + 128,
                b = math.sin(frequency * ((tick / nth_tick) + (index * 10)) + (4 * math.pi / 3)) * 127 + 128,
                a = palette[player_settings["rainbow-character-palette"].value],
            }
            player.color = rainbow
        end
    end
end)
