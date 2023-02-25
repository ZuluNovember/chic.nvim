local ok, bit = pcall(require, 'bit')
if not ok then -- If bit library is missing, do not load module
    vim.notify(
        'chroma.lua requires missing LuaJIT BitOp library - https://bitop.luajit.org',
        vim.log.levels.ERROR
    )
    return {}
end

-- LuaJIT bitlib
local band = bit.band
local rshift = bit.rshift
local lshift = bit.lshift
local bor = bit.bor

--- Lush.nvim
---@see https://github.com/rktjmp/lush.nvim/blob/main/lua/lush/math.lua
local function clamp(val, min, max)
    return math.min(max, math.max(min, val))
end

--- RGB block
---@private
local RGB = {}

---Normalize any hex color format to 0xRRGGBB
---@param hex_str string
---@return number
RGB.hex_tonumber = function(hex_str)
    assert(hex_str:sub(1, 1) == '#', 'hex_str must be prepended with #')
    hex_str = hex_str:sub(2, -1) -- remove prepended '#'
    if #hex_str == 3 then --duplicate each char
        hex_str = hex_str:gsub('(%x)', '%1%1')
    end
    return tonumber(hex_str, 16)
end

RGB.from_hex = function(hex)
    if type(hex) == 'string' then
        hex = RGB.hex_tonumber(hex)
    end
    local r = band(rshift(hex, 16), 0xFF)
    local g = band(rshift(hex, 8), 0xFF)
    local b = band(hex, 0xFF)
    return { r, g, b }
end

---@param rgb number[] # {r, g, b}
---@return string # 0xffffff, etc
RGB.to_hex = function(rgb)
    local r, g, b = rgb[1], rgb[2], rgb[3]
    r = clamp(r, 0, 255)
    g = clamp(g, 0, 255)
    b = clamp(b, 0, 255)
    local u = bor(lshift(r, 16), lshift(g, 8), b)
    return string.format('#%06x', u)
end

---@private
local HSL = {}

---@param rgb number[] # {r, g, b}
---@return number[] # {h, s, l}
HSL.from_rgb = function(rgb) -- standard rgb to hsl
    local r = rgb[1] / 255
    local g = rgb[2] / 255
    local b = rgb[3] / 255
    local max = math.max(r, g, b)
    local min = math.min(r, g, b)
    local h, s, l = 0, 0, (max + min) / 2
    if max == min then
        h, s = 0, 0
    else
        local d = max - min
        s = l > 0.5 and d / (2 - max - min) or d / (max + min)
        if max == r then
            h = (g - b) / d + (g < b and 6 or 0)
        elseif max == g then
            h = (b - r) / d + 2
        elseif max == b then
            h = (r - g) / d + 4
        end
        h = h / 6
    end
    return { h, s, l }
end

---@param p number
---@param q number
---@param t number
---@return number
local function hue(p, q, t)
    if t < 0 then
        t = t + 1
    end
    if t > 1 then
        t = t - 1
    end
    if t < 1 / 6 then
        return p + (q - p) * 6 * t
    end
    if t < 1 / 2 then
        return q
    end
    if t < 2 / 3 then
        return p + (q - p) * (2 / 3 - t) * 6
    end
    return p
end

---@param hsl number[] # {h, s, l}
---@return number[] # {r, g, b}
HSL.to_rgb = function(hsl)
    local h = hsl[1]
    local s = hsl[2]
    local l = hsl[3]
    local r, g, b
    if s == 0 then
        r, g, b = l, l, l
    else
        local q = l < 0.5 and l * (1 + s) or l + s - l * s

        local p = 2 * l - q
        r = hue(p, q, h + 1 / 3)
        g = hue(p, q, h)
        b = hue(p, q, h - 1 / 3)
    end
    return { r * 255, g * 255, b * 255 }
end

---@param hsl number[] # {h, s, l}
---@return string # #ffffff, etc
HSL.to_hex = function(hsl)
    local rgb = HSL.to_rgb(hsl)
    return RGB.to_hex(rgb)
end

---@param hex string
---@return number[] # {h, s, l}
HSL.from_hex = function(hex)
    local rgb = RGB.from_hex(hex)
    return HSL.from_rgb(rgb)
end

---@private
local LAB = {}

LAB.from_hsl = function(hsl)
    local h = hsl[1]
    local s = hsl[2]
    local l = hsl[3]
    local a = s * math.cos(h * 2 * math.pi)
    local b = s * math.sin(h * 2 * math.pi)
    return { l, a, b }
