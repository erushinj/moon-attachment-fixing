Hooks:PostHook( BlackMarketTweakData, "_init_weapon_mods", "attachment_fixing__init_weapon_mods", function(self, tweak_data)

	for id, data in pairs(tweak_data.weapon.factory.parts) do
		self.weapon_mods[id].is_a_unlockable = true
		self.weapon_mods[id].value = 0
	end

end)