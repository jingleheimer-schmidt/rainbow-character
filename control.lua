
---@type {string: number}
local speeds = {
    veryslow = 0.010,
    slow = 0.025,
    default = 0.050,
    fast = 0.100,
    veryfast = 0.200,
}

---@type {string: {amplitude: float, center: float}}
local continuous_themes = {
    ["light"] = { amplitude = 15, center = 240 },
    ["pastel"] = { amplitude = 55, center = 200 },
    ["default"] = { amplitude = 127.5, center = 127.5 },
    ["vibrant"] = { amplitude = 50, center = 100 },
    ["deep"] = { amplitude = 25, center = 50 },
}

require("util")

---@type {string: Color[]}
local pride_flag_themes = {
    ["trans"] = {          -- trans pride
        util.color("#5BCEFA"), -- light blue
        util.color("#F5A9B8"), -- light pink
        util.color("#FFFFFF"), -- white
        -- util.color("#F5A9B8"), -- light pink
        -- util.color("#5BCEFA"), -- light blue
        -- util.color("#FFFFFF"), -- white
    },
    ["lesbian"] = {        -- lesbian pride
        util.color("#D52D00"), -- dark orange
        util.color("#EF7627"), -- mid orange
        util.color("#FF9A56"), -- light orange
        util.color("#FFFFFF"), -- white
        util.color("#D162A4"), -- light pink
        util.color("#B55690"), -- mid pink
        util.color("#A30262"), -- dark pink
    },
    ["bi"] = {             -- bi pride
        util.color("#D60270"), -- pink
        util.color("#D60270"), -- pink
        util.color("#9B4F96"), -- purple
        util.color("#0038A8"), -- blue
        util.color("#0038A8"), -- blue
    },
    ["nonbinary"] = {      -- nonbinary pride
        util.color("#FCF434"), -- yellow
        util.color("#FFFFFF"), -- white
        util.color("#9C59D1"), -- purple
        util.color("#000000"), -- black
    },
    ["pan"] = {            -- pan pride
        util.color("#FF218C"), -- pink
        util.color("#FFD800"), -- yellow
        util.color("#21B1FF"), -- blue
    },
    ["ace"] = {            -- ace pride
        util.color("#000000"), -- black
        util.color("#A3A3A3"), -- grey
        util.color("#FFFFFF"), -- white
        util.color("#800080"), -- purple
    },
    ["progress"] = {       -- progress pride
        util.color("#FFFFFF"), -- white
        util.color("#FFAFC8"), -- pink
        util.color("#74D7EE"), -- light blue
        util.color("#613915"), -- brown
        util.color("#000000"), -- black
        util.color("#E40303"), -- red
        util.color("#FF8C00"), -- orange
        util.color("#FFED00"), -- yellow
        util.color("#008026"), -- green
        util.color("#24408E"), -- blue
        util.color("#732982"), -- purple
    },
    ["agender"] = {        -- agender pride
        util.color("#000000"), -- black
        util.color("#BCC4C7"), -- grey
        util.color("#FFFFFF"), -- white
        util.color("#B7F684"), -- green
        -- util.color("#FFFFFF"), -- white
        -- util.color("#BCC4C7"), -- grey
        -- util.color("#000000"), -- black
    },
    ["gay"] = {            -- gay pride
        util.color("#078D70"), -- dark green
        util.color("#26CEAA"), -- medium green
        util.color("#98E8C1"), -- light green
        util.color("#FFFFFF"), -- white
        util.color("#7BADE2"), -- light blue
        util.color("#5049CC"), -- indigo
        util.color("#3D1A78"), -- dark blue
    }
}

