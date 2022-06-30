Hooks:PostHook( WeaponFactoryTweakData, "init", "attachment_fixing_init", function(self)

	for id, data in pairs(self.parts) do
		data.is_a_unlockable = true	--	i dont think this fucks with achievement or dlc locked parts
	end

	--	why
	self.wpn_fps_snp_m95.override.wpn_fps_upg_m4_g_mgrip = {}	--	1 mod changed

	self.parts.wpn_fps_m4_uupg_fg_lr300.stats = self.parts.wpn_fps_upg_ass_m4_fg_moe.stats		--	2
	self.parts.wpn_fps_upg_fg_jp.stats = self.parts.wpn_fps_upg_ass_m4_fg_moe.stats				--	3
	self.parts.wpn_fps_upg_fg_smr.stats = self.parts.wpn_fps_upg_ass_m4_fg_moe.stats			--	4
	self.parts.wpn_fps_upg_ass_m4_fg_lvoa.stats = self.parts.wpn_fps_upg_ass_m4_fg_moe.stats	--	5

	self.parts.wpn_fps_upg_fl_ass_peq15.stats = self.parts.wpn_fps_upg_fl_ass_utg.stats	--	6

	self.parts.wpn_fps_upg_fl_ass_smg_sho_peqbox.stats = self.parts.wpn_fps_upg_fl_ass_laser.stats	--	7

	self.parts.wpn_fps_upg_o_45iron.stats = self.parts.wpn_fps_upg_o_45steel.stats	--	8

	self.parts.wpn_fps_m4_upper_reciever_edge.stats = self.parts.wpn_fps_upg_ass_m4_upper_reciever_ballos.stats			--	9
	self.parts.wpn_fps_upg_ass_m4_upper_reciever_core.stats = self.parts.wpn_fps_upg_ass_m4_upper_reciever_ballos.stats	--	10

	self.parts.wpn_fps_upg_m4_s_pts.stats = self.parts.wpn_fps_upg_m4_s_crane.stats			--	11
	self.parts.wpn_fps_upg_m4_s_standard.stats = self.parts.wpn_fps_upg_m4_s_crane.stats	--	12
	self.parts.wpn_fps_snp_tti_s_vltor.stats = self.parts.wpn_fps_upg_m4_s_mk46.stats		--	13
	self.parts.wpn_fps_shot_r870_s_folding.stats = self.parts.wpn_fps_upg_m4_s_crane.stats	--	14
	self.parts.wpn_fps_shot_r870_s_solid.stats = self.parts.wpn_fps_upg_m4_s_crane.stats	--	15

	self.parts.wpn_fps_shot_r870_s_nostock_big.stats = self.parts.wpn_fps_shot_r870_s_nostock.stats	--	16

	self.parts.wpn_fps_upg_m4_g_ergo.stats = self.parts.wpn_fps_upg_m4_g_hgrip.stats	--	16
	self.parts.wpn_fps_upg_m4_g_sniper.stats = self.parts.wpn_fps_upg_m4_g_hgrip.stats	--	17
	self.parts.wpn_fps_snp_tti_g_grippy.stats = self.parts.wpn_fps_upg_m4_g_hgrip.stats	--	18

	local sight_table_fc1 = {
		"wpn_fps_upg_o_t1micro",	--	19
		"wpn_fps_upg_o_docter",		--	20
		"wpn_fps_upg_o_eotech_xps",	--	21
		"wpn_fps_upg_o_reflex",		--	22
		"wpn_fps_upg_o_rx01"		--	23
	}
	for _, name in ipairs(sight_table_fc1) do
		self.parts[name].stats.recoil = self.parts.wpn_fps_upg_o_fc1.stats.recoil
		self.parts[name].stats.concealment = self.parts.wpn_fps_upg_o_fc1.stats.concealment
		self.parts[name].stats.spread_moving = self.parts.wpn_fps_upg_o_fc1.stats.spread_moving
	end

	local sight_table_cmore = {
		"wpn_fps_upg_o_eotech",		--	24
		"wpn_fps_upg_o_rx30",		--	25
		"wpn_fps_upg_o_uh",			--	26
		"wpn_fps_upg_o_poe",		--	27
		"wpn_fps_upg_o_aimpoint",	--	28
		"wpn_fps_upg_o_aimpoint_2",	--	29
		"wpn_fps_upg_o_specter",	--	30
		"wpn_fps_upg_o_spot",		--	31
		"wpn_fps_upg_o_tf90",		--	32
		"wpn_fps_upg_o_acog",		--	33
		"wpn_fps_upg_o_bmg"			--	34
	}
	for _, name in ipairs(sight_table_cmore) do
		self.parts[name].stats.recoil = self.parts.wpn_fps_upg_o_cmore.stats.recoil
		self.parts[name].stats.concealment = self.parts.wpn_fps_upg_o_cmore.stats.concealment
		self.parts[name].stats.spread_moving = self.parts.wpn_fps_upg_o_cmore.stats.spread_moving
	end

	self.parts.wpn_fps_m4_uupg_m_std.stats = self.parts.wpn_fps_m4_upg_m_quick.stats	--	35
	self.parts.wpn_fps_upg_m4_m_pmag.stats = self.parts.wpn_fps_m4_upg_m_quick.stats	--	36
	self.parts.wpn_fps_ass_l85a2_m_emag.stats = self.parts.wpn_fps_m4_upg_m_quick.stats	--	37
	self.parts.wpn_fps_upg_m4_m_l5.stats = self.parts.wpn_fps_m4_upg_m_quick.stats		--	38

	self.parts.wpn_fps_m16_fg_railed.stats = self.parts.wpn_fps_m16_fg_vietnam.stats		--	39
	self.parts.wpn_fps_upg_ass_m16_fg_stag.stats = self.parts.wpn_fps_m16_fg_vietnam.stats	--	40

	self.parts.wpn_fps_upg_ass_ns_linear.stats = self.parts.wpn_fps_upg_ns_ass_smg_firepig.stats	-- 41

	self.parts.wpn_fps_upg_ass_ns_battle.stats = self.parts.wpn_fps_upg_ns_ass_smg_tank.stats	--	42

	self.parts.wpn_fps_ass_shak12_ns_muzzle.stats = self.parts.wpn_fps_upg_ass_ns_jprifles.stats	--	43

	self.parts.wpn_fps_upg_ak_b_draco.stats = self.parts.wpn_fps_upg_ak_b_ak105.stats	--	44

	self.parts.wpn_fps_upg_ns_ass_pbs1.stats = self.parts.wpn_fps_ass_shak12_ns_suppressor.stats	--	45

	self.parts.wpn_fps_upg_ak_fg_tapco.stats = self.parts.wpn_fps_upg_ak_fg_krebs.stats	--	46

	self.parts.wpn_fps_ass_g36_fg_ksk.stats = self.parts.wpn_fps_upg_g36_fg_long.stats	--	47

	self.parts.wpn_fps_ass_m14_body_ebr.stats = self.parts.wpn_fps_ass_m14_body_ruger.stats	--	48

	self.parts.wpn_fps_snp_r700_s_tactical.stats = self.parts.wpn_fps_snp_r700_s_military.stats	--	49

	self.parts.wpn_fps_snp_wa2000_g_light.stats = self.parts.wpn_fps_snp_wa2000_g_stealth.stats		--	50
	self.parts.wpn_fps_snp_wa2000_g_walnut.stats = self.parts.wpn_fps_snp_wa2000_g_stealth.stats	--	51

	self.parts.wpn_fps_bow_elastic_g_2.stats = self.parts.wpn_fps_bow_elastic_g_3.stats	--	52

	self.parts.wpn_fps_upg_fl_pis_laser.stats = self.parts.wpn_fps_upg_fl_pis_crimson.stats	--	53

	self.parts.wpn_fps_upg_fl_pis_tlr1.stats = self.parts.wpn_fps_upg_fl_pis_m3x.stats	--	54

	self.parts.wpn_fps_upg_ns_pis_meatgrinder.stats = self.parts.wpn_fps_upg_pis_ns_flash.stats	--	55
	self.parts.wpn_fps_pis_1911_co_2.stats = self.parts.wpn_fps_upg_pis_ns_flash.stats			--	56
	self.parts.wpn_fps_pis_p226_co_comp_1.stats = self.parts.wpn_fps_upg_pis_ns_flash.stats		--	57
	self.parts.wpn_fps_pis_c96_nozzle.stats = self.parts.wpn_fps_upg_pis_ns_flash.stats			--	58
	self.parts.wpn_fps_pis_deagle_co_long.stats = self.parts.wpn_fps_upg_pis_ns_flash.stats		--	59

	self.parts.wpn_fps_pis_1911_co_1.stats = self.parts.wpn_fps_upg_ns_pis_typhoon.stats		--	60
	self.parts.wpn_fps_pis_beretta_co_co1.stats = self.parts.wpn_fps_upg_ns_pis_typhoon.stats	--	61
	self.parts.wpn_fps_pis_packrat_ns_wick.stats = self.parts.wpn_fps_upg_ns_pis_typhoon.stats	--	62
	self.parts.wpn_fps_pis_g18c_co_1.stats = self.parts.wpn_fps_upg_ns_pis_typhoon.stats		--	63
	self.parts.wpn_fps_pis_deagle_co_short.stats = self.parts.wpn_fps_upg_ns_pis_typhoon.stats	--	64

	self.parts.wpn_fps_upg_ns_ass_filter.stats = self.parts.wpn_fps_upg_ns_pis_medium_gem.stats	--	65

	self.parts.wpn_fps_pis_g26_g_gripforce.stats = self.parts.wpn_fps_pis_g18c_g_ergo.stats	--	66

	self.parts.wpn_fps_smg_olympic_fg_railed.stats = self.parts.wpn_fps_upg_smg_olympic_fg_lr300.stats	--	67

	self.parts.wpn_fps_smg_p90_b_civilian.stats = self.parts.wpn_fps_smg_p90_b_long.stats	--	68

	self.parts.wpn_fps_smg_sterling_b_suppressed.stats = self.parts.wpn_fps_smg_sterling_b_e11.stats	--	69

	self.parts.wpn_fps_bow_hunter_g_walnut.stats = self.parts.wpn_fps_bow_hunter_g_camo.stats	--	70

	self.parts.wpn_fps_gre_arbiter_b_long.stats = self.parts.wpn_fps_gre_arbiter_b_comp.stats	--	71

	self.parts.wpn_fps_upg_ns_pis_medium.stats = self.parts.wpn_fps_upg_ns_pis_putnik.stats	--	72

	table.remove(self.parts.wpn_fps_m4_upg_fg_mk12.perks, 1)	--	it makes no sense why this should have an auto lock
	table.remove(self.parts.wpn_fps_m4_upg_fg_mk12.forbids, 22)	--	73
	table.remove(self.parts.wpn_fps_m4_upg_fg_mk12.forbids, 21)
	--	stats of long barrel, ks12-s long silencer, and emo foregrip all put together
	self.parts.wpn_fps_m4_upg_fg_mk12.stats = {
		value = self.parts.wpn_fps_upg_ass_m4_fg_moe.stats.value + self.parts.wpn_fps_ass_shak12_ns_suppressor.stats.value + self.parts.wpn_fps_m4_uupg_b_long.stats.value,
		spread = self.parts.wpn_fps_upg_ass_m4_fg_moe.stats.spread + self.parts.wpn_fps_ass_shak12_ns_suppressor.stats.spread + self.parts.wpn_fps_m4_uupg_b_long.stats.spread,
		spread_moving = self.parts.wpn_fps_m4_uupg_b_long.stats.spread_moving,
		damage = self.parts.wpn_fps_upg_ass_m4_fg_moe.stats.damage + self.parts.wpn_fps_ass_shak12_ns_suppressor.stats.damage + self.parts.wpn_fps_m4_uupg_b_long.stats.damage,
		suppression = self.parts.wpn_fps_ass_shak12_ns_suppressor.stats.suppression,
		concealment = self.parts.wpn_fps_upg_ass_m4_fg_moe.stats.concealment + self.parts.wpn_fps_ass_shak12_ns_suppressor.stats.concealment + self.parts.wpn_fps_m4_uupg_b_long.stats.concealment,
		recoil = self.parts.wpn_fps_upg_ass_m4_fg_moe.stats.recoil + self.parts.wpn_fps_ass_shak12_ns_suppressor.stats.recoil,
		alert_size = self.parts.wpn_fps_ass_shak12_ns_suppressor.stats.alert_size
	}

	self.parts.wpn_fps_smg_cobray_ns_silencer.stats = self.parts.wpn_fps_upg_ns_ass_smg_large.stats	--	74

end)