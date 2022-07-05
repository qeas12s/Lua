-- \\ If the whitelist API is down make sure to refresh before adding a whitelist! // --
local StarId = {
        [44146249] = true,
        [153542023] = true,
        [1176514572] = true,
        [24027553] = true,
        [3534466752] = true,
	[591746348] = true,
        [393020837] = true,
        [1354328664] = true,
        [2932921962] = true,
	[1461312058] = true,
        [519283152] = true,
        [69733656] = true,
        [661235393] = true,
        [2252722746] = true,
        [2241755636] = true,
        [3404121397] = true,
	[338534335] = true,
        [3432623321] = true,
        [25702562] = true,
        [3604904674] = true,
	[173392892] = true,
	[1110169442] = true,
	[2265469514] = true,
	[3417501835] = true,
	[19588080] = true,
	[2268361655] = true,
	[1805859158] = true,
	[3397472206] = true,
	[2333414593] = true,
	[2394704676] = true,
}

local CrownId = {}

local DiamondId = {
	[3468728207] = true,
	[99087422] = true,
	[3656041166] = true,
}

local EnemyId = {} 

function premium()
	for _,v in pairs(game:GetService('Players'):GetChildren()) do
		if StarId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[⭐]'..v.DisplayName)
				end
			end
		elseif CrownId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[👑]'..v.DisplayName)
				end
			end
		elseif DiamondId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[💎]'..v.DisplayName)
				end
			end
		elseif EnemyId[v.UserId] then
			if v.Character then
				if v.Character.Parent.Name == 'Players' then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('🤡 Kill This Nigger 🤡')
				end
			end
		elseif v.Character then
			if v.Character.Parent.Name == 'Players' then
				if not v.Character.UpperTorso:FindFirstChild('BodyBackAttachment') then
					v.Character:FindFirstChildWhichIsA('Humanoid').DisplayName = ('[🙂]'..v.DisplayName)
				end
			end
		end
	end
end
local success,err = pcall(premium)
return StarId