---@type {string: Color[]}
local country_flag_themes = {
    ["united nations"] = {                   -- population 7.4 billion, rank 0
        util.color("#019EDB"),               -- blue
        util.color("#019EDB"),               -- blue
        util.color("#019EDB"),               -- blue
        util.color("#FFFFFF"),               -- white
        util.color("#019EDB"),               -- blue
        util.color("#019EDB"),               -- blue
        util.color("#019EDB"),               -- blue
    },
    ["china"] = {                            -- population 1.4 billion, rank 1
        util.color("#EE1C25"),               -- red
        util.color("#FFFF00"),               -- yellow
    },
    ["india"] = {                            -- population 1.3 billion, rank 2
        util.color("#FF9933"),               -- saffron
        util.color("#FFFFFF"),               -- white
        util.color("#138808"),               -- green
    },
    ["united states"] = {                    -- population 335 million, rank 3
        util.color("#B31942"),               -- red
        util.color("#FFFFFF"),               -- white
        util.color("#0A3161"),               -- blue
    },
    ["indonesia"] = {                        -- population 277 million, rank 4
        util.color("#ED1C24"),               -- red
        util.color("#FFFFFF"),               -- white
    },
    ["pakistan"] = {                         -- population 220 million, rank 5
        util.color("#FFFFFF"),               -- white
        util.color("#00401A"),               -- dark green
        util.color("#00401A"),               -- dark green
    },
    ["nigeria"] = {                          -- population 216 million, rank 6
        util.color("#008753"),               -- green
        util.color("#FFFFFF"),               -- white
        util.color("#008753"),               -- green
    },
    ["brazil"] = {                           -- population 203 million, rank 7
        util.color("#009739"),               -- green
        util.color("#FEDD00"),               -- yellow
        util.color("#FFFFFF"),               -- white
        util.color("#012169"),               -- blue
    },
    ["bangladesh"] = {                       -- population 162 million, rank 8
        util.color("#006a4e"),               -- green
        util.color("#f42a41"),               -- red
        util.color("#006A4E"),               -- green
    },
    ["russia"] = {                           -- population 146 million, rank 9
        util.color("#FFFFFF"),               -- white
        util.color("#1C3578"),               -- blue
        util.color("#E4181C"),               -- red
    },
    ["mexico"] = {                           -- population 129 million, rank 10
        util.color("#006341"),               -- dark green
        util.color("#FFFFFF"),               -- white
        util.color("#C8102E"),               -- red
    },
    ["japan"] = {                            -- population 124 million, rank 11
        util.color("#BC002D"),               -- red
        util.color("#FFFFFF"),               -- white
    },
    ["philippines"] = {                      -- population 110 million, rank 12
        util.color("#0038A8"),               -- blue
        util.color("#CE1126"),               -- red
        util.color("#FFFFFF"),               -- white
    },
    ["ethiopia"] = {                         -- population 105 million, rank 13
        util.color("#098930"),               -- yellow
        util.color("#FCDD0C"),               -- yellow
        util.color("#DA131B"),               -- yellow
    },
    ["egypt"] = {                            -- population 102 million, rank 14
        util.color("#CE1126"),               -- red
        util.color("#FFFFFF"),               -- white
        util.color("#000000"),               -- black
    },
    ["vietnam"] = {                          -- population 97 million, rank 15
        util.color("#DA251D"),               -- red
        util.color("#FFFF00"),               -- yellow
    },
    ["democratic republic of the congo"] = { -- population 89 million, rank 16
        util.color("#007FFF"),               -- blue
        util.color("#CE1021"),               -- red
        util.color("#F7D618"),               -- yellow
    },
    ["turkey"] = {                           -- population 84 million, rank 17
        util.color("#E30A17"),               -- red
        util.color("#FFFFFF"),               -- white
    },
    ["iran"] = {                             -- population 84 million, rank 18
        util.color("#239f40"),               -- green
        util.color("#FFFFFF"),               -- white
        util.color("#DA0000"),               -- red
    },
    ["germany"] = {                          -- population 84 million, rank 19
        util.color("#000000"),               -- schwarz
        util.color("#DD0000"),               -- rot
        util.color("#FFCE00"),               -- gold
    },
    ["thailand"] = {                         -- population 68 million, rank 20
        util.color("#A51931"),               -- red
        util.color("#F4F5F8"),               -- white
        util.color("#2D2A4A"),               -- blue
        util.color("#2D2A4A"),               -- blue
        util.color("#F4F5F8"),               -- white
        util.color("#A51931"),               -- red
    },
    ["france"] = {                           -- population 68 million, rank 21
        util.color("#0055A4"),               -- blue
        util.color("#FFFFFF"),               -- white
        util.color("#EF4135"),               -- red
    },
    ["united kingdom"] = {                   -- population 67 million, rank 22
        util.color("#FFFFFF"),               -- white
        util.color("#C8102E"),               -- red
        util.color("#012169"),               -- blue
    },
    ["tanzania"] = {                         -- population 61 million, rank 23
        util.color("#1FB53A"),               -- green
        util.color("#1FB53A"),               -- green
        util.color("#FCD116"),               -- yellow
        util.color("#000000"),               -- black
        util.color("#000000"),               -- black
        util.color("#FCD116"),               -- yellow
        util.color("#01A2DD"),               -- blue
        util.color("#01A2DD"),               -- blue
    },
    ["south africa"] = {                     -- population 60 million, rank 24
        util.color("#000000"),               -- black
        util.color("#FFB612"),               -- gold
        util.color("#007A4D"),               -- green
        util.color("#FFFFFF"),               -- white
        util.color("#DE3831"),               -- red
        util.color("#007A4D"),               -- green
        util.color("#FFFFFF"),               -- white
        util.color("#002395"),               -- blue
    },
    ["italy"] = {                            -- population 58 million, rank 25
        util.color("#008C45"),               -- green
        util.color("#F4F5F0"),               -- white
        util.color("#CD212A"),               -- red
    },
    ["ukraine"] = {                          -- population 41 million, rank 36
        util.color("#0057B7"),               -- blue
        util.color("#FFDD00"),               -- yellow
    },
    ["australia"] = {                        -- population 26 million, rank 53
        util.color("#00008B"),               -- blue
        util.color("#FFFFFF"),               -- white
        util.color("#FF0000"),               -- red
    },
    ["netherlands"] = {                      -- population 17 million, rank 67
        util.color("#AD1D25"),               -- red
        util.color("#FFFFFF"),               -- white
        util.color("#1E4785"),               -- blue
    },
    ["belgium"] = {                          -- population 11 million, rank 82
        util.color("#000000"),               -- black
        util.color("#FDDA24"),               -- yellow
        util.color("#EF3340"),               -- red
    },
    ["cuba"] = {                             -- population 11 million, rank 85
        util.color("#D21034"),               -- red
        util.color("#002590"),               -- blue
        util.color("#FFFFFF"),               -- white
    },
    ["czech republic"] = {                   -- population 10 million, rank 86
        util.color("#11457E"),               -- blue
        util.color("#FFFFFF"),               -- white
        util.color("#D7141A"),               -- red
    },
    ["greece"] = {                           -- population 10 million, rank 89
        util.color("#004C98"),               -- blue
        util.color("#FFFFFF"),               -- white
    },
    ["sweden"] = {                           -- population 10 million, rank 87
        util.color("#006AA7"),               -- blue
        util.color("#FECC02"),               -- yellow
    }
}

