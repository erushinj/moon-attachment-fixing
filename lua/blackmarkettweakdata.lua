local function infinite_parts(blackmarket, tweak_data)
	if not MWPT.settings.infinite_parts then
		return
	end

	for id, _ in pairs(tweak_data.weapon.factory.parts) do
		blackmarket.weapon_mods[id].is_a_unlockable = true
		blackmarket.weapon_mods[id].value = 0
	end
end

local function hook_func(blackmarket, tweak_data)
	infinite_parts(blackmarket, tweak_data)
end

Hooks:PostHook( BlackMarketTweakData, "_init_weapon_mods", "mwpt__init_weapon_mods", hook_func )