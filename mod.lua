if not MWPT then

	MWPT = {
		mod_path = ModPath,
		save_path = SavePath .. "weapon_and_part_tweaks.json",
		settings = {
			is_enabled = true,
			part_tweaks = true,
			sight_tweaks = true,
			infinite_parts = true,
			weapon_tweaks = true,
			tweaks = {
				amcar = true,
				g36 = true,
				s552 = true,
				asval = true,
				akm = true,
				akm_gold = true,
				aug = true,
				scar = true,
				vhs = true,
				asval = true,
				corgi = true,
				galil = true,
				l85a2 = true,
				tecci = true,
				g26 = true,
				legacy = true,
				holt = true,
				p226 = true,
				m1911 = true,
				pl14 = true,
				qbu88 = true,
				m249 = true,
				mg42 = true,
				hk51b = true,
				mp9 = true,
				new_mp5 = true,
				scorpion = true,
				tec9 = true,
				shepheard = true,
				erma = true
			}
		}
	}

	function MWPT:require(file)
		local path = self.mod_path .. "req/" .. file .. ".lua"

		return io.file_is_readable(path) and blt.vm.dofile(path)
	end

	Hooks:Add( "LocalizationManagerPostInit", "LocalizationManagerPostInitWeaponPartTweaks", function(loc)
		loc:load_localization_file(MWPT.mod_path .. "loc/en.txt")
	end )

	Hooks:Add( "MenuManagerBuildCustomMenus", "MenuManagerBuildCustomMenusWeaponPartTweaks", function(_, nodes)

		local menu_id = "mwpt_menu"
		MenuHelper:NewMenu(menu_id)

		MenuCallbackHandler.mwpt_setting_toggle = function(self, item)
			MWPT.settings[item:name()] = (item:value() == "on")
		end

		MenuCallbackHandler.mwpt_save = function()
			io.save_as_json(MWPT.settings, MWPT.save_path)
		end

		local clbk = "mwpt_setting_toggle"

		MenuHelper:AddToggle({
			id = "is_enabled",
			title = "mwpt_menu_is_enabled",
			desc = "mwpt_menu_is_enabled_desc",
			callback = clbk,
			value = MWPT.settings.is_enabled,
			menu_id = menu_id,
			priority = 100
		})

		-- MenuHelper:AddToggle({
		-- 	id = "weapon_tweaks",
		-- 	title = "mwpt_menu_weapon_tweaks",
		-- 	desc = "mwpt_menu_weapon_tweaks_desc",
		-- 	callback = clbk,
		-- 	value = MWPT.settings.weapon_tweaks,
		-- 	menu_id = menu_id,
		-- 	priority = 90
		-- })

		MenuHelper:AddToggle({
			id = "part_tweaks",
			title = "mwpt_menu_part_tweaks",
			desc = "mwpt_menu_part_tweaks_desc",
			callback = clbk,
			value = MWPT.settings.part_tweaks,
			menu_id = menu_id,
			priority = 80
		})

		MenuHelper:AddToggle({
			id = "sight_tweaks",
			title = "mwpt_menu_sight_tweaks",
			desc = "mwpt_menu_sight_tweaks_desc",
			callback = clbk,
			value = MWPT.settings.sight_tweaks,
			menu_id = menu_id,
			priority = 70
		})

		MenuHelper:AddToggle({
			id = "infinite_parts",
			title = "mwpt_menu_infinite_parts",
			desc = "mwpt_menu_infinite_parts_desc",
			callback = clbk,
			value = MWPT.settings.infinite_parts,
			menu_id = menu_id,
			priority = 60
		})

		nodes[menu_id] = MenuHelper:BuildMenu(menu_id, { back_callback = "mwpt_save" })
		MenuHelper:AddMenuItem(nodes["blt_options"], menu_id, "mwpt_menu_main")

	end )

	-- Load settings
	if io.file_is_readable(MWPT.save_path) then
		local data = io.load_as_json(MWPT.save_path)
		if data then
			local function merge(tbl1, tbl2)
				for k, v in pairs(tbl2) do
					if type(tbl1[k]) == type(v) then
						if type(v) == "table" then
							merge(tbl1[k], v)
						else
							tbl1[k] = v
						end
					end
				end
			end
			merge(MWPT.settings, data)
		end
	end

end

if not MWPT.settings.is_enabled then
	return
end

local required = {}
if RequiredScript and not required[RequiredScript] then

	local fname = MWPT.mod_path .. RequiredScript:gsub(".+/(.+)", "lua/%1.lua")
	if io.file_is_readable(fname) then
		dofile(fname)
	end

	required[RequiredScript] = true

end