---@type {string: Color[]}
local stepwise_themes = {}
for name, colors in pairs(pride_flag_themes) do
    stepwise_themes[name] = colors
end
for name, colors in pairs(country_flag_themes) do
    stepwise_themes[name] = colors
end

local sin = math.sin
local floor = math.floor
local pi_0 = 0 * math.pi / 3
local pi_2 = 2 * math.pi / 3
local pi_4 = 4 * math.pi / 3

---@param tick integer
---@param speed string
---@param theme_name string
---@param player_index uint
---@return table
local function get_rainbow_color(tick, player_index, speed, theme_name)
    local frequency = speeds[speed] / 10
    local modifier = (player_index * 10 + tick) * frequency
    local continuous_theme = continuous_themes[theme_name]
    local stepwise_theme = stepwise_themes[theme_name]
    if continuous_theme then
        local amplitude = continuous_theme.amplitude
        local center = continuous_theme.center
        return {
            r = sin(modifier + pi_0) * amplitude + center,
            g = sin(modifier + pi_2) * amplitude + center,
            b = sin(modifier + pi_4) * amplitude + center,
            a = 255,
        }
    elseif stepwise_theme then
        local index = floor(modifier % (#stepwise_theme)) + 1
        return stepwise_theme[index]
    else
        return { 1, 1, 1 }
    end
end

---@param event NthTickEventData
local function on_nth_tick(event)
    for _, player in pairs(game.connected_players) do
        local player_index = player.index
        local tick = event.tick
        local player_settings = settings.get_player_settings(player_index)
        local speed = player_settings["rainbow-character-speed"].value --[[@as string]]
        local theme = player_settings["rainbow-character-theme"].value --[[@as string]]
        if speed == "off" then
            goto next_player
        else
            local color = get_rainbow_color(tick, player_index, speed, theme)
            player.color = color
            if player_settings["rainbow-character-sync-chat-color"].value then
                player.chat_color = color
            end
        end
        ::next_player::
    end
end

script.on_nth_tick(5, on_nth_tick)
