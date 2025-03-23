-- Initialize UI elements
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextBox = Instance.new("TextBox")
local ToggleButton = Instance.new("ImageButton")
local UserInputService = game:GetService("UserInputService")

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(173, 216, 230) -- Light blue background color
Frame.Position = UDim2.new(0.5, -100, 0.5, -50)
Frame.Size = UDim2.new(0, 200, 0, 100)
Frame.Visible = false  -- Initially hide the frame

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(173, 216, 230) -- Light blue background color
TextLabel.Size = UDim2.new(1, 0, 0.5, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "AngryCat"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255) -- White text color
TextLabel.TextScaled = true

TextBox.Parent = Frame
TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextBox.Position = UDim2.new(0, 0, 0.5, 0)
TextBox.Size = UDim2.new(1, 0, 0.5, 0)
TextBox.Font = Enum.Font.SourceSans
TextBox.PlaceholderText = "Enter Speed Boost"
TextBox.Text = ""
TextBox.TextColor3 = Color3.fromRGB(0, 0, 0)
TextBox.TextScaled = true

ToggleButton.Parent = ScreenGui
ToggleButton.BackgroundTransparency = 1  -- Make the background transparent
ToggleButton.Position = UDim2.new(0.5, -25, 0, 10)  -- Centered at the top of the screen
ToggleButton.Size = UDim2.new(0, 50, 0, 50)
ToggleButton.Image = "rbxassetid://91963776934685"  -- Replace <ImageAssetID> with your image asset ID

-- Variables to store default and boost speed
local defaultWalkSpeed = 16
local boostWalkSpeed = defaultWalkSpeed
local defaultJumpPower = 50
local speedBoostEnabled = true
local dragging = false
local dragInput
local dragStart
local startPos

-- Function to handle speed and jump boost
local function onJumpRequest()
    if speedBoostEnabled then
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:FindFirstChildOfClass("Humanoid")

        if humanoid then
            humanoid.WalkSpeed = boostWalkSpeed
            humanoid.JumpPower = defaultJumpPower
        end
    end
end

-- Function to reset speed on landing
local function onStateChanged(oldState, newState)
    if newState == Enum.HumanoidStateType.Landed then
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        
        if humanoid then
            humanoid.WalkSpeed = defaultWalkSpeed
        end
    end
end

-- Connect functions to events
UserInputService.JumpRequest:Connect(onJumpRequest)

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:FindFirstChildOfClass("Humanoid")

if humanoid then
    humanoid.StateChanged:Connect(onStateChanged)
end

-- Function to handle TextBox input
TextBox.FocusLost:Connect(function(enterPressed)
    if enterPressed then
        local input = tonumber(TextBox.Text)
        if input then
            boostWalkSpeed = input
        end
    end
end)

-- Toggle button functionality
ToggleButton.MouseButton1Click:Connect(function()
    Frame.Visible = not Frame.Visible
end)

-- Function to handle dragging
local function update(input)
    local delta = input.Position - dragStart
    ToggleButton.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

ToggleButton.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = ToggleButton.Position
        
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

ToggleButton.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)