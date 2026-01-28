--!nocheck
--!nolint UnknownGlobal

export type namecalltypes = ('FireServer'|'InvokeServer'|'Destroy'|'Clone'|'GetChildren'|'GetDescendants'|'FindFirstChild'|'FindFirstChildOfClass'|'FindFirstChildWhichIsA'|'WaitForChild'|'IsA'|'GetFullName'|'ClearAllChildren'|'GetPropertyChangedSignal'|'GetAttribute'|'GetAttributes'|'SetAttribute'|'Remove'|'BreakJoints'|'Connect'|'Once'|'Wait'|'GetService'|'service'|'FindService'|'Raycast'|'FindPartOnRay'|'FindPartsInRegion3'|'GetPartsInPart'|'Kick'|'GetMouse'|'LoadCharacter'|'WaitForDataReady'|'TakeDamage'|'Move'|'ChangeState'|'GetState'|'LoadAnimation'|'SetStateEnabled'|'WorldToViewportPoint'|'ViewportPointToRay'|'ScreenPointToRay'|'BindToRenderStep'|'UnbindFromRenderStep'|'Create'|'GetMouseLocation'|'IsKeyDown'|'GetFocusedTextBox'|'JSONEncode'|'JSONDecode'|'BindToClose'|'Play'|'Stop'|'Pause')
export type userdata = typeof(newproxy())
export type isclosure = (func: (...any) -> (...any)) -> boolean
export type hookmethods = ('__namecall'|'__newindex'|'__index')
export type RequestOptions = {
	Url: string,
	Method: 'GET' | 'HEAD' | 'POST' | 'PUT' | 'DELETE' | 'OPTIONS' | 'PATCH',
	Body: string?,
	Headers: { [string]: string }?,
	Cookies: { [string]: string }?
}
export type Response = {
	Success: boolean,
	Body: string,
	StatusCode: number,
	StatusMessage: string,
	Headers: { [string]: string }
}
export type ConnectionObject = RBXScriptConnection & {Enabled:boolean, ForeignState:boolean, LuaConnection:boolean, Function:(any) -> (any)?, Thread:thread?, Enable:() -> (), Disable:() -> (), Disconnect:() -> (), Defer:(any) -> (), Fire:(any) -> ()}

export type AnyFunction = (...any) -> (...any)
export type AnyTable = { [any]: any }

export type FunctionFilterOptions = {
	Name: string?,
	IgnoreExecutor: boolean?,
	Hash: string?,
	Constants: { string }?,
	Upvalues: { any }?
}
export type TableFilterOptions = {
	Keys: { [any]: any }?,
	Values: { [any]: any }?,
	KeyValuePairs: { [any]: any }?,
	Metatable: { [any]: any }?,
}

local hookfunction:<A1..., R1..., A2..., R2...>(functionToHook: (A1...) -> R1..., hook: (A2...) -> R2...) -> (A1...) -> R1... = hookfunction
local checkcaller:<fn>(fn:fn?) -> (boolean) = checkcaller
local clonefunction:<A..., R...>(functionToClone: (A...) -> R...) -> (A...) -> R... = clonefunction
local hookmetamethod:<A..., R...>(object: { [any]: any } | Instance | userdata,metamethodName: hookmethods,hook: (A...) -> R...) -> (A...) -> R... = hookmetamethod
local newcclosure:<A..., R...>(functionToWrap: (A...) -> R...) -> (A...) -> R... = newcclosure
local islclosure:isclosure = islclosure
local iscclosure:isclosure = iscclosure
local isexecutorclosure:isclosure = isexecutorclosure
local getnamecallmethod:() -> (namecalltypes) = getnamecallmethod
local getgenv:() -> ({ any }) = getgenv
local getrenv:() -> ({ ['_G']:{}, ['shared']:{} }) = getrenv
local appendfile:(path: string, contents: string) -> () = appendfile
local delfile:(path: string) -> () = delfile
local delfolder:(path: string) -> () = delfolder
local getcustomasset:(path: string) -> (string) = getcustomasset
local isfile:(path: string) -> (boolean) = isfile
local isfolder:(path: string) -> (boolean) = isfolder
local listfiles:(path: string) -> ({string}) = listfiles
local makefolder:(path: string) -> () = makefolder
local readfile:(path: string) -> (string) = readfile
local writefile:(path: string, data:string) -> () = writefile
local cloneref:<T>(object:T & Instance) -> T = cloneref
local fireclickdetector:(detector: ClickDetector, distance: number?, event: string?) -> () = fireclickdetector
local fireproximityprompt:(prompt: ProximityPrompt) -> () = fireproximityprompt
local firetouchinterest:(part1: BasePart, part2: BasePart, toggle: boolean | number) -> () = firetouchinterest
local getcallbackvalue:(object: Instance, property: string) -> any | nil = getcallbackvalue
local gethui:() -> BasePlayerGui | Folder = gethui
local getinstances:() -> ({Instance}) = getinstances
local getnilinstances:() -> ({Instance}) = getnilinstances
local getrawmetatable:(object: {any} | userdata) -> {[any]:any}? = getrawmetatable
local isreadonly:(table:{any}) -> boolean
local setrawmetatable:<T>(object:T & ({any} | userdata), metatatble:{any}) -> T = setrawmetatable
local setreadonly:(table:{any}, state:boolean) -> () = setreadonly
local request:(options: RequestOptions) -> Response = request
local restorefunction:(functionToRestore: (...any) -> (...any)) -> () = restorefunction
local firesignal:(signal:RBXScriptSignal, ...any?) -> () = firesignal
local replicatesignal:(signal:RBXScriptSignal, ...any?) -> () = replicatesignal
local getconnections:(signal:RBXScriptSignal) -> ({ConnectionObject}) = getconnections
local getgc:(boolean) -> (...any) = getgc
local filtergc:('table'|'function'|string, FunctionFilterOptions|TableFilterOptions, boolean) -> (...any) = filtergc
local getcallingscript:() -> BaseScript? | ModuleScript? = getcallingscript


local RunService = cloneref(game:GetService('RunService'))
local Players = cloneref(game:GetService('Players'))
local ReplicatedStorage = cloneref(game:GetService('ReplicatedStorage'))
local TagService = cloneref(game:GetService('CollectionService'))
local UserInputService = cloneref(game:GetService('UserInputService'))
local ProximityPromptService = cloneref(game:GetService('ProximityPromptService'))
local Lighting = cloneref(game:GetService('Lighting'))
local HttpService = cloneref(game:GetService('HttpService'))

local Mods:Folder = ReplicatedStorage.Mods
local GunStorage:Folder = ReplicatedStorage.GunStorage
local GunEvents:Folder = GunStorage.Events

local Events:Folder = ReplicatedStorage.Events

local StaminaEvent:RemoteEvent = Events.Player.Stamina
local LockpickEvent:RemoteEvent = Events.Loot.MinigameResult
local LootObject:RemoteEvent = Events.Loot.LootObject

local RagdollEvent:RemoteEvent,DamageEvent:RemoteEvent = Events.Player.Ragdoll,Events.Player.Damage
local UpdateStates = Events.Player.UpdateStates

local ItemDatabase = require(Mods.ItemDatabase)

local RNG = Random.new()

local Shoot:RemoteEvent = GunEvents.Shoot

local Camera = workspace.CurrentCamera

