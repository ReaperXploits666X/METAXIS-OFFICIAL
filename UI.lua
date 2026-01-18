local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/Library.lua"))()
local ThemeManager = loadstring(game:HttpGet("https://raw.githubusercontent.com/wally-rblx/LinoriaLib/main/addons/ThemeManager.lua"))()

local Window = Library:CreateWindow({
    Title = 'METAXIS v1.0 | Oficial',
    Center = true,
    AutoShow = true,
    TabGuiPosition = "Left",
})

local Tabs = {
    Main = Window:AddTab('Executar'),
    Cloud = Window:AddTab('Nuvem XIS'),
    Settings = Window:AddTab('Configurações'),
}

-- Aba Principal
Tabs.Main:AddLabel('Bem-vindo ao METAXIS'):AddColorPicker('ColorPicker', { Default = Color3.fromRGB(140, 0, 255) })

Tabs.Main:AddButton({
    Text = 'Limpar Console',
    Func = function() print("Console Limpo!") end
})

-- Aba de FPS Boost
Tabs.Settings:AddButton({
    Text = '⚡ Ativar Ultra FPS Boost',
    Func = function()
        settings().Physics.AllowSleep = true
        for _, v in pairs(game:GetDescendants()) do
            if v:IsA("BasePart") then v.Material = Enum.Material.SmoothPlastic end
            if v:IsA("Decal") then v:Destroy() end
        end
        Library:Notify("METAXIS: Gráficos Otimizados!")
    end
})

Library:Notify("💜 METAXIS: Sistema carregado com sucesso!")
