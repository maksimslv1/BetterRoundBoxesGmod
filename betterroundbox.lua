if SERVER then return end

local useFilesCache = false -- Хранить материалы в файлах

betterRB = betterRB or {}

betterRB.cache = {}
local cache = betterRB.cache

local function boolToNum(b)
    return b and 1 or 0
end

function betterRB.GetRoundedBoxMaterial(round, w, h, tl, tr, bl, br, callback)
    w, h = math.floor(w), math.floor(h)
    local shortName = string.format("b%u_%u_%u_%d%d%d%d", round, w, h, boolToNum(tl), boolToNum(tr), boolToNum(bl), boolToNum(br))
    if cache[shortName] then
        return cache[shortName]
    end

    hook.Add("PostRender", "betterRB", function()
        local rT = GetRenderTarget(shortName, w, h)
        render.PushRenderTarget(rT)
        cam.Start2D()
            render.Clear(0, 0, 0, 0)
            draw.RoundedBoxEx(round, 0, 0, w, h, color_white, tl, tr, bl, br)

            -- создание кэша в файлах
            if useFilesCache then
                local data = render.Capture({
                    format = "png",
                    x = 0,
                    y = 0,
                    w = w,
                    h = h,
                    alpha = true
                })
                file.Write(string.format("rBoxes/b%u_%u_%u_%d%d%d%d.png", round, w, h, boolToNum(tl), boolToNum(tr), boolToNum(bl), boolToNum(br)), data)
            end

            local mat = CreateMaterial(shortName, "UnlitGeneric", {
                ["$basetexture"] = rT:GetName(),
                ["$translucent"] = "1",
                ["$vertexcolor"] = "1"
            })
        cam.End2D()
        render.PopRenderTarget()

        cache[shortName] = mat
        if isfunction(callback) then callback(mat) end
    end)
end

function betterRB.DrawRoundedBoxEx(round, x, y, w, h, color, tl, tr, bl, br)
    local mat = betterRB.GetRoundedBoxMaterial(round, w, h, tl, tr, bl, br)
    if mat then
        surface.SetDrawColor(color.r, color.g, color.b, color.a)
        surface.SetMaterial(mat)
        surface.DrawTexturedRect(x, y, w, h)
    end
end
function betterRB.DrawRoundedBox(round, x, y, w, h, color)
    local mat = betterRB.GetRoundedBoxMaterial(round, w, h, true, true, true, true)
    if mat then
        surface.SetDrawColor(color.r, color.g, color.b, color.a)
        surface.SetMaterial(mat)
        surface.DrawTexturedRect(x, y, w, h)
    end
end

if useFilesCache then
    file.CreateDir("rBoxes")

    function betterRB.ReloadAssets()
        cache = {}

        for _, v in ipairs(file.Find("rBoxes/*.png", "DATA")) do
            cache[string.Split(v, ".")[1]] = Material("data/rBoxes/" .. v, "noclamp smooth")
        end
    end
    betterRB.ReloadAssets()
end

concommand.Add("betterRBDebug", function(ply, _, args)
    if not ply:IsSuperAdmin() then return end

    hook.Add("HUDPaint", "HUDPaint_DrawABox", function()
        betterRB.DrawRoundedBoxEx(30, 0, 0, 250, 250, color_white, false, false, true, true)
    end)
end)