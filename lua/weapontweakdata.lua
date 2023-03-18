local WeaponFuncsModule = MWPT:require("WeaponFuncsModule")

local function weapon_tweaks(weapon)
	if not MWPT.settings.weapon_tweaks then
		return
	end

	for weap_id, weap_func in pairs(WeaponFuncsModule.Functions) do
		local id = weapon[weap_id]
		local category = id and id.categories and id.categories[1]
		local damage_class = MWPT.settings.tweaks[weap_id] and WeaponFuncsModule:damage_class_map()[weap_id]
		local data = WeaponFuncsModule:weapon_data()[category] and WeaponFuncsModule:weapon_data()[category][damage_class]

		if data then
			weap_func(weapon)
			WeaponFuncsModule.apply_preset(id, data)
		end
	end
end

Hooks:PostHook( WeaponTweakData, "init", "mwpt_init", function(self)
	weapon_tweaks(self)
end )