local WeaponFuncsModule = MWPT:require("WeaponFuncsModule")

-- Fix missing entries in the PICKUP table (taken from an old version of sh complements)
local up = 1
repeat
	local n, v = debug.getupvalue(WeaponTweakData._pickup_chance, up)
	if n == "PICKUP" then
		local last_idx = table.size(v)
		v.LMG_HIGH_CAPACITY = last_idx + 1
		v.PISTOL_HIGH_CAPACITY = last_idx + 2
		v.PISTOL_LOW_CAPACITY = last_idx + 3
		v.SHOTGUN_SECOND_CAPACITY = last_idx + 4
		break
	else
		up = up + 1
	end
until not n

local function weapon_tweaks(weapon)
	if not MWPT.settings.weapon_tweaks then
		return
	end

	for weap, func in pairs(WeaponFuncsModule) do
		if MWPT.settings.tweaks[weap] and weapon[weap] then
			func(weapon)
		end
	end
end

local function hook_func(weapon)
	weapon_tweaks(weapon)
end

Hooks:PostHook( WeaponTweakData, "init", "mwpt_init", hook_func )