local Players = game:GetService("Players")
local HttpService = game:GetService("HttpService")
local LocalPlayer = Players.LocalPlayer

local key = getgenv().script_key
if not key then
    return warn("No key provided!")
end

local file = "sl1wed_keys.json"
local data = {}

if writefile and readfile and isfile then
    if isfile(file) then
        local success, result = pcall(function()
            return HttpService:JSONDecode(readfile(file))
        end)

        if success and type(result) == "table" then
            data = result
        else
            data = {}
        end
    end
end

local validKeys = {
["SL1WED-X7A2K9"]=true,["SL1WED-M4Q8Z1"]=true,["SL1WED-P9L3W6"]=true,
["SL1WED-A2F8J5"]=true,["SL1WED-K6D1R9"]=true,["SL1WED-Z3X7C2"]=true,
["SL1WED-B8N4M1"]=true,["SL1WED-V5T9Y3"]=true,["SL1WED-Q1W6E8"]=true,
["SL1WED-H7U2I4"]=true,["SL1WED-J9K3L5"]=true,["SL1WED-S2D8F6"]=true,
["SL1WED-G4H1J7"]=true,["SL1WED-R6T3Y8"]=true,["SL1WED-U8I2O5"]=true,
["SL1WED-P1A7S4"]=true,["SL1WED-D3F9G2"]=true,["SL1WED-H5J8K1"]=true,
["SL1WED-L2Z6X9"]=true,["SL1WED-C4V7B3"]=true,["SL1WED-N8M1Q6"]=true,
["SL1WED-W3E9R2"]=true,["SL1WED-T5Y7U4"]=true,["SL1WED-I6O1P8"]=true,
["SL1WED-A9S3D5"]=true,["SL1WED-F2G8H6"]=true,["SL1WED-J4K1L7"]=true,
["SL1WED-Z6X3C9"]=true,["SL1WED-V8B2N5"]=true,["SL1WED-M1Q7W4"]=true,
["SL1WED-E3R9T2"]=true,["SL1WED-Y5U8I6"]=true,["SL1WED-O7P2A4"]=true,
["SL1WED-S9D1F8"]=true,["SL1WED-G6H3J5"]=true,["SL1WED-K2L7Z9"]=true,
["SL1WED-X4C8V1"]=true,["SL1WED-B3N6M2"]=true,["SL1WED-Q5W9E7"]=true,
["SL1WED-R1T4Y8"]=true,["SL1WED-U3I6O2"]=true,["SL1WED-P7A9S1"]=true,
["SL1WED-D2F5G8"]=true,["SL1WED-H9J4K6"]=true,["SL1WED-L1Z3X7"]=true,
["SL1WED-C8V2B5"]=true,["SL1WED-N6M9Q4"]=true,["SL1WED-W7E1R3"]=true,
["SL1WED-T2Y5U8"]=true,["SL1WED-I4O9P6"]=true,["SL1WED-A7S2D1"]=true,
["SL1WED-F9G3H8"]=true,["SL1WED-J6K1L4"]=true,["SL1WED-Z2X5C7"]=true,
["SL1WED-V1B8N6"]=true,["SL1WED-M3Q9W2"]=true,["SL1WED-E5R7T4"]=true,
["SL1WED-Y8U1I3"]=true,["SL1WED-O2P6A9"]=true,["SL1WED-S4D7F1"]=true,
["SL1WED-G8H2J6"]=true,["SL1WED-K5L9Z3"]=true,["SL1WED-X1C4V7"]=true,
["SL1WED-B6N2M8"]=true,["SL1WED-Q3W7E5"]=true,["SL1WED-R9T1Y6"]=true,
["SL1WED-U2I8O4"]=true,["SL1WED-P5A3S7"]=true,["SL1WED-D7F1G9"]=true,
["SL1WED-H3J6K2"]=true,["SL1WED-L8Z4X5"]=true,["SL1WED-C2V9B1"]=true,
["SL1WED-N5M3Q7"]=true,["SL1WED-W1E6R8"]=true,["SL1WED-T9Y4U2"]=true,
["SL1WED-I3O7P5"]=true,["SL1WED-A6S8D4"]=true,["SL1WED-F1G2H9"]=true,
["SL1WED-J8K5L3"]=true,["SL1WED-Z4X1C6"]=true,["SL1WED-V7B9N2"]=true,
["SL1WED-M2Q4W8"]=true,["SL1WED-E8R3T1"]=true,["SL1WED-Y1U5I7"]=true,
["SL1WED-O9P4A2"]=true,["SL1WED-S3D6F8"]=true,["SL1WED-G1H9J4"]=true,
["SL1WED-K7L2Z5"]=true,["SL1WED-X9C6V3"]=true,["SL1WED-B2N8M4"]=true,
["SL1WED-Q4W1E9"]=true,["SL1WED-R8T6Y2"]=true,["SL1WED-U5I3O7"]=true,
["SL1WED-P3A1S6"]=true,["SL1WED-D8F4G2"]=true,["SL1WED-H2J7K9"]=true,
["SL1WED-L6Z1X8"]=true,["SL1WED-C9V5B7"]=true,["SL1WED-N1M8Q3"]=true
}

if not validKeys[key] then
    return warn("Invalid key!")
end

if not data[key] then
    data[key] = LocalPlayer.UserId
    if writefile then
        writefile(file, HttpService:JSONEncode(data))
    end
end

if data[key] ~= LocalPlayer.UserId then
    return warn("Key already used!")