local Colors = {
	['Dangerous+'] = Color3.fromRGB(85,0,0),
	['Dangerous'] = Color3.fromRGB(255,0,0),
	['Red'] = Color3.fromRGB(255,0,0),
	['Yellow'] = Color3.fromRGB(85,0,0),
}

local DangerousItems = {
	['Skyfall T.A.G.'] = {
		Notify = true,
		Color = Colors['Dangerous+']
	},
	['Photon Accelerator'] = {
		Notify = true,
		Color = Colors['Dangerous+']
	},
	['RPG-G'] = {
		Notify = true,
		Color = Colors.Yellow
	},

	['Photon Alternator'] = {
		Notify = false,
		Color = Colors.Dangerous
	},
	['Photon Blades'] = {
		Notify = false,
		Color = Colors.Dangerous
	},
	['RPG-18'] = {
		Notify = false,
		Color = Colors.Dangerous
	},
	['P90-Z'] = {
		Notify = false,
		Color = Colors.Dangerous
	},
	['KS-23'] = {
		Notify = false,
		Color = Colors.Dangerous
	},
	['RSH-12'] = {
		Notify = false,
		Color = Colors.Dangerous
	},
}
_G.DangerousItems = DangerousItems

local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer.PlayerGui

local Fov_Circle = Drawing.new('Circle')
Fov_Circle.Thickness = 1
Fov_Circle.NumSides = 100
Fov_Circle.Radius = 1
Fov_Circle.Filled = false
Fov_Circle.Visible = false
Fov_Circle.ZIndex = 999
Fov_Circle.Transparency = 0.5
Fov_Circle.Color = Color3.fromRGB(255,255,255)

local Line = Drawing.new('Line')
Line.Thickness = 1

local repo = 'https://raw.githubusercontent.com/deividcomsono/Obsidian/main/'
--local Library = require(ReplicatedStorage.Obsidian)
local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
if not Library then warn('Library failed to load.') return end
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
if not ThemeManager then warn('Theme Manager failed to load.') return end
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()
if not SaveManager then warn('Save Manager failed to load.') return end

local ESPLibrary = loadstring(game:HttpGet('https://raw.githubusercontent.com/mstudio45/MSESP/refs/heads/main/source.luau'))()
if not ESPLibrary then warn('ESP Library failed to load.') return end

Library.ForceCheckbox = true

local Options = Library.Options
local Toggles = Library.Toggles

local VersionString,VersionId = 'Pre-Alpha','1.0.0'

local OldNamecall

local RunServiceConnection,KeyUpConnection,KeyDownConnection = nil,nil,nil
local Connections,Threads = {},{}
local Folders = {workspace.Chars}
local Directions = {
	Up = 0,
	Down = 0,

	Front = 0,
	Back = 0,

	Left = 0,
	Right = 0,
}
local ProximityPromptConnection = ProximityPromptService.PromptButtonHoldBegan:Connect(function(ProximityPrompt:ProximityPrompt)
	if Toggles and Toggles['InstaInteract'] and Toggles.InstaInteract.Value then
		if fireproximityprompt ~= nil then
			fireproximityprompt(ProximityPrompt)
		else
			ProximityPrompt.HoldDuration = 0
		end
	end
end)

local OverwriteState = Enum.HumanoidStateType.Running

local BodyGyro = Instance.new('BodyGyro')
local BodyVelocity = Instance.new('BodyVelocity')

local IsFlyDown = false
local IsSilentAimDown = false
local Max = 9999999999

--[[
for _, v in getgc(true) do
	if typeof(v) == 'table' then
		if rawget(v, 'Player') and rawget(v, 'Utils') and rawget(v, 'Interactions') and rawget(v, 'Zones') and rawget(v, 'CameraModule') and rawget(v, 'Tabs') and rawget(v, 'Currency') and rawget(v, 'Swimming') and rawget(v, 'DeathScreen') and rawget(v, 'LocalDamage') then
			MainClient = v
			break
		end
	end
end
]]

BodyVelocity.MaxForce = vector.one*Max
BodyGyro.MaxTorque = vector.one*Max

BodyVelocity.P = 1250

BodyGyro.P = 10000
BodyGyro.D = 500

BodyVelocity.Velocity = Vector3.zero

local Window = Library:CreateWindow({
	Title = 'Everlose',
	Footer = `Version: {VersionString}: {VersionId}`,
	Icon = 89401785954152,
	NotifySide = 'Right',
	ShowCustomCursor = true,
})

local Tabs = {
	['Main'] = Window:AddTab('Main', 'user'),
	['GunMods'] = Window:AddTab('Gun Mods', 'wrench'),
	['Visuals'] = Window:AddTab('Visuals', 'eye'),
	['UI Settings'] = Window:AddTab('UI Settings', 'settings'),
}

local InstanceCache = {
	Characters = {},
	LootBag = {},
}
local WarnedTools = {}
local WarnedOperators = {}
local Hooks = {}
local Requirements = {
	['RecoilSlider'] = {
		'Recoil',
		'InstantRecoil',
		'Shake',
		'Kickback',
		'AimedKickback',
	},
	['SpreadSlider'] = {
		'Spread',
		'AimedSpread'
	},
}
local tables = {}

--------------------
--// CATEGORIES \\--
--------------------

