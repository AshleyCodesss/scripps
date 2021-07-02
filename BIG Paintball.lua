hookfunction(error, warn)

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")

local LocalPlayer = Players.LocalPlayer

local do_damage = workspace.__THINGS.__REMOTES["do damage"]

local Camera = workspace.CurrentCamera
local Mouse = LocalPlayer:GetMouse()

local ScriptEnv = require(ReplicatedStorage.Framework.Library)
local Network = ScriptEnv.Network
local GunCmds = ScriptEnv.GunCmds

local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/gwxn/egirl/main/elerium.lua"))()

getgenv().Settings = {
	God = true,
	SilentAim = true,
	TeamCheck = true,
	FOV = {
		Enabled = true,
		Size = 200,
		Color = Color3.new(0.67058823529, 0.00784313725, 0.9294117647),
		Thickness = 2
	},
	UnlockAll = true,
	NoRecoil = true,
	ForceAuto = true,
	FireRate = 0.001
}

local FOVCircle = Drawing.new("Circle")
FOVCircle.Thickness = 2
FOVCircle.NumSides = 460
FOVCircle.Filled = false
FOVCircle.Transparency = 0.6
FOVCircle.Radius = Settings.FOV.Size
FOVCircle.Color = Settings.FOV.Color
FOVCircle.Visible = true

RunService.RenderStepped:Connect(function()
    FOVCircle.Radius = Settings.FOV.Size
    FOVCircle.Position = UserInputService:GetMouseLocation()
    FOVCircle.Thickness = Settings.FOV.Thickness
	FOVCircle.Color = Settings.FOV.Color
	if not Settings.FOV.Enabled then
		FOVCircle.Radius = 0
	end
end)

function God(Character)
	if not Character then return end
    coroutine.wrap(function()
		local OldCF = Character.HumanoidRootPart.CFrame

		local Part = Instance.new("Part")
		Part.Anchored = true
		Part.Size = Vector3.new(5, 0, 5)
		Part.CFrame = CFrame.new(Vector3.new(9999, 9999, 9999))
		Part.Parent = workspace

		Character.HumanoidRootPart.CFrame = Part.CFrame * CFrame.new(0, 0.5, 0)
		spawn(function()
			wait(3)
			Part:Destroy()
		end)

		local Clone = Character.LowerTorso.Root:Clone()
		Character.LowerTorso.Root:Destroy()
		Clone.Parent = Character.LowerTorso

		wait()
		Character.HumanoidRootPart.CFrame = OldCF
	end)()
end

function GetClosestPlayer()
    local ClosestPlayer
    local ShortestDistance = math.huge

    for _, Player in next, Players:GetPlayers() do
        if Player ~= LocalPlayer and Player.Character and Player.Character:FindFirstChild("Head") then
            if Settings.TeamCheck then
                local Position, Visible = Camera:WorldToScreenPoint(Player.Character.Head.Position)
                if Visible then
					local Magnitude = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
					if Magnitude < ShortestDistance and Magnitude <= Settings.FOV.Size then
						ClosestPlayer = Player
						ShortestDistance = Magnitude
					end
				end
            else
                if LocalPlayer.Team ~= Player.Team then
					local Position, Visible = Camera:WorldToScreenPoint(Player.Character.Head.Position)
					if Visible then
						local Magnitude = (Vector2.new(Position.X, Position.Y) - Vector2.new(Mouse.X, Mouse.Y)).Magnitude
						if Magnitude < ShortestDistance and Magnitude <= Settings.FOV.Size then
							ClosestPlayer = Player
							ShortestDistance = Magnitude
						end
					end
				end
            end
        end
    end

    return ClosestPlayer
end

function Kill(Code, Player)
    if Code and Player.Character and Player.Character:FindFirstChild("Head") then
        local Data = 
            {
                [1] = 
            {
                [1] = Player.Character.Humanoid;
                [2] = Code;
                [3] = 235;
                [4] = Player.Character.HumanoidRootPart.Position;
                [5] = false;
            };
                [2] = 
            {
                [1] = false;
                [2] = false;
                [3] = false;
                [4] = false;
                [5] = false;
            };
        };

        do_damage:FireServer(Data)
    end