end

-- ================= TWÓJ SKRYPT 1:1 =================

local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local Window = Library:CreateWindow({
    Title = 'Sl1wed.lua',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2
})

-- TABY
local Tabs = {
    ['.Lua'] = Window:AddTab('.Lua'),
    ['Settings'] = Window:AddTab('Settings'),
}

local UserInputService = game:GetService("UserInputService")

local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Parent = game.CoreGui

local Frame = Instance.new("Frame")
Frame.Size = UDim2.new(0, 200, 0, 100)
Frame.Position = UDim2.new(0.5, -100, 0, 0)
Frame.BackgroundColor3 = Color3.fromRGB(0,0,0)
Frame.BorderColor3 = Color3.fromRGB(255,255,255)
Frame.Visible = false
Frame.Parent = ScreenGui

local Title = Instance.new("TextLabel")
Title.Size = UDim2.new(1, 0, 0, 25)
Title.BackgroundTransparency = 1
Title.Text = "Sl1wed.Lua"
Title.TextColor3 = Color3.fromRGB(255,255,255)
Title.Parent = Frame

local PosLabel = Instance.new("TextLabel")
PosLabel.Size = UDim2.new(1, 0, 0, 25)
PosLabel.Position = UDim2.new(0, 0, 0, 30)
PosLabel.BackgroundTransparency = 1
PosLabel.TextColor3 = Color3.fromRGB(255,255,255)
PosLabel.Text = "0,0,0"
PosLabel.Parent = Frame

local StatusLabel = Instance.new("TextLabel")
StatusLabel.Size = UDim2.new(1, 0, 0, 20)
StatusLabel.Position = UDim2.new(0, 0, 0, 55)
StatusLabel.BackgroundTransparency = 1
StatusLabel.TextColor3 = Color3.fromRGB(255,255,255)
StatusLabel.Text = "X: OFF"
StatusLabel.Parent = Frame


local MainGroup = Tabs['.Lua']:AddLeftGroupbox('Main')

local BetterVD = MainGroup:AddToggle('BetterVD', {
    Text = 'Better VD',
    Default = false,
})

local Slider1 = MainGroup:AddSlider('SpamSpeed', {
    Text = 'SpamSpeed',
    Default = 100,
    Min = 100,
    Max = 1000,
    Rounding = 0,
})

local Slider2 = MainGroup:AddSlider('Position', {
    Text = 'Position',
    Default = 50,
    Min = 50,
    Max = 101,
    Rounding = 0,
})



local SlidersUnlocked = false

BetterVD:OnChanged(function(val)
    Frame.Visible = val
    SlidersUnlocked = false
    StatusLabel.Text = "X: OFF"
end)

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end

    if input.KeyCode == Enum.KeyCode.X then
        if BetterVD.Value and Frame.Visible then
            SlidersUnlocked = not SlidersUnlocked
            StatusLabel.Text = SlidersUnlocked and "X: ON" or "X: OFF"
        end
    end
end)


task.spawn(function()
    while true do
        task.wait(0.1)

        local char = LocalPlayer.Character
        if char and char:FindFirstChild("HumanoidRootPart") then
            local pos = char.HumanoidRootPart.Position

            local posValue = Slider2.Value
            local posText = posValue == 101 and "INF" or tostring(posValue)

            PosLabel.Text = string.format(
                "X: %.0f Y: %.0f Z: %.0f | %s",
                pos.X, pos.Y, pos.Z, posText
            )
        end
    end
end)



task.spawn(function()
    local t = 0
    local currentDistance = 50000
    local targetDistance = 50000

    while true do
        task.wait(0.03)

        if not BetterVD.Value or not SlidersUnlocked then
            continue
        end

        local char = LocalPlayer.Character
        if not char then continue end

        local hrp = char:FindFirstChild("HumanoidRootPart")
        if not hrp then continue end

        local val = Slider2.Value

        
        if val == 101 then
            targetDistance = math.random(10000000000, 51000000000) -- 10B → 51B
        else
            local base = val * 1000
            targetDistance = base + math.random(0, 9000)
        end

        
        currentDistance = currentDistance + (targetDistance - currentDistance) * 0.05

        
        local speed = Slider1.Value / 1000
        t = t + speed

       
        local x = math.cos(t) * currentDistance
        local y = math.sin(t * 0.7) * (currentDistance / 2)
        local z = math.sin(t) * currentDistance

        hrp.CFrame = CFrame.new(x, y, z)
    end
end)


Slider1:OnChanged(function(val)
    if not BetterVD.Value or not SlidersUnlocked then return end
end)

Slider2:OnChanged(function(val)
    if not BetterVD.Value or not SlidersUnlocked then return end
end)

-- SETTINGS
local MenuGroup = Tabs['Settings']:AddLeftGroupbox('Menu')

MenuGroup:AddButton('Unload', function() Library:Unload() end)

MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', {
    Default = 'End',
    NoUI = true,
    Text = 'Menu keybind'
})

Library.ToggleKeybind = Options.MenuKeybind

-- MANAGERY
ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

SaveManager:IgnoreThemeSettings()
SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })

ThemeManager:SetFolder('Sl1wed')
SaveManager:SetFolder('Sl1wed/configs')

-- CONFIG + THEME w Settings
SaveManager:BuildConfigSection(Tabs['Settings'])
ThemeManager:ApplyToTab(Tabs['Settings'])

SaveManager:LoadAutoloadConfig()
message.txt
