local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local StarterGui = game:GetService("StarterGui")
local TweenService = game:GetService("TweenService")
local CoreGui = game:GetService("CoreGui")
local Lighting = game:GetService("Lighting")
local ProximityPromptService = game:GetService("ProximityPromptService")
local SoundService = game:GetService("SoundService")
local Workspace = game:GetService("Workspace")
local HttpService = game:GetService("HttpService")
local Stats = game:GetService("Stats")

task.wait(0.1)
Players.LocalPlayer:WaitForChild("PlayerGui")

local blue = Color3.fromRGB(0, 0, 255)
local darkGray = Color3.fromRGB(22, 22, 22)
local white = Color3.fromRGB(255, 255, 255)
local black = Color3.fromRGB(0, 0, 0)
local lightBlue = Color3.fromRGB(0, 191, 255)

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "LENNON_TWEEN_PLUS_V3_GOLDEN"
screenGui.Parent = gethui()
screenGui.Enabled = true
screenGui.IgnoreGuiInset = true
screenGui.ResetOnSpawn = false
screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
screenGui.DisplayOrder = 20000

local sidebar = Instance.new("Frame", screenGui)
sidebar.Name = "Sidebar"
sidebar.Size = UDim2.new(0, 144, 0, 180)
sidebar.Position = UDim2.new(0.5, 178, 0.5, -140)
sidebar.BackgroundColor3 = darkGray
sidebar.BorderSizePixel = 0
sidebar.BackgroundTransparency = 0.33
sidebar.ZIndex = 20001

local sidebarCorner = Instance.new("UICorner", sidebar)
sidebarCorner.CornerRadius = UDim.new(0, 12)

sidebar.InputBegan:Connect(function(...) end)
sidebar.InputChanged:Connect(function(...) end)
UserInputService.InputChanged:Connect(function(...) end)

local titleLabel = Instance.new("TextLabel", sidebar)
titleLabel.Size = UDim2.new(1, -18, 0, 18)
titleLabel.Position = UDim2.new(0, 16, 0, 3.5)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "Solox Hub"
titleLabel.TextColor3 = lightBlue
titleLabel.Font = Enum.Font.Arcade
titleLabel.TextSize = 12
titleLabel.TextXAlignment = Enum.TextXAlignment.Center
titleLabel.TextStrokeColor3 = black
titleLabel.TextStrokeTransparency = 0
titleLabel.ZIndex = 20002

task.spawn(function()
    while true do
        local tween1 = TweenService:Create(titleLabel, TweenInfo.new(0.8, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = lightBlue})
        tween1:Play()
        tween1.Completed:Wait()
        local tween2 = TweenService:Create(titleLabel, TweenInfo.new(0.8, Enum.EasingStyle.Linear, Enum.EasingDirection.InOut), {TextColor3 = blue})
        tween2:Play()
        tween2.Completed:Wait()
    end
end)

local sidebarIcon = Instance.new("ImageLabel", sidebar)
sidebarIcon.Name = "SidebarTitleIcon"
sidebarIcon.Size = UDim2.new(0, 18, 0, 18)
sidebarIcon.Position = UDim2.new(0, 8, 0, 4.5)
sidebarIcon.BackgroundTransparency = 1
sidebarIcon.Image = "rbxassetid://77967402117438"
sidebarIcon.ZIndex = 20001

local iconCorner = Instance.new("UICorner", sidebarIcon)
iconCorner.CornerRadius = UDim.new(1, 0)

local mainPanel = Instance.new("Frame", screenGui)
mainPanel.Name = "MainPanel"
mainPanel.Size = UDim2.new(0, 195, 0, 330)
mainPanel.Position = UDim2.new(0.5, -98, 0.5, -165)
mainPanel.BackgroundColor3 = darkGray
mainPanel.BorderSizePixel = 0
mainPanel.BackgroundTransparency = 0.4
mainPanel.ZIndex = 20001
mainPanel.Visible = false

local mainCorner = Instance.new("UICorner", mainPanel)
mainCorner.CornerRadius = UDim.new(0, 14)

mainPanel.InputBegan:Connect(function(...) end)
mainPanel.InputChanged:Connect(function(...) end)
UserInputService.InputChanged:Connect(function(...) end)

local draggableIcon = Instance.new("ImageButton", screenGui)
draggableIcon.Name = "DraggableIcon"
draggableIcon.Size = UDim2.new(0, 55, 0, 55)
draggableIcon.Position = UDim2.new(0, 140, 0, 240)
draggableIcon.BackgroundTransparency = 1
draggableIcon.Image = "rbxassetid://77967402117438"
draggableIcon.ZIndex = 20002

local draggableCorner = Instance.new("UICorner", draggableIcon)
draggableCorner.CornerRadius = UDim.new(1, 0)

draggableIcon.InputBegan:Connect(function(...) end)
draggableIcon.InputChanged:Connect(function(...) end)
UserInputService.InputChanged:Connect(function(...) end)
draggableIcon.MouseButton1Up:Connect(function(...) end)
if draggableIcon:FindFirstChild("TouchTap") then
    draggableIcon.TouchTap:Connect(function(...) end)
end
