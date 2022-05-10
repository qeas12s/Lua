local PLACE = {
	[2788229376] = "DaHood",
	[7213786345 ] = "DaHoodvc",
}
local URL = "https://raw.githubusercontent.com/SpaceYes/Game/Main"
local NAME = PLACE[game.PlaceId] or PLACE[game.GameId]

loadstring(game:HttpGet(URL..'/'..(NAME)..'.Lua'))()
