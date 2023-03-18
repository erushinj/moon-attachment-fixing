local WeaponFuncsModule = {}

local FALLOFF_TEMPLATE = WeaponFalloffTemplate and WeaponFalloffTemplate.setup_weapon_falloff_templates() or {}

WeaponFuncsModule._damage_class_map = {
	amcar = "low",
	g36 = "low",
	s552 = "medium",
	akm = "high",
	akm_gold = "high",
	aug = "medium",
	scar = "high",
	vhs = "medium",
	asval = "high",
	corgi = "medium",
	galil = "medium",
	l85a2 = "medium",
	tecci = "low",

	g26 = "low_ap",
	legacy = "low_ap",
	holt = "medium_ap",
	p226 = "medium_ap",
	m1911 = "high_ap",
	pl14 = "high_ap",

	qbu88 = "medium",

	m249 = "low",
	mg42 = "low",
	hk51b = "medium",

	mp9 = "low",
	new_mp5 = "low",
	scorpion = "low",
	tec9 = "low",
	shepheard = "low",
	erma = "low"
}

WeaponFuncsModule._weapon_data = {
	assault_rifle = {
		low = {
			damage = 60,
			AMMO_MAX = 150,
			AMMO_PICKUP = { 4.5, 8.25 }
		},
		medium = {
			damage = 80,
			AMMO_MAX = 120,
			AMMO_PICKUP = { 3.6, 5.4 }
		},
		high = {
			damage = 120,
			AMMO_MAX = 80,
			AMMO_PICKUP = { 2.4, 3.6 }
		}
	},
	pistol = {
		low_ap = {
			damage = 53,
			AMMO_MAX = 100,
			AMMO_PICKUP = { 0.5, 1.5 },
			armor_piercing = true
		},
		medium_ap = {
			damage = 80,
			AMMO_MAX = 60,
			AMMO_PICKUP = { 0.3, 0.9 },
			armor_piercing = true
		},
		high_ap = {
			damage = 120,
			AMMO_MAX = 40,
			AMMO_PICKUP = { 0.2, 0.6 },
			armor_piercing = true
		}
	},
	snp = {
		medium = {
			damage = 98,
			stats_modifiers_damage = 2,
			AMMO_MAX = 40,
			AMMO_PICKUP = { 2, 3 }
		}
	},
	lmg = {
		low = {
			damage = 60,
			AMMO_MAX = 600,
			AMMO_PICKUP = { 15, 18 }
		},
		medium = {
			damage = 80,
			AMMO_MAX = 400,
			AMMO_PICKUP = { 10, 12 }
		}
	},
	smg = {
		low = {
			damage = 60,
			AMMO_MAX = 150,
			AMMO_PICKUP = { 4.5, 8.25 }
		}
	}
}

function WeaponFuncsModule:damage_class_map()
	return self._damage_class_map
end

function WeaponFuncsModule:weapon_data()
	return self._weapon_data
end

function WeaponFuncsModule.apply_preset(id, data)
	if not id or not data then
		return
	end

	if data.AMMO_MAX then
		id.AMMO_MAX = math.round(data.AMMO_MAX / id.CLIP_AMMO_MAX) * id.CLIP_AMMO_MAX
	end

	id.AMMO_PICKUP = data.AMMO_PICKUP or id.AMMO_PICKUP
	id.stats.damage = data.damage or id.stats.damage

	if data.stats_modifiers_damage then
		id.stats_modifiers = id.stats_modifiers or {}
		id.stats_modifiers.damage = data.stats_modifiers_damage
	end

	if data.armor_piercing then
		id.can_shoot_through_enemy = true
		id.can_shoot_through_shield = true
		id.can_shoot_through_wall = true
		id.armor_piercing_chance = 1
	end
end


WeaponFuncsModule.Functions = {}

function WeaponFuncsModule.Functions.amcar(weapon)
	weapon.amcar.fire_mode_data.fire_rate = 0.07
	weapon.amcar.stats.spread = 14
	weapon.amcar.stats.recoil = 14
end

function WeaponFuncsModule.Functions.g36(weapon)
	-- weapon.g36.stats.spread = 17
	-- weapon.g36.stats.recoil = 10
end