do -- Main
	local LeftGroupBox = Tabs.Main:AddLeftGroupbox('Main', 'boxes')
	local RightGroupBox = Tabs.Main:AddRightGroupbox('Misc', 'boxes')

	local ItemList = {'Cash','Valuables'}
	for i,_ in ItemDatabase do
		table.insert(ItemList, i)
	end
	local ItemsToNotify = LeftGroupBox:AddDropdown('ItemsToNotify', {
		Values = ItemList,
		Default = nil,
		Multi = true,
		Searchable = true,

		Text = 'Items To Notify',
		Tooltip = 'This is a dropdown to pick what Items you want to Notify/Highlight.',
	})
	local NotifyItems = LeftGroupBox:AddToggle('NotifyItems', {
		Text = 'Notify Items',
		Default = false,
	})
	local AutoLoot = LeftGroupBox:AddToggle('AutoLoot', {
		Text = 'Auto Loot',
		Default = false,
	})


	local FlyToggle = LeftGroupBox:AddToggle('FlyToggle', {
		Text = 'Fly',
		Default = false,
	})

	local FlyToggleKeybind = FlyToggle:AddKeyPicker('FlyToggleKeybind', {
		Default = 'F',
		Text = 'Keybind to Toggle Fly.',
		Mode = 'Toggle',
	})

	local FlySpeed = LeftGroupBox:AddSlider('FlySpeed', {
		Text = 'Fly Speed',
		Default = 10,
		Min = 10,
		Max = 1000,
		Rounding = 0,
		Compact = true,
	})

	local InstantInteract = RightGroupBox:AddToggle('InstaInteract', {
		Text = 'Instant Interact',
		Default = false,
		Risky = fireproximityprompt == nil and true or false, --fireproximityprompt
		Tooltip = fireproximityprompt == nil and 'YOU\'R EXPLOIT DOESN\'T HAVE \'fireproximityprompt\' SUPPORT, SO IF YOU TOGGLE THIS, YOU CANNOT UNDO THIS.' or nil,
	})


	local FullBright = RightGroupBox:AddToggle('FullBright', {
		Text = 'FullBright',
		Default = false,

		Callback = function(Value:boolean)
			if not Value then
				Lighting.Brightness = Lighting:GetAttribute('DefaultBrightness')
				Lighting.ClockTime = Lighting:GetAttribute('DefaultClockTime')
				Lighting.FogEnd = Lighting:GetAttribute('DefaultFogEnd')
				Lighting.GlobalShadows = Lighting:GetAttribute('DefaultGlobalShadows')
				Lighting.OutdoorAmbient = Lighting:GetAttribute('DefaultOutdoorAmbient')
			end
		end,
	})


	local SilentAimToggle = LeftGroupBox:AddToggle('SilentAimToggle', {
		Text = 'Silent Aim',
		Default = false,
	})
	local SilentAimInstaHitToggle = LeftGroupBox:AddToggle('SilentAimInstaHitToggle', {
		Text = 'Silent Aim Hitscan',
		Default = false,
		Risky = true,
	})
	local SilentAimKeybind = SilentAimToggle:AddKeyPicker('SilentAimKeybind', {
		Default = 'T',
		Text = 'The Keybind to Toggle Silent Aim',
		Mode = 'Toggle',
	})
	local SilentAimFov = LeftGroupBox:AddSlider('SilentAimFov', {
		Text = 'Silen Aim Fov',
		Default = 180,
		Min = 30,
		Max = 360,
		Rounding = 0,
		Compact = true,
	})

	local SilentAimHitPart = LeftGroupBox:AddDropdown('SilentAimHitPart', {
		Values = {'Head','Torso','Right Arm','Left Arm','Left Leg','Right Leg'},
		Default = nil,
		Multi = true,

		Text = 'Hit Part',
		Tooltip = 'This is a dropdown to pick what Parts you want to hit.',
	})

	local FriendlyCheck = LeftGroupBox:AddToggle('FriendlyCheck', {
		Text = 'Friendly Check',
		Default = false,
	})
	local TargetPlayers = LeftGroupBox:AddToggle('TargetPlayers', {
		Text = 'Player Check',
		Default = true,
	})
	local TargetNPCs = LeftGroupBox:AddToggle('TargetNPCs', {
		Text = 'NPC Check',
		Default = false,
	})
	local InfStamina = RightGroupBox:AddToggle('InfStamina', {
		Text = 'Infinite Stamina',
		Default = false,
	})
	local LockpickAssist = RightGroupBox:AddToggle('LockpickAssist', {
		Text = 'Lockpick Assist',
		Default = false,
	})
	local NoFallDamage = RightGroupBox:AddToggle('NoFallDamage', {
		Text = 'No Fall Damage',
		Default = false,
	})
	local SpoofCrouch = RightGroupBox:AddToggle('SpoofCrouch', {
		Text = 'Spoof Crouch',
		Default = false
	})
	local OperatorNotifier = RightGroupBox:AddToggle('OperatorNotifier', {
		Text = 'Operator Notifier',
		Default = false,

		Callback = function(Value)
			table.clear(WarnedOperators)
		end,
	})
	local DoWebhookLogging = RightGroupBox:AddToggle('DoWebhookLogging', {
		Text = 'Do Webhook Logging',
		Default = false,
	})

	RunService.RenderStepped:Wait()
end

do -- Gun Mods
	local LeftGroupBox = Tabs.GunMods:AddLeftGroupbox('Main', 'boxes')

	local EnableGunMods = LeftGroupBox:AddToggle('EnableGunMods', {
		Text = 'Enable Gun Mods',
		Default = false,
	})
	local RecoilSlider = LeftGroupBox:AddSlider('RecoilSlider', {
		Text = 'Recoil Multi',
		Default = 1,
		Min = 0,
		Max = 1,
		Rounding = 1,
		Compact = true,
	})
	local SpreadSlider = LeftGroupBox:AddSlider('SpreadSlider', {
		Text = 'Spread Multi',
		Default = 1,
		Min = 0,
		Max = 1,
		Rounding = 1,
		Compact = true,
	})
	local BypassPrepare = LeftGroupBox:AddToggle('BypassPrepare', {
		Text = 'Bypass Prepare',
		Default = false,
	})

	RunService.RenderStepped:Wait()
end

do -- Esp
	local LeftGroupBox = Tabs.Visuals:AddLeftGroupbox('Main', 'boxes')
	local EspMaxDist = LeftGroupBox:AddSlider('EspMaxDist', {
		Text = 'Esp Max Distance',
		Default = 100,
		Min = 100,
		Max = 3000,
		Rounding = 0,
		Compact = true,
	})

	local CharactersEsp = LeftGroupBox:AddToggle('CharactersEsp', {
		Text = 'Character Esp',
		--Tooltip = '',
		--DisabledTooltip = '',

		Default = false,
		Disabled = false,
		Visible = true,
		--Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)
	})
		:AddColorPicker('CharactersEspColor', {
			Default = Color3.fromRGB(255, 255, 255),
			Title = 'Color',
			--Transparency = 0,
		})
		:AddColorPicker('FriendlyEspColor', {
			Default = Color3.fromRGB(0, 170, 255),
			Title = 'Color',
			--Transparency = 0,
		})
		:AddColorPicker('NpcEspColor', {
			Default = Color3.fromRGB(255, 149, 149),
			Title = 'Color',
			--Transparency = 0,
		})
		:AddColorPicker('OperatorEspColor', {
			Default = Color3.fromRGB(255, 0, 0),
			Title = 'Color',
			--Transparency = 0,
		})
	LeftGroupBox:AddLabel('Lootbag Color'):AddColorPicker('LootbagEspColor', {
		Default = Color3.fromRGB(0, 0, 255),
		Title = 'Lootbag Esp Color',
	})

	local CharactersEsp = LeftGroupBox:AddToggle('EspHighlight', {
		Text = 'Esp Highlight',
		--Tooltip = '',
		--DisabledTooltip = '',

		Default = true,
		Disabled = false,
		Visible = true,
		--Risky = false, -- Makes the text red (the color can be changed using Library.Scheme.Red) (Default value = false)
	})

	RunService.RenderStepped:Wait()
end

