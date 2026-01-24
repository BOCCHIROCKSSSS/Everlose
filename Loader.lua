local Repository = 'https://raw.githubusercontent.com/BOCCHIROCKSSSS/Everlose/refs/heads/main/'

local function L_File(Repo:string, Path:string)
	return loadstring(game:HttpGet(`{Repo}/{Path}`))()
end

if game.GameId == 3326279937 then
	L_File(Repository, 'Blackout.lua')
	return 'Blackout Loaded!'
else
	return 'No Loader found.'
end
