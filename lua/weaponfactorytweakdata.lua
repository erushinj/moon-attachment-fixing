local function weapon_tweaks(weapon_factory)
	if not MWPT.settings.weapon_tweaks then
		return
	end
end

local function part_tweaks(weapon_factory)
	if not MWPT.settings.part_tweaks then
		return
	end

	local function func(based_on_part, parts_to_tweak)
		if type(parts_to_tweak) == "table" then
			for _, part_id in pairs(parts_to_tweak) do
				weapon_factory.parts[part_id].stats = weapon_factory.parts[based_on_part].stats
				weapon_factory.parts[part_id].MWPT_TWEAKED = true
			end
		else
			weapon_factory.parts[parts_to_tweak].stats = weapon_factory.parts[based_on_part].stats
			weapon_factory.parts[parts_to_tweak].MWPT_TWEAKED = true
		end
	end

	func("wpn_fps_upg_ass_m4_fg_moe", {
		"wpn_fps_m4_uupg_fg_lr300",
		"wpn_fps_upg_fg_jp",
		"wpn_fps_upg_fg_smr",
		"wpn_fps_upg_ass_m4_fg_lvoa"
	})

	func("wpn_fps_upg_fl_ass_utg", "wpn_fps_upg_fl_ass_peq15")

	func("wpn_fps_upg_fl_ass_laser", {
		"wpn_fps_upg_fl_ass_smg_sho_peqbox",
		"wpn_fps_upg_fl_ass_smg_sho_surefire"
	})

	func("wpn_fps_upg_o_45steel", "wpn_fps_upg_o_45iron")

	func("wpn_fps_upg_ass_m4_upper_reciever_ballos", {
		"wpn_fps_m4_upper_reciever_edge",
		"wpn_fps_upg_ass_m4_upper_reciever_core"
	})

	func("wpn_fps_upg_m4_s_crane", {
		"wpn_fps_upg_m4_s_pts",
		"wpn_fps_upg_m4_s_standard",
		"wpn_fps_shot_r870_s_folding",
		"wpn_fps_shot_r870_s_solid"
	})

	func("wpn_fps_upg_m4_s_mk46", "wpn_fps_snp_tti_s_vltor")

	func("wpn_fps_shot_r870_s_nostock", "wpn_fps_shot_r870_s_nostock_big")

	func("wpn_fps_upg_m4_g_hgrip", {
		"wpn_fps_upg_m4_g_ergo",
		"wpn_fps_upg_m4_g_sniper",
		"wpn_fps_snp_tti_g_grippy"
	})

	func("wpn_fps_m4_upg_m_quick", {
		"wpn_fps_m4_uupg_m_std",
		"wpn_fps_upg_m4_m_pmag",
		"wpn_fps_ass_l85a2_m_emag",
		"wpn_fps_upg_m4_m_l5"
	})

	func("wpn_fps_uupg_fg_radian", {
		"wpn_fps_m16_fg_railed",
		"wpn_fps_upg_ass_m16_fg_stag"
	})

	func("wpn_fps_uupg_fg_radian", {
		"wpn_fps_m16_fg_railed",
		"wpn_fps_upg_ass_m16_fg_stag"
	})

	func("wpn_fps_upg_ns_ass_smg_firepig", "wpn_fps_upg_ass_ns_linear")

	func("wpn_fps_upg_ns_ass_smg_tank", "wpn_fps_upg_ass_ns_battle")

	func("wpn_fps_upg_ass_ns_jprifles", "wpn_fps_ass_shak12_ns_muzzle")

	func("wpn_fps_upg_ak_b_ak105", "wpn_fps_upg_ak_b_draco")

	func("wpn_fps_ass_shak12_ns_suppressor", "wpn_fps_upg_ns_ass_pbs1")

	func("wpn_fps_upg_ak_fg_krebs", "wpn_fps_upg_ak_fg_tapco")

	func("wpn_fps_upg_g36_fg_long", "wpn_fps_ass_g36_fg_ksk")

	func("wpn_fps_ass_m14_body_ruger", "wpn_fps_ass_m14_body_ebr")

	func("wpn_fps_snp_r700_s_military", "wpn_fps_snp_r700_s_tactical")

	func("wpn_fps_snp_wa2000_g_stealth", {
		"wpn_fps_snp_wa2000_g_light",
		"wpn_fps_snp_wa2000_g_walnut"
	})

	func("wpn_fps_bow_elastic_g_3", "wpn_fps_bow_elastic_g_2")

	func("wpn_fps_upg_fl_pis_crimson", "wpn_fps_upg_fl_pis_laser")

	func("wpn_fps_upg_fl_pis_m3x", "wpn_fps_upg_fl_pis_tlr1")

	func("wpn_fps_upg_pis_ns_flash", {
		"wpn_fps_upg_ns_pis_meatgrinder",
		"wpn_fps_pis_1911_co_2",
		"wpn_fps_pis_p226_co_comp_1",
		"wpn_fps_pis_c96_nozzle",
		"wpn_fps_pis_deagle_co_long"
	})

	func("wpn_fps_upg_ns_pis_typhoon", {
		"wpn_fps_pis_1911_co_1",
		"wpn_fps_pis_beretta_co_co1",
		"wpn_fps_pis_packrat_ns_wick",
		"wpn_fps_pis_g18c_co_1",
		"wpn_fps_pis_deagle_co_short"
	})

	func("wpn_fps_upg_ns_pis_medium_gem", "wpn_fps_upg_ns_ass_filter")

	func("wpn_fps_pis_g26_g_gripforce", "wpn_fps_pis_g18c_g_ergo")

	func("wpn_fps_upg_smg_olympic_fg_lr300", "wpn_fps_smg_olympic_fg_railed")

	func("wpn_fps_smg_p90_b_long", "wpn_fps_smg_p90_b_civilian")

	func("wpn_fps_smg_sterling_b_e11", "wpn_fps_smg_sterling_b_suppressed")

	func("wpn_fps_bow_hunter_g_camo", "wpn_fps_bow_hunter_g_walnut")

	func("wpn_fps_gre_arbiter_b_comp", "wpn_fps_gre_arbiter_b_long")

	func("wpn_fps_upg_ns_pis_putnik", "wpn_fps_upg_ns_pis_medium")

	func("wpn_fps_upg_ns_ass_smg_large", "wpn_fps_smg_cobray_ns_silencer")
end

local function sight_tweaks(weapon_factory)
	if not MWPT.settings.weapon_tweaks then
		return
	end

	for _, data in pairs(weapon_factory.parts) do
		if data.type == "sight" and data.stats then
			data.stats.spread = 0
			data.stats.recoil = 0
			data.stats.concealment = 0
			data.stats.spread_moving = 0
			data.MWPT_TWEAKED = true
		end
	end
end

local function hook_func(weapon_factory)
	weapon_tweaks(weapon_factory)
	part_tweaks(weapon_factory)
	sight_tweaks(weapon_factory)

	for _, data in pairs(weapon_factory.parts) do
		if data.MWPT_TWEAKED then
			data.has_description = true
			data.desc_id = data.desc_id or data.type == "gadget" and "bm_wp_mwpt_tweaked_had_desc" or "bm_wp_mwpt_tweaked"
		end
	end
end

Hooks:PostHook( WeaponFactoryTweakData, "init", "mwpt_init", hook_func )