do -- Menu
	local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu', 'wrench')

	MenuGroup:AddToggle('KeybindMenuOpen', {
		Default = Library.KeybindFrame.Visible,
		Text = 'Open Keybind Menu',
		Callback = function(value)
			Library.KeybindFrame.Visible = value
		end,
	})
	MenuGroup:AddToggle('ShowCustomCursor', {
		Text = 'Custom Cursor',
		Default = true,
		Callback = function(Value)
			Library.ShowCustomCursor = Value
		end,
	})
	MenuGroup:AddToggle('AntiCrashUnload', {
		Text = 'Anti Crash Unload [EXPERIMENTAL]',
		Description = 'Attempts to prevent Unload crashes by spamming task.wait(0.1) on each operation.',
		Default = true,
	})
	MenuGroup:AddDropdown('NotificationSide', {
		Values = { 'Left', 'Right' },
		Default = 'Right',

		Text = 'Notification Side',

		Callback = function(Value)
			Library:SetNotifySide(Value)
		end,
	})
	MenuGroup:AddDropdown('DPIDropdown', {
		Values = { '50%', '75%', '100%', '125%', '150%', '175%', '200%' },
		Default = '100%',

		Text = 'DPI Scale',

		Callback = function(Value)
			Value = Value:gsub('%%', '')
			local DPI = tonumber(Value)

			Library:SetDPIScale(DPI)
		end,
	})
	MenuGroup:AddDivider()
	MenuGroup:AddLabel('Menu bind')
		:AddKeyPicker('MenuKeybind', { Default = 'RightShift', NoUI = true, Text = 'Menu keybind' })

	MenuGroup:AddButton('Unload', function()
		local function ShouldWait()
			if Toggles.AntiCrashUnload.Value then
				return task.wait(0.1)
			end
		end
		if RunServiceConnection then
			RunServiceConnection:Disconnect()
			RunServiceConnection = nil
		end
		if KeyUpConnection then
			KeyUpConnection:Disconnect()
			KeyUpConnection = nil
		end
		if KeyDownConnection then
			KeyDownConnection:Disconnect()
			KeyDownConnection = nil
		end
		ShouldWait()
		if ESPLibrary then
			ESPLibrary:Destroy()
			RunService.Stepped:Wait()
		end
		if ProximityPromptConnection then
			ProximityPromptConnection:Disconnect()
			ProximityPromptConnection = nil
			RunService.Stepped:Wait()
		end
		ShouldWait()
		local s,e = pcall(function()
			for HookName,Hook in Hooks do
				restorefunction(Hook.Function)
				warn('Everlose: Restored function: ', HookName)
				RunService.Stepped:Wait()
			end
		end)
		if BodyGyro then
			BodyGyro.Parent = nil
			BodyGyro:Destroy()
			BodyGyro = nil
		end
		if BodyVelocity then
			BodyVelocity.Parent = nil
			BodyVelocity:Destroy()
			BodyVelocity = nil
		end
		ShouldWait()

		if not s then
			warn('Error at Un-Doing hooks:',e)
		end
		local RawMetatable = getrawmetatable(game)
		for _,v in {'__namecall','__index','__newindex'} do
			local s,e = pcall(function()
				restorefunction(RawMetatable[v])
				RunService.RenderStepped:Wait()
			end)
			if not s then
				warn('Error at Un-Doing hookmetamethod:',e)
			end
		end
		if Fov_Circle then
			Fov_Circle:Destroy()
			Fov_Circle = nil
		end
		if Line then
			Line:Destroy()
			Line = nil
		end
		for _,v in Threads do
			task.cancel(v)
			v = nil
		end
		for _,v in Connections do
			v:Disconnect()
			v = nil
		end
		for i,v in InstanceCache do
			for i,tbl in v do
				table.clear(tbl)
				v[i] = nil
				table.clear(v)
				v = nil
				i = nil
			end
			InstanceCache[i] = nil
		end
		for _,tbl in Hooks do
			restorefunction(tbl.Func)
		end

		table.clear(Hooks)
		table.clear(Threads)
		table.clear(Connections)
		table.clear(Directions)
		table.clear(WarnedOperators)
		table.clear(InstanceCache)
		table.clear(Folders)

		Hooks = nil
		Threads = nil
		Connections = nil
		Directions = nil
		WarnedOperators = nil
		InstanceCache = nil
		Folders = nil

		RunService.Stepped:Wait()
		Library:Unload()
	end)

	Library.ToggleKeybind = Options.MenuKeybind
	ThemeManager:SetLibrary(Library)
	SaveManager:SetLibrary(Library)

	SaveManager:IgnoreThemeSettings()

	SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })

	ThemeManager:SetFolder('EverloseObsidian')
	SaveManager:SetFolder('EverloseObsidian/'..tostring(game.GameId))
	SaveManager:SetSubFolder(tostring(game.PlaceId))

	SaveManager:BuildConfigSection(Tabs['UI Settings'])

	ThemeManager:ApplyToTab(Tabs['UI Settings'])

	SaveManager:LoadAutoloadConfig()

	RunService.RenderStepped:Wait()
end

KeyDownConnection = UserInputService.InputBegan:Connect(function(i:InputObject,g:boolean)
	if g then return end
	i = i.KeyCode
	if i == Enum.KeyCode.W then
		Directions.Front = 1
	elseif i == Enum.KeyCode.S then
		Directions.Back = -1
	elseif i == Enum.KeyCode.A then
		Directions.Left = -1
	elseif i == Enum.KeyCode.D then
		Directions.Right = 1
	elseif i == Enum.KeyCode.E then
		Directions.Up = 1
	elseif i == Enum.KeyCode.Q then
		Directions.Down = -1
	end
end)
KeyUpConnection = UserInputService.InputEnded:Connect(function(i:InputObject,g:boolean)
	if g then return end
	i = i.KeyCode
	if i == Enum.KeyCode.W then
		Directions.Front = 0
	elseif i == Enum.KeyCode.S then
		Directions.Back = 0
	elseif i == Enum.KeyCode.A then
		Directions.Left = 0
	elseif i == Enum.KeyCode.D then
		Directions.Right = 0
	elseif i == Enum.KeyCode.E then
		Directions.Up = 0
	elseif i == Enum.KeyCode.Q then
		Directions.Down = 0
	end
end)

--workspace.Debris.Loot

local function GetPositionOnScreen(Vector)
	local Vec3, OnScreen = Camera:WorldToScreenPoint(Vector)
	return Vector2.new(Vec3.X, Vec3.Y), OnScreen
end

local function Friendly(Char:Model)
	if not Char or not Char:IsA('Model') then return false end
	local PlayerFromChar = Players:GetPlayerFromCharacter(Char)
	if PlayerFromChar then
		if Toggles.FriendlyCheck.Value then
			return PlayerFromChar:IsFriendsWithAsync(LocalPlayer.UserId)
		end
	end
	if Char:GetAttribute('Faction') ~= nil and Char:GetAttribute('Faction') == (LocalPlayer.PlayerGui:GetAttribute('Reputation') <= -50 and 'Vulture' or LocalPlayer.PlayerGui:GetAttribute('Reputation') >= 50 and 'Rebel' or 'Outlander') then
		return true
	end
	return false
end