end

local OldUnlockAll = GunCmds.DoesOwnGun
GunCmds.DoesOwnGun = newcclosure(function(...)
	if Settings.UnlockAll then
		return true
	end

	return OldUnlockAll(...)
end)

local OldFire = Network.Fire
Network.Fire = newcclosure(function(Self, ...)
	local Args = {...}

	if (tostring(Self) == "New Projectile" and Settings.SilentAim) then
		local ClosestPlayer = GetClosestPlayer()

		if ClosestPlayer then
			Kill(Args[2], ClosestPlayer)
		end
	end

	if (tostring(Self) == "Request Respawn" and Settings.UnlockAll) then
		Args[1] = "1"
		if Settings.God then
			God(LocalPlayer.Character)
		end

		return OldFire(Self, unpack(Args))
	end

	return OldFire(Self, ...)
end)

local Window = library:AddWindow("BIG Paintball", {
	main_color = Color3.fromRGB(41, 74, 122),
	min_size = Vector2.new(400, 380),
	toggle_key = Enum.KeyCode.RightShift,
	can_resize = true
})

local Main = Window:AddTab("Main")
local SilentAim = Window:AddTab("Silent Aim")

local God = Main:AddSwitch("Godmode", function(Value)
	Settings.God = Value

	if Value == false then
		LocalPlayer.Character:BreakJoints()
	end
end)
God:Set(Settings.God)

local UnlockAll = Main:AddSwitch("UnlockAll", function(Value)
	Settings.UnlockAll = Value
end)
UnlockAll:Set(Settings.UnlockAll)

local NoRecoil = Main:AddSwitch("NoRecoil", function(Value)
	Settings.NoRecoil = Value
end)
NoRecoil:Set(Settings.NoRecoil)

local ForceAutomatic = Main:AddSwitch("Force Automatic", function(Value)
	Settings.ForceAuto = Value
end)
ForceAutomatic:Set(Settings.ForceAuto)

local FireRate = Main:AddSlider("Fire Rate", function(Value)
	Settings.FireRate = 1 / Value
end, {
	min = 1,
	max = 100,
	readonly = false
})
FireRate:Set(Settings.FireRate)

local SilentAimEnabled = SilentAim:AddSwitch("Enabled", function(Value)
	Settings.SilentAim = Value
end)
SilentAimEnabled:Set(Settings.SilentAim)

local TeamCheck = SilentAim:AddSwitch("Team Check", function(Value)
	Settings.TeamCheck = Value
end)
TeamCheck:Set(Settings.TeamCheck)

SilentAim:AddLabel("") -- spacer

local FOVEnabled = SilentAim:AddSwitch("FOV Enabled", function(Value)
	Settings.FOV.Enabled = Value
end)
FOVEnabled:Set(Settings.FOV.Enabled)

SilentAim:AddLabel("FOV Color")
local FOVColor = SilentAim:AddColorPicker(function(Color)
	Settings.FOV.Color = Color
end)
FOVColor:Set(Settings.FOV.Color)

local FOVSize = SilentAim:AddSlider("FOV Size", function(Value)
	Settings.FOV.Size = Value
end, {
	min = 0,
	max = 500,
	readonly = false
})

local FOVThickness = SilentAim:AddSlider("FOV Thickness", function(Value)
	Settings.FOV.Thickness = Value
end, {
	min = 1,
	max = 20,
	readonly = false
})

SilentAim:Show()
library:FormatWindows()

local Checks = {"velocity", "shotrate", "automatic"}

while wait(1) do
	for _, v in next, getgc(true) do
		if type(v) == "table" then
			for i = 1, #Checks do
				if rawget(v, Checks[i]) then
					if Settings.NoRecoil then
						v.velocity = 1000000
					end
					if Settings.ForceAuto then
						v.automatic = true
					end
					v.shotrate = Settings.FireRate
				end
			end
		end
	end
end