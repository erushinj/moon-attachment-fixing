local WeaponFuncsModule = {}

local FALLOFF_TEMPLATE = WeaponFalloffTemplate and WeaponFalloffTemplate.setup_weapon_falloff_templates() or {}

local function apply_preset(id, data)
	if not id or not data then
		log("[MWPT][ERROR] Something is going wrong, some information is missing in a call to apply_preset.")
		return
	end

	id.AMMO_MAX = data.AMMO_MAX
	id.AMMO_PICKUP = data.AMMO_PICKUP
	id.stats.damage = data.damage

	if data.stats_modifiers then
		id.stats_modifiers = id.stats_modifiers or {}
		id.stats_modifiers.damage = data.stats_modifiers
	end

	id.can_shoot_through_enemy = data.armor_piercing
	id.can_shoot_through_shield = data.armor_piercing
	id.can_shoot_through_wall = data.armor_piercing
	id.armor_piercing_chance = data.armor_piercing and 1
end

local weapon_data = {
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
			stats_modifiers = 2,
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
	smg = {}
}

function WeaponFuncsModule.amcar(weapon)
	apply_preset(weapon.amcar, weapon_data.assault_rifle.low)
	weapon.amcar.fire_mode_data.fire_rate = 0.07
	-- weapon.amcar.stats.spread = 14
	-- weapon.amcar.stats.recoil = 12
end

function WeaponFuncsModule.g36(weapon)
	apply_preset(weapon.g36, weapon_data.assault_rifle.low)
	-- weapon.g36.stats.spread = 17
	-- weapon.g36.stats.recoil = 10
end

function WeaponFuncsModule.s552(weapon)
	apply_preset(weapon.s552, weapon_data.assault_rifle.medium)
	weapon.s552.damage_falloff = FALLOFF_TEMPLATE.ASSAULT_FALL_MEDIUM
	-- weapon.s552.stats.spread = 14
	-- weapon.s552.stats.recoil = 14
	-- weapon.s552.stats.reload = 9
end

function WeaponFuncsModule.akm(weapon)
	apply_preset(weapon.akm, weapon_data.assault_rifle.high)
	-- weapon.akm.stats.spread = 17
	-- weapon.akm.stats.recoil = 10

	apply_preset(weapon.akm_gold, weapon_data.assault_rifle.high)
	weapon.akm_gold.stats.spread = weapon.akm.stats.spread
	weapon.akm_gold.stats.recoil = weapon.akm.stats.recoil
	weapon.akm_gold.stats.concealment = weapon.akm.stats.concealment
end

function WeaponFuncsModule.aug(weapon)
	apply_preset(weapon.aug, weapon_data.assault_rifle.medium)
	weapon.aug.damage_falloff = FALLOFF_TEMPLATE.ASSAULT_FALL_MEDIUM
	-- weapon.aug.stats.spread = 17
	-- weapon.aug.stats.recoil = 10
end

function WeaponFuncsModule.scar(weapon)
	apply_preset(weapon.scar, weapon_data.assault_rifle.high)
	weapon.scar.CLIP_AMMO_MAX = 20
	-- weapon.scar.stats.spread = 17
	-- weapon.scar.stats.recoil = 10
end

function WeaponFuncsModule.vhs(weapon)
	apply_preset(weapon.vhs, weapon_data.assault_rifle.medium)
	weapon.vhs.damage_falloff = FALLOFF_TEMPLATE.ASSAULT_FALL_MEDIUM
end

function WeaponFuncsModule.asval(weapon)
	apply_preset(weapon.asval, weapon_data.assault_rifle.high)
	weapon.asval.damage_falloff = FALLOFF_TEMPLATE.ASSAULT_FALL_MEDIUM
	weapon.asval.CLIP_AMMO_MAX = 20
	-- weapon.asval.stats.spread = 17
	-- weapon.asval.stats.recoil = 10
end

function WeaponFuncsModule.corgi(weapon)
	apply_preset(weapon.corgi, weapon_data.assault_rifle.medium)
	weapon.corgi.damage_falloff = FALLOFF_TEMPLATE.ASSAULT_FALL_MEDIUM
end

function WeaponFuncsModule.galil(weapon)
	apply_preset(weapon.galil, weapon_data.assault_rifle.medium)
	weapon.galil.damage_falloff = FALLOFF_TEMPLATE.ASSAULT_FALL_MEDIUM
end

function WeaponFuncsModule.l85a2(weapon)
	apply_preset(weapon.l85a2, weapon_data.assault_rifle.medium)
	weapon.l85a2.damage_falloff = FALLOFF_TEMPLATE.ASSAULT_FALL_MEDIUM
end

function WeaponFuncsModule.tecci(weapon)
	apply_preset(weapon.tecci, weapon_data.assault_rifle.low)
	-- weapon.tecci.stats.spread = 17
	-- weapon.tecci.stats.recoil = 10
end

function WeaponFuncsModule.g26(weapon)
	apply_preset(weapon.g26, weapon_data.pistol.low_ap)
end

function WeaponFuncsModule.legacy(weapon)
	apply_preset(weapon.legacy, weapon_data.pistol.low_ap)
end

function WeaponFuncsModule.holt(weapon)
	apply_preset(weapon.holt, weapon_data.pistol.medium_ap)
end

function WeaponFuncsModule.p226(weapon)
	apply_preset(weapon.p226, weapon_data.pistol.medium_ap)
end

function WeaponFuncsModule.m1911(weapon)
	apply_preset(weapon.m1911, weapon_data.pistol.high_ap)
end

function WeaponFuncsModule.pl14(weapon)
	apply_preset(weapon.pl14, weapon_data.pistol.high_ap)
end

function WeaponFuncsModule.qbu88(weapon)
	apply_preset(weapon.qbu88, weapon_data.snp.medium)
end

function WeaponFuncsModule.m249(weapon)
	apply_preset(weapon.m249, weapon_data.lmg.low)
end

function WeaponFuncsModule.mg42(weapon)
	apply_preset(weapon.mg42, weapon_data.lmg.low)
end

function WeaponFuncsModule.hk51b(weapon)
	apply_preset(weapon.hk51b, weapon_data.lmg.medium)
end

return WeaponFuncsModule