local function GetNearestChar(MaxDist:number)
	if not MaxDist then MaxDist = 999999 end
	local Chars = {}
	--for _,v:Folder in Folders do
	--for _,Char:Model in v:GetChildren() do
	for Char:Model in InstanceCache.Characters do
		if Char == LocalPlayer.Character then continue end
		if not Char then continue end
		if Friendly(Char) then continue end

		local RootPart:Part = Char:FindFirstChild('HumanoidRootPart')
		local Huma:Humanoid = Char:FindFirstChildWhichIsA('Humanoid')

		if Char:FindFirstChildWhichIsA('ForceField') or not Huma or Huma.Health <= 0 or not RootPart then continue end
		if Huma:GetAttribute('Health') ~= nil and Huma:GetAttribute('Health') <= 0 then continue end

		local ScreenPosition, OnScreen = GetPositionOnScreen(RootPart.Position)
		if not OnScreen then continue end
		local Distance = ((UserInputService:GetMouseLocation() - Vector2.new(0,50)) - ScreenPosition).Magnitude

		if Distance > Options.SilentAimFov.Value then
			continue
		end

		if not RootPart then continue end
		if (RootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > MaxDist then continue end

		local Dat = {
			Char = Char,
			Humanoid = Huma,
			RootPart = RootPart,
			Distance = Distance
		}
		table.insert(Chars,Dat)
		--end
	end
	table.sort(Chars, function(a,b)
		return a.Distance < b.Distance
	end)
	return Chars[1] ~= nil and Chars[1] or nil
end

local NewData = {
	['Result Instance'] = nil,
	['Result Position'] = nil,
}

local function CanPickUp(ItemName:string)
	local Quantity = 0
	for _,v in LocalPlayer.PlayerGui.Backpack:GetChildren() do
		if v.Name == ItemName then
			Quantity += 1
		end
	end
	if Quantity >= (ItemDatabase[ItemName]['Requirements']['Max'] or Max) then
		return false
	end
	return true
end

local function Pickup(LootTable:Folder,Item:string|RayValue)
	if typeof(Item) == 'Instance' then
		if Item:IsDescendantOf(LootTable) then
			LootObject:FireServer(
				LootTable,
				Item
			)
			return true
		end
	elseif typeof(Item) == 'string' then
		if LootTable:GetAttribute(Item) > 0 then
			LootObject:FireServer(
				LootTable,
				Item
			)
			return true
		end
	end
	return false
end

local function AttemptPickup(LootTable:Folder,Item:RayValue|string)
	local PickDel = 0
	local ShouldStop = false
	repeat
		RunService.RenderStepped:Wait()
		if PickDel - tick() <= 0 then
			Pickup(LootTable,Item)
			PickDel = tick()+1
		end
		ShouldStop = (not LootTable or not Item or Item.Parent ~= LootTable or (typeof(Item) == 'Instance' and not CanPickUp(Item.Name) or typeof(Item) == 'string' and LootTable:GetAttribute(Item) <= 0) or not Toggles.AutoLoot.Value)
	until ShouldStop
end

table.insert(Connections, ProximityPromptService.PromptTriggered:Connect(function(prompt,plr)
	if prompt.Name == 'OpenLootTable' and plr == LocalPlayer then
		local LootTable = prompt.Parent:WaitForChild('LootTable')
		if LootTable then
			if Toggles.AutoLoot.Value then
				--OpenLootTable, AutoLoot, NotifyItems, ItemsToNotify, LootObject
				Threads['AutoPickupThread'] = task.defer(function()
					repeat task.wait() until LootTable:GetAttribute('Opened')

					if Options.ItemsToNotify.Value.Cash and LootTable:GetAttribute('Cash') > 0 then
						AttemptPickup(LootTable,'Cash')
					end

					if Options.ItemsToNotify.Value.Valuables and LootTable:GetAttribute('Valuables') > 0 then
						AttemptPickup(LootTable,'Valuables')
					end

					for _,Item in LootTable:GetChildren() do
						if Options.ItemsToNotify.Value[Item.Name] then
							AttemptPickup(LootTable,Item)
						end
					end
				end)
			end
		end
	end
end))

--[[

local Event = game:GetService('ReplicatedStorage').Events.Player.Xp
firesignal(Event.OnClientEvent, 
    'KILLED <B>CRIADORDE39</B>',
    100,
    Color3.new(1, 0.21568627655506, 0.21568627655506)
)


local Event = game:GetService('ReplicatedStorage').Events.Player.Xp
for _, Connection in getconnections(Event.OnClientEvent) do
	local old; old = hookfunction(Connection.Function, function(...)
		print(`Intercepted (Connection) {Event.Name}.OnClientEvent`, ...)
		return old(...)
	end)
end
]]

local function PostWebhook(Data,WEBHOOK_ID,WEBHOOK_TOKEN)
	if not Toggles.DoWebhookLogging.Value then return end
	local Headers = {
		['Content-Type'] = 'application/json'
	}
	request({
		Url = `https://webhook.lewisakura.moe/api/webhooks/{WEBHOOK_ID}/{WEBHOOK_TOKEN}`,
		Method = 'POST',
		Headers = Headers,
		Body = HttpService:JSONEncode(Data)
	})
end

local function HasOperatorSet(Char:Model)
	local CurrentGear = Char:FindFirstChild('CurrentGear')
	if CurrentGear then
		local HasFullOperatorSet:boolean = (CurrentGear:FindFirstChild('Operator Helmet') or CurrentGear:FindFirstChild('Operator Helmet MK2')) and CurrentGear:FindFirstChild('Operator Vest') and CurrentGear:FindFirstChild('Operator Leggings') and true or false
		local HasFullCommanderSet:boolean = CurrentGear:FindFirstChild('Commander Helmet') and CurrentGear:FindFirstChild('Commander Vest') and CurrentGear:FindFirstChild('Commander Leggings') and true or false
		local HasFullBladedancerSet:boolean = CurrentGear:FindFirstChild('Bladedancer Helmet') and CurrentGear:FindFirstChild('Bladedancer Vest') and CurrentGear:FindFirstChild('Bladedancer Leggings') and true or false
		local HasFullScrapOperatorSet:boolean = CurrentGear:FindFirstChild('Scrap Commander Helmet') and CurrentGear:FindFirstChild('Scrap Commander Vest') and CurrentGear:FindFirstChild('Scrap Commander Leggings') and true or false
		if HasFullOperatorSet then
			return '⚠️ Operator'
		elseif HasFullCommanderSet then
			return '⚠️ Commander'
		elseif HasFullBladedancerSet then
			return '⚠️ Bladedancer'
		elseif HasFullScrapOperatorSet then
			return '⚠️ Scrap Operator'
		end
	end
end

table.insert(Connections, ReplicatedStorage.Events.Player.Xp.OnClientEvent:Connect(function(Reason:string,Ammount:number,Color:Color3)
	if Reason:lower():find('killed') then
		local PlrName:string = Reason:match('<B>(.-)</B>'):lower()
		for _,p in Players:GetPlayers() do
			if p.Name:lower() == PlrName then
				local char = p.Character
				if char then
					local Set = HasOperatorSet(char)
					if Set then
						local Sub = Set:gsub('⚠️ ','')
						PostWebhook({
							content = nil,
							embeds = {
								{
									title = `**KILL NOTIFIER**`,
									description = `**{LocalPlayer.Name}** KILLED **{p.Name}** WHICH WAS A **{Sub}**`,
									color = '16711680'		
								}
							}
						}, '1441641979262931076', 'YGYIdRVzn204q11jBGgIocUAWAjCifV9XaHLLGd4jK5S8RqIBPziL4d0JV1CUU7TpHFq')
					end
				end
				break
			end
		end
	end
end))

local function HandleLocalCharAdded(char:Model)
	table.insert(Connections, char.ChildAdded:Connect(function(c:Instance)
		if c:IsA('RayValue') then
			local IsGun:boolean,IsMelee:boolean = c:FindFirstChild('GunStatus') ~= nil,c:FindFirstChild('MeleeStatus') ~= nil
			if IsGun then
				table.clear(tables)

				if Threads['GunEquippedThread'] then
					task.cancel(Threads['GunEquippedThread'])
					Threads['GunEquippedThread'] = nil
				end

				Threads['GunEquippedThread'] = task.delay(0.5, function()
					repeat
						RunService.RenderStepped:Wait()
					until c:GetAttribute('EquipId') ~= '' and c:GetAttribute('EquipId') ~= ' ' and char:FindFirstChild('ServerGunModel')

					if Toggles.EnableGunMods.Value then
						local gc = filtergc('table', {
							Keys = {'Firing', 'Reloading', 'Swaping', 'Inspecting', 'AmmoTypes', 'Modes'}
						}, false)
						for i,v in gc do
							if typeof(v) == 'table' then
								local Firing = v['Firing']
								if typeof(Firing) == 'table' then
									for Name,Table in Requirements do
										for _,s in Table do
											local get = rawget(Firing, s)
											if get then
												if not tables[`{Name}{i}`] then
													tables[`{Name}{i}`] = {
														tbl = Firing,
														OriginalValues = {},
														name = Name,
													}
												end
												tables[`{Name}{i}`].OriginalValues[s] = get
											end
										end
									end

									local Prepare = rawget(Firing, 'Prepare')
									if typeof(Prepare) == 'table' and Prepare['Enabled'] ~= nil then
										tables[`Prepare{i}`] = {
											tbl = Prepare,
											OriginalValues = table.clone(Prepare),
											name = 'Prepare',
										}
									end

									local Chamber = rawget(v, 'Chamber')
									if Chamber and typeof(Chamber) == 'table' and rawget(Chamber, 'Enabled') ~= nil then
										tables[`Chamber{i}`] = {
											tbl = Chamber,
											OriginalValues = table.clone(Chamber),
											name = 'Chamber',
										}
									end
								end
							end
						end
					end
				end)
			end
		end
	end))
	table.insert(Connections, char.ChildRemoved:Connect(function(c:Instance)
		if c:IsA('RayValue') then
			local IsGun:boolean,IsMelee:boolean = c:FindFirstChild('GunStatus') ~= nil,c:FindFirstChild('MeleeStatus') ~= nil
			if IsGun then
				table.clear(tables)
			end
		end
	end))
end

--RunServiceConnection = RunService.RenderStepped:Connect(function(dt:number)
RunServiceConnection = RunService.Stepped:Connect(function(t:number,dt:number)
	local MouseLocation = UserInputService:GetMouseLocation()

	Camera = workspace.CurrentCamera

	Fov_Circle.Color = Color3.fromRGB(255,255,255)
	Fov_Circle.Radius = Options.SilentAimFov.Value
	Fov_Circle.Position = MouseLocation --+ Vector2.new(0,50)

	--LocalPlayer.PlayerGui:SetAttribute('Stamina',100)

	local MaxEspDist:number = Options.EspMaxDist.Value
	local Color:Color3 = Color3.new(255,255,255)

	local Character:Model = LocalPlayer.Character
	local RootPart:Part = nil
	local Humanoid:Humanoid = nil
	local Camera = workspace.CurrentCamera
	if Character then
		RootPart = Character:FindFirstChild('HumanoidRootPart')
		Humanoid = Character:FindFirstChildWhichIsA('Humanoid')
	end

	ESPLibrary.GlobalConfig.Highlighters = Toggles.EspHighlight.Value

	local WhereToSearch = {unpack(Folders), TagService:GetTagged('NPC')}
	for _,Folder in WhereToSearch do
		if not Folder then continue end
		for _,Char:Model in (typeof(Folder) == 'Instance' and Folder:GetChildren() or Folder) do
			if Char == LocalPlayer.Character then continue end
			if InstanceCache.Characters[Char] then continue end
			task.spawn(function()
				local Head:Part,HumanoidRootPart:Part,Torso:Part,Humanoid:Humanoid = nil,nil,nil,nil
				Head = Char:FindFirstChild('Head')
				Torso = Char:FindFirstChild('Torso')
				HumanoidRootPart = Char:FindFirstChild('HumanoidRootPart')
				Humanoid = Char:FindFirstChildWhichIsA('Humanoid')
				if not Head or not Torso or not HumanoidRootPart or not Humanoid then return end
				local Color = Color3.fromRGB(255,255,255)
				if Char then
					local PlrFromChar = Players:GetPlayerFromCharacter(Char)
					if PlrFromChar then
						if not Toggles.TargetPlayers.Value then
							return
						end
					else
						if not Toggles.TargetNPCs.Value then
							return
						end
					end
					local Esp = ESPLibrary:Add({
						Name = Humanoid.DisplayName ~= '' and Humanoid.DisplayName ~= ' ' and Humanoid.DisplayName or Char.Name,

						Model = Char,
						TextModel = Char.Head,

						Color = Color,
						MaxDistance = 1000,

						StudsOffset = vector.create(0,-2,0),

						TextSize = 17,

						ESPType = 'Highlight',

						FillColor = Color,
						OutlineColor = Color,
						FillTransparency = 0.8,
						OutlineTransparency = 0,

						Tracer = { 
							Enabled = false,
							Color = Color,
							From = 'Mouse'
						},

						Arrow = {
							Enabled = false,
							Color = Color
						}
					})
					Esp:Hide()
					InstanceCache.Characters[Char] = {
						Esp = Esp
					}
				end
			end)
		end
	end

	for TypeString,TypeTable in InstanceCache do
		for i,v in TypeTable do
			local tbl = v['Esp']
			if tbl then
				local Prefix = ''
				local CurrentSettings = tbl.CurrentSettings
				if not CurrentSettings then continue end

				if not CurrentSettings.Model or not CurrentSettings.Model:IsDescendantOf(workspace) then
					tbl:Destroy()
					TypeTable[i] = nil
					continue
				end

				local Enabled:boolean = TypeString == 'LootBag' and Toggles.NotifyItems.Value or Toggles[`{TypeString}Esp`].Value
				local Color:Color3 = nil

				local PlayerFromChar = nil
				local IsFriend = nil
				local _Humanoid:Humanoid = nil
				local Root:Part = CurrentSettings.Model:FindFirstChild('HumanoidRootPartt')
				if TypeString == 'Characters' then
					PlayerFromChar = Players:GetPlayerFromCharacter(CurrentSettings.Model)
					if PlayerFromChar then
						if not Toggles.TargetPlayers.Value then
							tbl:Destroy()
							TypeTable[i] = nil
							continue
						else
							IsFriend = PlayerFromChar:IsFriendsWithAsync(LocalPlayer.UserId)
							if IsFriend then
								Color = Options.FriendlyEspColor.Value
							end
						end
					else
						if not Toggles.TargetNPCs.Value then
							tbl:Destroy()
							TypeTable[i] = nil
							continue
						else
							Color = Options.NpcEspColor.Value
						end
					end
					_Humanoid = CurrentSettings.Model:FindFirstChildWhichIsA('Humanoid')
				end
				if PlayerFromChar ~= nil and IsFriend == false and Toggles.OperatorNotifier.Value then
					local Set = HasOperatorSet(CurrentSettings.Model)
					if Set then
						Color = Options.OperatorEspColor.Value
						Prefix = Set
						if not table.find(WarnedOperators, CurrentSettings.Model) then
							local Sub = Set:gsub('⚠️ ','')
							local SoundId = Sub == 'Operator' and 'rbxassetid://17582299860' or Sub == 'Commander' and 'rbxassetid://17582299860' or Sub == 'Bladedancer' and 'rbxassetid://17582299860' or Sub == 'Scrap Operator' and 'rbxassetid://17582299860'
							Library:Notify({
								Title = 'Everlose Operator Notificator',
								Description = `⚠️ {CurrentSettings.Model} has a {Sub} set!`,
								Time = 10,
								SoundId = SoundId
							})
							table.insert(WarnedOperators, CurrentSettings.Model)
						end
					end
				end
				if Color == nil then
					Color = TypeString == 'LootBag' and Options.LootbagEspColor.Value or Options[`{TypeString}EspColor`].Value
				end

				if TypeString == 'Characters' then
					if _Humanoid ~= nil and _Humanoid:IsA('Humanoid') then
						local RayValue:RayValue = CurrentSettings.Model:FindFirstChildWhichIsA('RayValue')
						local ToolName = (RayValue ~= nil and RayValue.Name or 'None')
						local function DetermineColor() : (Color3?)
							local Tbl = _G.DangerousItems[ToolName]
							if Tbl then
								if not table.find(WarnedTools, RayValue) then
									table.insert(WarnedTools, RayValue)
									if Tbl.Notify then
										local SoundId = 'rbxassetid://17582299860'
										Library:Notify({
											Title = 'Everlose Item Notificator',
											Description = `⚠️ {CurrentSettings.Model} has a {ToolName}!`,
											Time = 10,
											SoundId = SoundId
										})
									end
								end
								return Tbl.Color
							end
							return nil
						end
						local Color = DetermineColor()
						local R,G,B = nil,nil,nil
						if Color ~= nil then
							R,G,B = math.round(Color.R*255),math.round(Color.G*255),math.round(Color.B*255)
						end
						local Text = `{_Humanoid.DisplayName ~= '' and _Humanoid.DisplayName ~= ' ' and _Humanoid.DisplayName or _Humanoid.Parent.Name}: {math.round(_Humanoid.Health)}/{math.round(_Humanoid.MaxHealth)} <br/> Tool: {Color ~= nil and ('<font color="rgb(%s,%s,%s)">'):format(R,G,B) or ''}{ToolName}{Color ~= nil and '</font>' or ''}`
						if Prefix ~= '' then
							CurrentSettings.Name = `{Prefix} {Text}`
						else
							CurrentSettings.Name = `{Text}`
						end
					else
						tbl:Destroy()
						TypeTable[i] = nil
						continue
					end
				end

				if Enabled then
					tbl:Show()
				else
					tbl:Hide()
				end

				CurrentSettings.MaxDistance = Options.EspMaxDist.Value
				CurrentSettings.Color = Color
				CurrentSettings.FillColor = Color
				CurrentSettings.OutlineColor = Color

				if CurrentSettings['Tracer'] then
					CurrentSettings.Tracer.Color = Color
				end
				if CurrentSettings['Arrow'] then
					CurrentSettings.Arrow.Color = Color
				end
			end
		end
	end

	local FlySpeed = Options.FlySpeed.Value

	IsFlyDown = (Toggles.FlyToggle.Value and Character ~= nil and RootPart ~= nil) and Options.FlyToggleKeybind:GetState() or false

	if IsFlyDown then
		BodyGyro.Parent = Character.HumanoidRootPart
		BodyVelocity.Parent = Character.HumanoidRootPart

		Humanoid:ChangeState(OverwriteState)

		if (Directions.Left + Directions.Right) ~= 0 or (Directions.Front + Directions.Back) ~= 0 or (Directions.Down + Directions.Up) ~= 0 then
			BodyVelocity.Velocity = ((Camera.CFrame.LookVector * (Directions.Front + Directions.Back)) + ((Camera.CFrame * CFrame.new(Directions.Left + Directions.Right, (Directions.Front + Directions.Back + Directions.Down + Directions.Up) * 0.2, 0).Position) - Camera.CFrame.Position)) * Options.FlySpeed.Value
		else
			BodyVelocity.Velocity = Vector3.new(0, 0, 0)
		end

		local NormalizedPos,NormalizedLV = Vector3.new(Camera.CFrame.Position.X,0,Camera.CFrame.Position.Z),Vector3.new(Camera.CFrame.LookVector.X,0,Camera.CFrame.LookVector.Z)
		BodyGyro.CFrame = CFrame.lookAt(NormalizedPos, NormalizedPos + NormalizedLV)

		for _,v:BasePart in Character:GetDescendants() do
			if v:IsA('BasePart') then
				v.CanCollide = false
				v.CollisionGroup = 'ViewModel'
			end
		end
	else
		BodyGyro.Parent = nil
		BodyVelocity.Parent = nil

		if Character then
			for _,v:BasePart in Character:GetDescendants() do
				if v:IsA('BasePart') and v.CollisionGroup == 'ViewModel' then
					v.CollisionGroup = 'Players'
				end
			end
		end
	end

	--References.GunWeaponStats.WeaponStats.Spread = Options.SpreadSlider.Value

	if Toggles.FullBright.Value then
		for _,v in Lighting:GetChildren() do
			if v:IsA('Atmosphere') then
				v.Density = 0
			end
		end

		if not Lighting:GetAttribute('DefaultBrightness') then
			Lighting:SetAttribute('DefaultBrightness',Lighting.Brightness)
		end
		if not Lighting:GetAttribute('DefaultClockTime') then
			Lighting:SetAttribute('DefaultClockTime',Lighting.ClockTime)
		end
		if not Lighting:GetAttribute('DefaultFogEnd') then
			Lighting:SetAttribute('DefaultFogEnd',Lighting.FogEnd)
		end
		if not Lighting:GetAttribute('DefaultGlobalShadows') then
			Lighting:SetAttribute('DefaultGlobalShadows',Lighting.GlobalShadows)
		end
		if not Lighting:GetAttribute('DefaultOutdoorAmbient') then
			Lighting:SetAttribute('DefaultOutdoorAmbient',Lighting.OutdoorAmbient)
		end

		Lighting.Brightness = 2
		Lighting.ClockTime = 12
		Lighting.FogEnd = 1e17
		Lighting.GlobalShadows = false
		Lighting.OutdoorAmbient = Color3.fromRGB(128, 128, 128)
	end

	local Nearest = GetNearestChar(MaxEspDist)

	IsSilentAimDown = Toggles.SilentAimToggle.Value and Options.SilentAimKeybind:GetState() or false

	local function CancelSilentAim()
		Line.Visible = false
		NewData['Result Instance'] = nil
		NewData['Result Position'] = vector.zero
	end

	if IsSilentAimDown then
		Fov_Circle.Visible = true

		if Nearest then
			local ClosestChar:Model = Nearest.Char
			if ClosestChar then
				local RootPos,RootSize = Nearest.RootPart.CFrame,Nearest.RootPart.Size * 1
				--local Vector, OnScreen = Camera:WorldToViewportPoint(RootPos * CFrame.new(0, -RootSize.Y, 0).Position)
				local Vector,OnScreen = Camera:WorldToViewportPoint(RootPos.Position)

				Line.Color = Color3.fromRGB(255,255,255)
				Line.From = Vector2.new(MouseLocation.X, MouseLocation.Y)
				Line.To = Vector2.new(Vector.X,Vector.Y)
				Line.Visible = true


				local HitPart = nil
				local PossibleParts = {}
				for i,v in Options.SilentAimHitPart.Value do
					if v and ClosestChar:FindFirstChild(i) then
						table.insert(PossibleParts,i)
					end
				end
				if #PossibleParts > 0 then
					HitPart = ClosestChar:FindFirstChild(PossibleParts[RNG:NextInteger(1,#PossibleParts)])
				end
				if HitPart then
					NewData['Result Instance'] = HitPart
					NewData['Result Position'] = HitPart.Position + RNG:NextUnitVector()*0.1
				else
					CancelSilentAim()
				end
			else
				CancelSilentAim()
			end
		else
			CancelSilentAim()
		end
	else
		Line.Visible = false
		Fov_Circle.Visible = false

		NewData['Result Instance'] = nil
		NewData['Result Position'] = vector.zero
	end

	if Character and (Character:GetAttribute('Looting') == '' or Character:GetAttribute('Looting') == ' ') and Threads['AutoPickupThread'] ~= nil then
		task.cancel(Threads['AutoPickupThread'])
		Threads['AutoPickupThread'] = nil
	end
	--[[
	local c = 0
	for i,v in tables do
		c += 1
	end
	warn(c)
	]]
	for _, t in tables do
		local Name = t.name
		if Name == 'Prepare' or Name == 'Chamber' then
			local Value = Toggles.BypassPrepare.Value
			if Value == true then
				t.tbl.Enabled = false
			else
				t.tbl.Enabled = t.OriginalValues.Enabled
			end
		else
			if not Name or not Options[Name] then continue end

			for x, getv in t.OriginalValues do
				local value
				if typeof(getv) == 'NumberRange' then
					value = NumberRange.new(getv.Min * Options[Name].Value, getv.Max * Options[Name].Value)
				elseif typeof(getv) == 'number' then
					value = getv * Options[Name].Value
				else
					value = getv
				end
				rawset(t.tbl, x, value)
			end
		end
	end
end)

local function UpdateBag(Bag:Model)
	local Thread = task.spawn(function()
		local LootTable = nil
		repeat
			LootTable = Bag:FindFirstChild('LootTable')
			RunService.RenderStepped:Wait()
		until not Bag or LootTable
		if not Bag then return end

		local function HandleItemAdded(c:Instance)
			if Options.ItemsToNotify.Value[c.Name] and Toggles.NotifyItems.Value then
				Library:Notify({
					Title = 'Everlose Item Notifier',
					Description = `{c.Name} has been dropped!`,
					Time = 5,
				})
				if not InstanceCache.LootBag[Bag] then
					InstanceCache.LootBag[Bag] = {
						Esp = ESPLibrary:Add({
							Name = 'Loot Bag',

							Model = Bag,
							TextModel = Bag,

							Color = Options.LootbagEspColor.Value,
							MaxDistance = 1000,

							TextSize = 17,

							ESPType = 'Highlight',

							FillColor = Options.LootbagEspColor.Value,
							OutlineColor = Options.LootbagEspColor.Value,
							FillTransparency = 0.8,
							OutlineTransparency = 0,

							Tracer = { 
								Enabled = false,
								Color = Options.LootbagEspColor.Value,
								From = 'Mouse'
							},

							Arrow = {
								Enabled = false,
								Color = Options.LootbagEspColor.Value
							}
						})
					}
				end
			end
		end

		for _,Item in LootTable:GetChildren() do
			HandleItemAdded(Item)
		end

		table.insert(Connections, LootTable.ChildAdded:Connect(HandleItemAdded))
		table.insert(Connections, LootTable.ChildRemoved:Connect(function(c:Instance)
			local LootTable = c:FindFirstChild('LootTable')
			local ItemsOfInterest = false
			if LootTable then
				for _,v in c do
					if Options.ItemsToNotify.Value[c.Name] then
						ItemsOfInterest = true
						break
					end
				end
			end
			if not ItemsOfInterest then
				if InstanceCache.LootBag[Bag] then
					InstanceCache.LootBag[Bag].Esp:Destroy()
					InstanceCache.LootBag[Bag] = nil
				end
			end
		end))
	end)
	table.insert(Threads, Thread)
end

table.insert(Connections, workspace.Debris.Loot.ChildAdded:Connect(function(c:Instance)
	local s,e = pcall(UpdateBag, c)
	if not s then
		warn('Error at Debris Loot Added function', e)
	end
end))

--[[
local GunMain = nil
for _,func in getgc(true) do
	if typeof(func) == 'function' then
		local n = debug.info(func,'n')
		if n == 'FireBullet' then
			GunMain = getfenv(func).script
		end
	end
end
--warn(GunMain)
]]

local Casts = setmetatable({}, {mode = '__k'})
local _Hook; _Hook = hookfunction(typeof, newcclosure(function(v)
	if Casts[v] then
		return 'RaycastResult'
	end
	return _Hook(v)
end))
table.insert(Hooks, {
	Func = typeof,
	Hook = _Hook
})

if LocalPlayer.Character then
	HandleLocalCharAdded(LocalPlayer.Character)
end
table.insert(Connections, LocalPlayer.CharacterAdded:Connect(HandleLocalCharAdded))

OldNamecall = hookmetamethod(game,'__namecall',newcclosure(function(...)
	local Method = getnamecallmethod()
	local Caller = checkcaller()
	local Script = getcallingscript()

	local args = {...}
	local self = args[1]

	if IsSilentAimDown then
		if NewData['Result Instance'] and NewData['Result Position'] and not Caller then
			if self == Shoot and Method == 'FireServer' then
				local Origin = args[2]
				args[3] = CFrame.lookAt(Origin, NewData['Result Position'])
				return OldNamecall(unpack(args))
			elseif self == workspace and Method == 'Raycast' and args[4].CollisionGroup == 'RayCasts' and table.find(args[4].FilterDescendantsInstances, LocalPlayer.Character) and Script and Script.Name ~= 'CharacterHandler' then
				local Origin = args[2]
				local Dist = (Origin - NewData['Result Position']).Magnitude+1
				args[3] = CFrame.lookAt(Origin, NewData['Result Position']).LookVector * Dist -- * 900
				if Toggles.SilentAimInstaHitToggle.Value then
					local Distance = (Origin - NewData['Result Position']).Magnitude
					local CastResult = {
						['Instance'] = NewData['Result Instance'],
						['Position'] = NewData['Result Position'],
						['Normal'] = vector.create(0,0,1),
						['Distance'] = Distance,
						['Material'] = NewData['Result Instance'].Material,
					}
					Casts[CastResult] = true
					return CastResult
				else
					return OldNamecall(unpack(args))
				end
			end
		end
	end

	if Toggles.InfStamina.Value then
		if self == PlayerGui and Method == 'GetAttribute' and args[2] == 'Stamina' then
			return 100
		end
		if self == StaminaEvent then
			return nil
		end
	end

	if Toggles.LockpickAssist.Value then
		if self == LockpickEvent then
			args[3] = true
			return OldNamecall(unpack(args))
		end
	end

	if Toggles.NoFallDamage.Value then
		if self == RagdollEvent or self == DamageEvent then
			return nil
		end
	end

	if Toggles.SpoofCrouch.Value then
		if self == UpdateStates then
			args[5].Crouching = true
			return OldNamecall(unpack(args))
		end
	end

	return OldNamecall(...)
end))

Library:Notify({
	Title = 'Everlose',
	Description = 'Everlose has fully loaded!',
	Time = 10,
})

--[[
local CS = game:GetService('CollectionService')
for _,v in CS:GetTagged('Interact') do
	warn(v:GetAttribute('InteractionType'))
end
]]