end

LAB.to_hsl = function(lab)
    local l = lab[1]
    local a = lab[2]
    local b = lab[3]
    local h = math.atan2(b, a) / (2 * math.pi)
    local s = math.sqrt(a * a + b * b)
    return { h, s, l }
end

---@param arg string|{[1]: number, [2]: number, [3]: number, [4]: "rgb"|"hsl"|"lab"}
---@return ChromaColor
local function ChromaBuilder(arg)
    local case = {
        ---@param color string
        string = function(color)
            return HSL.from_hex(color)
        end,
        ---@param color { [1]: number, [2]: number, [3]: number, [4]: "rgb"|"hsl"|"lab" }
        table = function(color)
            local space_case = {
                rgb = function()
                    return HSL.from_rgb({ color[1], color[2], color[3] })
                end,
                hsl = function()
                    return { color[1], color[2], color[3] }
                end,
                lab = function()
                    return LAB.to_hsl({ color[1], color[2], color[3] })
                end,
            }
            return space_case[color[4] or 'hsl']()
        end,
    }

    ---@class ChromaColor
    local Chroma = setmetatable({}, {
        __index = {},
    })

    Chroma.hsl = case[type(arg)](arg)

    function Chroma:print()
        local hex = self:to('hex')

        vim.api.nvim_set_hl(0, 'ChicChroma', {
            fg = hex,
            bg = hex,
            bold = true,
        })
        vim.api.nvim_echo({ { hex, 'ChicChroma' } }, false, {})
    end

    --- Generates a color scale from color
    ---@param self ChromaColor
    ---@param n integer # number of colors to generate
    ---@return string[]
    function Chroma:scale(n)
        local max = 16
        if n > max or max <= 0 then
            error('n must be between 1 and ' .. max)
        end
        ---@type string[]
        local ret = {}
        for i = 1, n do
            local rotation = 10 * i
            table.insert(ret, self:rotate(rotation):to('hex'))
        end
        return ret
    end

    --- Converts to a colorspace
    ---@generic T: string|number[]
    ---@param space "hsl"|"rgb"|"hex"|"lab"
    ---@return T
    function Chroma:to(space)
        return ({
            rgb = function()
                local rgb = HSL.to_rgb(self.hsl)
                return { rgb[1], rgb[2], rgb[3] }
            end,
            hsl = function()
                return { self.hsl[1], self.hsl[2], self.hsl[3] } ---@as number[]
            end,
            lab = function()
                local lab = LAB.from_hsl(self.hsl)
                return { lab[1], lab[2], lab[3] } ---@as number[]
            end,
            hex = function()
                return HSL.to_hex(self.hsl) ---@as string
            end,
        })[space]()
    end

    ---@param n number # [0-1]
    function Chroma:saturate(n)
        local hsl = self.hsl
        hsl[2] = hsl[2] + n
        return ChromaBuilder(hsl)
    end

    ---@param n number # [0-1]
    function Chroma:desaturate(n)
        local hsl = self.hsl
        hsl[2] = hsl[2] - n
        return ChromaBuilder(hsl)
    end

    ---@param n number
    function Chroma:darken(n)
        local hsl = self.hsl
        hsl[3] = hsl[3] - n
        return ChromaBuilder(hsl)
    end

    ---@param n number
    function Chroma:lighten(n)
        local hsl = self.hsl
        hsl[3] = hsl[3] + n
        return ChromaBuilder(hsl)
    end

    ---@param n integer # [1-360]
    function Chroma:rotate(n)
        local hsl = self.hsl
        hsl[1] = hsl[1] + (n / 360)
        return ChromaBuilder(hsl)
    end

    function Chroma:mix(color, n)
        local hsl = self.hsl
        local hsl2 = ChromaBuilder(color):to('hsl')
        local h = hsl[1] + (hsl2[1] - hsl[1]) * n
        local s = hsl[2] + (hsl2[2] - hsl[2]) * n
        local l = hsl[3] + (hsl2[3] - hsl[3]) * n
        return ChromaBuilder({ h, s, l, 'hsl' })
    end

    function Chroma:reverse()
        local hsl = self.hsl
        local h = hsl[1] + 0.5
        local s = hsl[2]
        local l = hsl[3]
        return ChromaBuilder({ h, s, l, 'hsl' })
    end

    return Chroma
end

return ChromaBuilder