function WeaponFuncsModule.Functions.s552(weapon)
	weapon.s552.damage_falloff = FALLOFF_TEMPLATE.ASSAULT_FALL_MEDIUM
	-- weapon.s552.stats.spread = 14
	-- weapon.s552.stats.recoil = 14
	-- weapon.s552.stats.reload = 9
end

function WeaponFuncsModule.Functions.akm(weapon)
	-- weapon.akm.stats.spread = 17
	-- weapon.akm.stats.recoil = 10
end

function WeaponFuncsModule.Functions.akm_gold(weapon)
	-- weapon.akm_gold.stats.spread = 17
	-- weapon.akm_gold.stats.recoil = 10
	weapon.akm_gold.stats.concealment = weapon.akm.stats.concealment
end

function WeaponFuncsModule.Functions.aug(weapon)
	weapon.aug.damage_falloff = FALLOFF_TEMPLATE.ASSAULT_FALL_MEDIUM
	-- weapon.aug.stats.spread = 17
	-- weapon.aug.stats.recoil = 10
end

function WeaponFuncsModule.Functions.scar(weapon)
	weapon.scar.CLIP_AMMO_MAX = 20
	-- weapon.scar.stats.spread = 17
	-- weapon.scar.stats.recoil = 10
end

function WeaponFuncsModule.Functions.vhs(weapon)
	weapon.vhs.damage_falloff = FALLOFF_TEMPLATE.ASSAULT_FALL_MEDIUM
end

function WeaponFuncsModule.Functions.asval(weapon)
	weapon.asval.damage_falloff = FALLOFF_TEMPLATE.ASSAULT_FALL_MEDIUM
	weapon.asval.CLIP_AMMO_MAX = 20
	-- weapon.asval.stats.spread = 17
	-- weapon.asval.stats.recoil = 10
end

function WeaponFuncsModule.Functions.corgi(weapon)
	weapon.corgi.damage_falloff = FALLOFF_TEMPLATE.ASSAULT_FALL_MEDIUM
end

function WeaponFuncsModule.Functions.galil(weapon)
	weapon.galil.damage_falloff = FALLOFF_TEMPLATE.ASSAULT_FALL_MEDIUM
end

function WeaponFuncsModule.Functions.l85a2(weapon)
	weapon.l85a2.damage_falloff = FALLOFF_TEMPLATE.ASSAULT_FALL_MEDIUM
end

function WeaponFuncsModule.Functions.tecci(weapon)
	-- weapon.tecci.stats.spread = 17
	-- weapon.tecci.stats.recoil = 10
end

function WeaponFuncsModule.Functions.g26(weapon)
end

function WeaponFuncsModule.Functions.legacy(weapon)
end

function WeaponFuncsModule.Functions.holt(weapon)
end

function WeaponFuncsModule.Functions.p226(weapon)
end

function WeaponFuncsModule.Functions.m1911(weapon)
end

function WeaponFuncsModule.Functions.pl14(weapon)
end

function WeaponFuncsModule.Functions.qbu88(weapon)
end

function WeaponFuncsModule.Functions.m249(weapon)
end

function WeaponFuncsModule.Functions.mg42(weapon)
end

function WeaponFuncsModule.Functions.hk51b(weapon)
end

function WeaponFuncsModule.Functions.mp9(weapon)
	weapon.mp9.stats.spread = 14
	weapon.mp9.stats.recoil = 17
end

function WeaponFuncsModule.Functions.new_mp5(weapon)
	weapon.new_mp5.stats.spread = 14
	weapon.new_mp5.stats.recoil = 17
end

function WeaponFuncsModule.Functions.scorpion(weapon)
	weapon.scorpion.stats.spread = 14
	weapon.scorpion.stats.recoil = 17
end

function WeaponFuncsModule.Functions.tec9(weapon)
	weapon.tec9.stats.spread = 14
	weapon.tec9.stats.recoil = 17
end

function WeaponFuncsModule.Functions.shepheard(weapon)
	weapon.shepheard.stats.spread = 14
	weapon.shepheard.stats.recoil = 17
end

function WeaponFuncsModule.Functions.erma(weapon)
	weapon.erma.stats.spread = 14
	weapon.erma.stats.recoil = 17
end

return WeaponFuncsModule