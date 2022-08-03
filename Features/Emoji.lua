-- \\ If the whitelist API is down make sure to refresh before adding a whitelist! // --
-- \\ [152216529] = true, revoked until payment
local StarId = {
	[993331411] = true,
	[1111841630] = true,
	[9987360] = true,
	[3572571860] = true,
	[3473535848] = true,
	[354728697] = true,
	[3009231522] = true,
	[731070128] = true,
	[2064743838] = true,
	[173645911] = true,
        [2769727617] = true,
	[269289388] = true,
        [2529315271] = true,
	[606041098] = true,
	[99331934] = true
	[2748635206] = true,
        [2620680476] = true,
	[306984510] = true,
	[2228665841] = true,
	[2318929464] = true,
        [321278389] = true,
	[1589428943] = true,
        [3682960078] = true,
	[2396969487] = true,
        [1104095245] = true,
	[2258185073] = true,
	[531662415] = true,
        [3115694836] = true,
	[1232858774] = true,
	[3649924628] = true,
	[668106837] = true,
        [2658579694] = true,
        [64298554] = true,
	[483905722] = true,
        [58901088] = true,
        [2613976637] = true,
	[3341938248] = true,
	[107835281] = true,
	[342604165] = true,
        [43290134] = true,
	[1410800040] = true,
	[2474125946] = true,
	[267399500] = true,                       
	[558262449] = true,
        [48275335] = true,
	[4864500] = true,
	[2472080153] = true,
        [1934330810] = true,
	[2705147483] = true,
	[3497135298] = true,
	[1548919297] = true,
        [1009221814] = true,
	[1511465503] = true,
	[1796663810] = true,
	[148081495] = true,
	[858600600] = true,
	[3513345403] = true,
	[1556245775] = true,
	[1038689280] = true,
        [60935213] = true,
	[288312016] = true,
	[3207880708] = true,
	[2788184005] = true,
	[229814309] = true,
        [1528423141] = true,
        [44146249] = true,
        [153542023] = true,
        [1176514572] = true,
        [2902086040] = true,
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
        [3644178259] = true,
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
