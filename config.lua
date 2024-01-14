Config = {}

Config.SharedEmoteRange = 3.0
Config.SharedEmoteTimeout = 5000

Config.SharedEmoteAcceptControl = `INPUT_DYNAMIC_SCENARIO`
Config.SharedEmoteRejectControl = `INPUT_RELOAD`

Config.Emotes = {
	-- Solo emotes
	["dance1"] = {
		type = "solo",
		name = "Dance: Lead",
		animation = {
			dict = "cnv_camp@rchso@cnv@ccdtc33@player_karen",
			name = "arthur_dance_loop",
			flag = 1
		}
	},
	["dance2"] = {
		type = "solo",
		name = "Dance: Follow",
		animation = {
			dict = "cnv_camp@rchso@cnv@ccdtc33@player_karen",
			name = "karen_dance_loop",
			flag = 1
		}
	},
	["dogbarkground"] = {
		type = "solo",
		name = "Dog: Bark on Ground",
		animation = {
			dict = "amb_creature_mammal@world_dog_barking_ground@base",
			name = "base",
			flag = 1
		}
	},
	["dogbarkup"] = {
		type = "solo",
		name = "Dog: Bark Up",
		animation = {
			dict = "amb_creature_mammal@world_dog_barking_up@base",
			name = "base",
			flag = 1
		}
	},
	["dogbeg"] = {
		type = "solo",
		name = "Dog: Beg",
		animation = {
			dict = "amb_creature_mammal@world_dog_begging@idle",
			name = "idle_a",
			flag = 1
		}
	},
	["dogrest"] = {
		type = "solo",
		name = "Dog: Rest",
		animation = {
			dict = "amb_creature_mammal@world_dog_resting@base",
			name = "base",
			flag = 1
		}
	},
	["dogroll"] = {
		type = "solo",
		name = "Dog: Roll",
		animation = {
			dict = "amb_creature_mammal@world_dog_roll_ground@base",
			name = "base",
			flag = 1
		}
	},
	["dogsit"] = {
		type = "solo",
		name = "Dog: Sit",
		animation = {
			dict = "amb_creature_mammal@world_dog_sitting@base",
			name = "base",
			flag = 1
		}
	},
	["dogsleep"] = {
		type = "solo",
		name = "Dog: Sleep",
		animation = {
			dict = "amb_creature_mammal@world_dog_sleeping@base",
			name = "base",
			flag = 1
		}
	},
	["dogsniff"] = {
		type = "solo",
		name = "Sniff",
		animation = {
			dict = "amb_creature_mammal@world_dog_sniffing_ground@base",
			name = "base",
			flag = 1
		}
	},
	["dogwagtail"] = {
		type = "solo",
		name = "Dog: Wag Tail",
		animation = {
			dict = "creatures_mammal@dog_pers@happy@idle",
			name = "idle",
			flag = 1
		}
	},
	["handsup"] = {
		type = "solo",
		name = "Hands Up",
		animation = {
			dict = "script_proc@robberies@homestead@lonnies_shack@deception",
			name = "hands_up_loop",
			flag = 25
		}
	},
	["pet1"] = {
		type = "solo",
		name = "Pet",
		animation = {
			dict = "mech_animal_interaction@dog@patting@1h",
			name = "base",
			flag = 1
		}
	},

	-- Shared emotes
	["dance"] = {
		type = "shared",
		name = "Dance",
		animation = {
			dict = "cnv_camp@rchso@cnv@ccdtc33@player_karen",
			name = "arthur_dance_loop",
			flag = 1
		},
		partner = {
			offset = vector4(0.2, 0.5, 0.0, 155.0),
			animation = {
				dict = "cnv_camp@rchso@cnv@ccdtc33@player_karen",
				name = "karen_dance_loop",
				flag = 1
			}
		}
	},
	["carry3"] = {
		type = "shared",
		name = "carry3",
		animation = {
			dict = "mech_carry_box",
			name = "idle",
			flag = 25
		},
		partner = {
			offset = vector4(0.2, 0.5, 0.0, 155.0),
			animation = {
				dict = "amb_camp@prop_camp_bill_sleep@male_a@base",
				name = "base",
				flag = 1
			}
		}
	},
	["hostage"] = {
		type = "shared",
		name = "Take Hostage",
		animation = {
			dict = "mech_grapple@blade@_male@_ambient@_healthy@back@loco@attacker",
			name = "idle",
			flag = 1
		},
		partner = {
			offset = vector4(0, 0.2, 0, 0),
			animation = {
				dict = "mech_grapple@blade@_male@_ambient@_healthy@back@loco@victim",
				name = "idle",
				flag = 1
			}
		}
	},
	["pet"] = {
		type = "shared",
		name = "Pet Dog (Standing)",
		animation = {
			dict = "mech_animal_interaction@dog@patting@1h",
			name = "base",
			flag = 1
		},
		partner = {
			offset = vector4(0, 0.85, -0.6, 180),
			animation = {
				dict = "creatures_mammal@dog_pers@happy@idle",
				name = "idle",
				flag = 1
			}
		}
	},
	["pet2"] = {
		type = "shared",
		name = "Pet Dog (Sitting)",
		animation = {
			dict = "mech_animal_interaction@dog@patting@1h",
			name = "base",
			flag = 1
		},
		partner = {
			offset = vector4(0, 0.7, -0.6, 180),
			animation = {
				dict = "amb_creature_mammal@world_dog_sitting@base",
				name = "base",
				flag = 1
			}
		}
	},

	-- Prop emotes
	["basket"] = {
		type = "prop",
		name = "Basket",
		prop1 = {
			model = "p_basket04x",
			bone = "skel_r_hand",
			position = vector3(0.26, -0.07, -0.21),
			rotation = vector3(134.0, -176.0, -124.0)
		},
		animation = {
			dict = "amb_wander@code_human_basket_wander@female_a@base",
			name = "base",
			flag = 25
		}
	},
	["childcarrybook"] = {
		type = "prop",
		name = "childcarrybook",
		prop1 = {
			model = "p_cs_book_ladyofmanor",
			bone = "CP_Chest",
			position = vector3(-0.1, 0.1, 0),
			rotation = vector3(0, 0, -97)
		},
		animation = {
			dict = "amb_misc@world_human_stand_waiting@female_a@base",
			name = "base",
			flag = 25
		}
	},
	["suitcase"] = {
		type = "prop",
		name = "suitcase",
		prop1 = {
			model = "p_cs_suitcase04x",
			bone = "MH_R_HandSide",
			position = vector3(0.45, 0.03, 0),
			rotation = vector3(0, -94, 0)
		},
		animation = {
			dict = "",
			name = "",
			flag = 25
		}
	},
	["candle"] = {
		type = "prop",
		name = "candle",
		prop1 = {
			model = "p_candlestick03x",
			bone = "MH_L_HandSide",
			position = vector3(0.099, 0, -0.06),
			rotation = vector3(29, 18, 16)
		},
		animation = {
			dict = "mech_inspection@cigarette_card@base",
			name = "hold",
			flag = 25
		}
	},
	["apple1"] = {
		type = "prop",
		name = "apple1",
		prop1 = {
			model = "p_apple01x",
			bone = "CH_R_Hand",
			position = vector3(0, 0, -0.02),
			rotation = vector3(0, -196, 39)
		},
		animation = {
			dict = "amb_misc@world_human_eat_apple@female_a@wip_base",
			name = "wip_base",
			flag = 25
		}
	},
	["apple2"] = {
		type = "prop",
		name = "apple2",
		prop1 = {
			model = "p_apple01x",
			bone = "IK_R_Hand",
			position = vector3(0.03, -0.01, -0.07),
			rotation = vector3(0, 77, 73)
		},
		animation = {
			dict = "amb_misc@world_human_eat_apple@male_a@idle_b",
			name = "idle_d",
			flag = 25
		}
	},
	["tea"] = {
		type = "prop",
		name = "tea",
		prop1 = {
			model = "p_teacup",
			bone = "MH_R_HandSide",
			position = vector3(0.06, -0.053, -0.02),
			rotation = vector3(0, 189, 82)
		},
		animation = {
			dict = "amb_rest_drunk@World_human_coffee_drink@female_c@idle_c",
			name = "idle_h",
			flag = 25
		}
	},
	["carrybook"] = {
		type = "prop",
		name = "carrybook",
		prop1 = {
			model = "p_book02x",
			bone = "CP_Chest",
			position = vector3(-0.21, -0.02, 0.08),
			rotation = vector3(185, 286, -5)
		},
		animation = {
			dict = "amb_misc@world_human_stand_waiting@female_a@base",
			name = "base",
			flag = 25
		}
	},
	["dinner1"] = {
		type = "prop",
		name = "dinner1",
		prop1 = {
			model = "p_knife04x",
			bone = "IK_R_Hand",
			position = vector3(0.08, 0.06, -0.03),
			rotation = vector3(0, 0, 0)
		},
		
		prop2 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop3 = {
			model = "p_crab_plate_02",
			bone = "CP_Belly",
			position = vector3(0.07, 0.51, 0.34),
			rotation = vector3(0, 0, 0)
		},
		animation = {
			dict = "amb_camp@world_camp_jack_es_seat_chair_table@eating@fork_knife@chewing@male_a@trans",
			name = "chewing_trans_chewing_06",
			flag = 25
		}
	},
	["cdinner1"] = {
		type = "prop",
		name = "cdinner1",
		prop1 = {
			model = "p_knife04x",
			bone = "IK_R_Hand",
			position = vector3(0.08, 0.06, -0.03),
			rotation = vector3(0, 0, 0)
		},
		
		prop2 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop3 = {
			model = "p_crab_plate_02",
			bone = "CP_Belly",
			position = vector3(0.07, 0.51, 0.42),
			rotation = vector3(0, 0, 0)
		},
		animation = {
			dict = "amb_camp@world_camp_jack_es_seat_chair_table@eating@fork_knife@chewing@male_a@trans",
			name = "chewing_trans_chewing_06",
			flag = 25
		}
	},
	["dinner2"] = {
		type = "prop",
		name = "dinner2",
		prop1 = {
			model = "p_knife04x",
			bone = "MH_R_Finger11",
			position = vector3(0,-0.03, 0),
			rotation = vector3(31, 182, -87)
		},
		
		prop2 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop3 = {
			model = "p_stewplate01x",
			bone = "CP_Belly",
			position = vector3(0.07, 0.51, 0.34),
			rotation = vector3(0, 0, 0)
		},
		animation = {
			dict = "amb_rest_sit@prop_human_seat_chair_table@eating@fork_knife@cutting@female_a@base",
			name = "cutting_trans_chewing_01",
			flag = 25
		}
	},
	["cdinner2"] = {
		type = "prop",
		name = "cdinner2",
		prop1 = {
			model = "p_knife04x",
			bone = "MH_R_Finger11",
			position = vector3(0,-0.03, 0),
			rotation = vector3(31, 182, -87)
		},
		
		prop2 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop3 = {
			model = "p_stewplate01x",
			bone = "CP_Belly",
			position = vector3(0.07, 0.51, 0.42),
			rotation = vector3(0, 0, 0)
		},
		animation = {
			dict = "amb_rest_sit@prop_human_seat_chair_table@eating@fork_knife@cutting@female_a@base",
			name = "cutting_trans_chewing_01",
			flag = 25
		}
	},
	["dessert4"] = {
		type = "prop",
		name = "dessert4",
		prop1 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop2 = {
			model = "c_c_cupcake01x",
			bone = "CP_Belly",
			position = vector3(0.07, 0.45, 0.30),
			rotation = vector3(0, 0, 0)
		
		},
		animation = {
			dict = "amb_camp@world_camp_jack_es_seat_chair_table@eating@fork_knife@chewing@male_a@trans",
			name = "chewing_trans_chewing_06",
			flag = 25
		}
	},
	["fdessert4"] = {
		type = "prop",
		name = "fdessert4",
		prop1 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop2 = {
			model = "c_c_cupcake01x",
			bone = "CP_Belly",
			position = vector3(0.07, 0.45, 0.42),
			rotation = vector3(0, 0, 0)
		
		},
		animation = {
			dict = "amb_camp@world_camp_jack_es_seat_chair_table@eating@fork_knife@chewing@male_a@trans",
			name = "chewing_trans_chewing_06",
			flag = 25
		}
	},
	["dessert5"] = {
		type = "prop",
		name = "dessert5",
		prop1 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop2 = {
			model = "c_c_cupcake02x",
			bone = "CP_Belly",
			position = vector3(0.07, 0.45, 0.30),
			rotation = vector3(0, 0, 0)
		
		},
		animation = {
			dict = "amb_camp@world_camp_jack_es_seat_chair_table@eating@fork_knife@chewing@male_a@trans",
			name = "chewing_trans_chewing_06",
			flag = 25
		}
	},
	["fdessert5"] = {
		type = "prop",
		name = "fdessert5",
		prop1 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop2 = {
			model = "c_c_cupcake02x",
			bone = "CP_Belly",
			position = vector3(0.07, 0.45, 0.42),
			rotation = vector3(0, 0, 0)
		
		},
		animation = {
			dict = "amb_camp@world_camp_jack_es_seat_chair_table@eating@fork_knife@chewing@male_a@trans",
			name = "chewing_trans_chewing_06",
			flag = 25
		}
	},
	["dessert6"] = {
		type = "prop",
		name = "dessert6",
		prop1 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop2 = {
			model = "c_c_cupcake03x",
			bone = "CP_Belly",
			position = vector3(0.07, 0.45, 0.30),
			rotation = vector3(0, 0, 0)
		
		},
		animation = {
			dict = "amb_camp@world_camp_jack_es_seat_chair_table@eating@fork_knife@chewing@male_a@trans",
			name = "chewing_trans_chewing_06",
			flag = 25
		}
	},
	["fdessert6"] = {
		type = "prop",
		name = "fdessert6",
		prop1 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop2 = {
			model = "c_c_cupcake03x",
			bone = "CP_Belly",
			position = vector3(0.07, 0.45, 0.42),
			rotation = vector3(0, 0, 0)
		
		},
		animation = {
			dict = "amb_camp@world_camp_jack_es_seat_chair_table@eating@fork_knife@chewing@male_a@trans",
			name = "chewing_trans_chewing_06",
			flag = 25
		}
	},
	["dessert7"] = {
		type = "prop",
		name = "dessert7",
		prop1 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop2 = {
			model = "c_c_cupcake04x",
			bone = "CP_Belly",
			position = vector3(0.07, 0.45, 0.30),
			rotation = vector3(0, 0, 0)
		
		},
		animation = {
			dict = "amb_camp@world_camp_jack_es_seat_chair_table@eating@fork_knife@chewing@male_a@trans",
			name = "chewing_trans_chewing_06",
			flag = 25
		}
	},
	["cdessert7"] = {
		type = "prop",
		name = "cdessert7",
		prop1 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop2 = {
			model = "c_c_cupcake04x",
			bone = "CP_Belly",
			position = vector3(0.07, 0.45, 0.42),
			rotation = vector3(0, 0, 0)
		
		},
		animation = {
			dict = "amb_camp@world_camp_jack_es_seat_chair_table@eating@fork_knife@chewing@male_a@trans",
			name = "chewing_trans_chewing_06",
			flag = 25
		}
	},
	["dessert8"] = {
		type = "prop",
		name = "dessert8",
		prop1 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop2 = {
			model = "c_c_cupcake05x",
			bone = "CP_Belly",
			position = vector3(0.07, 0.45, 0.30),
			rotation = vector3(0, 0, 0)
		
		},
		animation = {
			dict = "amb_camp@world_camp_jack_es_seat_chair_table@eating@fork_knife@chewing@male_a@trans",
			name = "chewing_trans_chewing_06",
			flag = 25
		}
	},
	["cdessert8"] = {
		type = "prop",
		name = "cdessert8",
		prop1 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop2 = {
			model = "c_c_cupcake05x",
			bone = "CP_Belly",
			position = vector3(0.07, 0.45, 0.42),
			rotation = vector3(0, 0, 0)
		
		},
		animation = {
			dict = "amb_camp@world_camp_jack_es_seat_chair_table@eating@fork_knife@chewing@male_a@trans",
			name = "chewing_trans_chewing_06",
			flag = 25
		}
	},
	["dessert9"] = {
		type = "prop",
		name = "dessert9",
		prop1 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop2 = {
			model = "c_c_cupcake06x",
			bone = "CP_Belly",
			position = vector3(0.07, 0.45, 0.30),
			rotation = vector3(0, 0, 0)
		
		},
		animation = {
			dict = "amb_camp@world_camp_jack_es_seat_chair_table@eating@fork_knife@chewing@male_a@trans",
			name = "chewing_trans_chewing_06",
			flag = 25
		}
	},
	["cdessert9"] = {
		type = "prop",
		name = "cdessert9",
		prop1 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop2 = {
			model = "c_c_cupcake06x",
			bone = "CP_Belly",
			position = vector3(0.07, 0.45, 0.42),
			rotation = vector3(0, 0, 0)
		
		},
		animation = {
			dict = "amb_camp@world_camp_jack_es_seat_chair_table@eating@fork_knife@chewing@male_a@trans",
			name = "chewing_trans_chewing_06",
			flag = 25
		}
	},
	["dessert10"] = {
		type = "prop",
		name = "dessert10",
		prop1 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop2 = {
			model = "c_c_cupcake07x",
			bone = "CP_Belly",
			position = vector3(0.07, 0.45, 0.30),
			rotation = vector3(0, 0, 0)
		
		},
		animation = {
			dict = "amb_camp@world_camp_jack_es_seat_chair_table@eating@fork_knife@chewing@male_a@trans",
			name = "chewing_trans_chewing_06",
			flag = 25
		}
	},
	["cdessert10"] = {
		type = "prop",
		name = "cdessert10",
		prop1 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop2 = {
			model = "c_c_cupcake07x",
			bone = "CP_Belly",
			position = vector3(0.07, 0.45, 0.42),
			rotation = vector3(0, 0, 0)
		
		},
		animation = {
			dict = "amb_camp@world_camp_jack_es_seat_chair_table@eating@fork_knife@chewing@male_a@trans",
			name = "chewing_trans_chewing_06",
			flag = 25
		}
	},
	["dessert11"] = {
		type = "prop",
		name = "dessert11",
		prop1 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop2 = {
			model = "c_c_cupcake08x",
			bone = "CP_Belly",
			position = vector3(0.07, 0.45, 0.30),
			rotation = vector3(0, 0, 0)
		
		},
		animation = {
			dict = "amb_camp@world_camp_jack_es_seat_chair_table@eating@fork_knife@chewing@male_a@trans",
			name = "chewing_trans_chewing_06",
			flag = 25
		}
	},
	["cdessert11"] = {
		type = "prop",
		name = "cdessert11",
		prop1 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop2 = {
			model = "c_c_cupcake08x",
			bone = "CP_Belly",
			position = vector3(0.07, 0.45, 0.42),
			rotation = vector3(0, 0, 0)
		
		},
		animation = {
			dict = "amb_camp@world_camp_jack_es_seat_chair_table@eating@fork_knife@chewing@male_a@trans",
			name = "chewing_trans_chewing_06",
			flag = 25
		}
	},
	["dessert12"] = {
		type = "prop",
		name = "dessert12",
		prop1 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop2 = {
			model = "c_c_cupcake09x",
			bone = "CP_Belly",
			position = vector3(0.07, 0.45, 0.30),
			rotation = vector3(0, 0, 0)
		
		},
		animation = {
			dict = "amb_camp@world_camp_jack_es_seat_chair_table@eating@fork_knife@chewing@male_a@trans",
			name = "chewing_trans_chewing_06",
			flag = 25
		}
	},
	["cdessert12"] = {
		type = "prop",
		name = "cdessert12",
		prop1 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop2 = {
			model = "c_c_cupcake09x",
			bone = "CP_Belly",
			position = vector3(0.07, 0.45, 0.42),
			rotation = vector3(0, 0, 0)
		
		},
		animation = {
			dict = "amb_camp@world_camp_jack_es_seat_chair_table@eating@fork_knife@chewing@male_a@trans",
			name = "chewing_trans_chewing_06",
			flag = 25
		}
	},
	["dessert13"] = {
		type = "prop",
		name = "dessert13",
		prop1 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop2 = {
			model = "c_c_cupcake10x",
			bone = "CP_Belly",
			position = vector3(0.07, 0.45, 0.30),
			rotation = vector3(0, 0, 0)
		
		},
		animation = {
			dict = "amb_camp@world_camp_jack_es_seat_chair_table@eating@fork_knife@chewing@male_a@trans",
			name = "chewing_trans_chewing_06",
			flag = 25
		}
	},
	["cdessert13"] = {
		type = "prop",
		name = "dessert13",
		prop1 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop2 = {
			model = "c_c_cupcake10x",
			bone = "CP_Belly",
			position = vector3(0.07, 0.45, 0.42),
			rotation = vector3(0, 0, 0)
		
		},
		animation = {
			dict = "amb_camp@world_camp_jack_es_seat_chair_table@eating@fork_knife@chewing@male_a@trans",
			name = "chewing_trans_chewing_06",
			flag = 25
		}
	},
	["dinner3"] = {
		type = "prop",
		name = "dinner3",
		prop1 = {
			model = "p_knife04x",
			bone = "MH_R_Finger11",
			position = vector3(0,-0.03, 0),
			rotation = vector3(31, 182, -87)
		},
		
		prop2 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop3 = {
			model = "p_friedcatfish01x",
			bone = "CP_Belly",
			position = vector3(0.07, 0.51, 0.34),
			rotation = vector3(0, 0, 0)
		},
		prop4 = {
			model = "p_dinnerplate01x",
			bone = "CP_Belly",
			position = vector3(0.07, 0.51, 0.34),
			rotation = vector3(0, 0, 0)
		},
		animation = {
			dict = "amb_rest_sit@prop_human_seat_chair_table@eating@fork_knife@cutting@female_a@base",
			name = "cutting_trans_chewing_01",
			flag = 25
		}
	},
	["cdinner3"] = {
		type = "prop",
		name = "cdinner3",
		prop1 = {
			model = "p_knife04x",
			bone = "MH_R_Finger11",
			position = vector3(0,-0.03, 0),
			rotation = vector3(31, 182, -87)
		},
		
		prop2 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop3 = {
			model = "p_friedcatfish01x",
			bone = "CP_Belly",
			position = vector3(0.07, 0.51, 0.42),
			rotation = vector3(0, 0, 0)
		},
		animation = {
			dict = "amb_rest_sit@prop_human_seat_chair_table@eating@fork_knife@cutting@female_a@base",
			name = "cutting_trans_chewing_01",
			flag = 25
		}
	},
	["dinner4"] = {
		type = "prop",
		name = "dinner4",
		prop1 = {
			model = "p_knife04x",
			bone = "MH_R_Finger11",
			position = vector3(0,-0.03, 0),
			rotation = vector3(31, 182, -87)
		},
		
		prop2 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop3 = {
			model = "p_food03x",
			bone = "CP_Belly",
			position = vector3(-0.05, 0.6, 0.3),
			rotation = vector3(0, 0, 0)
		},
		animation = {
			dict = "amb_rest_sit@prop_human_seat_chair_table@eating@fork_knife@cutting@female_a@base",
			name = "cutting_trans_chewing_01",
			flag = 25
		}
	},
	["cdinner4"] = {
		type = "prop",
		name = "dinner4",
		prop1 = {
			model = "p_knife04x",
			bone = "MH_R_Finger11",
			position = vector3(0,-0.03, 0),
			rotation = vector3(31, 182, -87)
		},
		
		prop2 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop3 = {
			model = "p_food03x",
			bone = "CP_Belly",
			position = vector3(0.06, 0.5, 0.42),
			rotation = vector3(0, 0, 0)
		},
		animation = {
			dict = "amb_rest_sit@prop_human_seat_chair_table@eating@fork_knife@cutting@female_a@base",
			name = "cutting_trans_chewing_01",
			flag = 25
		}
	},
	["breakfast"] = {
		type = "prop",
		name = "breakfast",
		prop1 = {
			model = "p_oatmeal_spoon01x",
			bone = "SKEL_R_Finger11",
			position = vector3(0, -0.03, -0.05),
			rotation = vector3(-223, 41, 181)
		},
		
		prop2 = {
			model = "p_crackedwheatmilk01x",
			bone = "CP_Belly",
			position = vector3(0.07, 0.39, 0.2),
			rotation = vector3(0, 0, 0)
		
		},
		animation = {
			dict = "amb_camp@prop_camp_seat_chair_stew@eating@female_a@idle_c",
			name = "idle_h",
			flag = 25
		}
	},
	["dessert2"] = {
		type = "prop",
		name = "desesrt2",
		prop1 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop2 = {
			model = "raspberrycake",
			bone = "CP_Belly",
			position = vector3(0.07, 0.50, 0.35),
			rotation = vector3(0, 0, 0)
		
		},
		animation = {
			dict = "amb_camp@world_camp_jack_es_seat_chair_table@eating@fork_knife@chewing@male_a@trans",
			name = "chewing_trans_chewing_06",
			flag = 25
		}
	},
	["cdessert2"] = {
		type = "prop",
		name = "cdessert2",
		prop1 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop2 = {
			model = "raspberrycake",
			bone = "CP_Belly",
			position = vector3(0.07, 0.50, 0.42),
			rotation = vector3(0, 0, 0)
		
		},
		animation = {
			dict = "amb_camp@world_camp_jack_es_seat_chair_table@eating@fork_knife@chewing@male_a@trans",
			name = "chewing_trans_chewing_06",
			flag = 25
		}
	},
	["dessert3"] = {
		type = "prop",
		name = "dessert3",
		prop1 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop2 = {
			model = "c_p_pieslice01x",
			bone = "CP_Belly",
			position = vector3(0.15, 0.45, 0.26),
			rotation = vector3(0, 0, 0)
		
		},
		animation = {
			dict = "amb_camp@world_camp_jack_es_seat_chair_table@eating@fork_knife@chewing@male_a@trans",
			name = "chewing_trans_chewing_06",
			flag = 25
		}
	},
	["cdessert3"] = {
		type = "prop",
		name = "cdessert3",
		prop1 = {
			model = "p_dinnerfork01x",
			bone = "MH_L_Finger11",
			position = vector3(0, 0, 0),
			rotation = vector3(-40, 117, -135)
		},
		
		prop2 = {
			model = "c_p_pieslice01x",
			bone = "CP_Belly",
			position = vector3(0.15, 0.45, 0.35),
			rotation = vector3(0, 0, 0)
		
		},
		animation = {
			dict = "amb_camp@world_camp_jack_es_seat_chair_table@eating@fork_knife@chewing@male_a@trans",
			name = "chewing_trans_chewing_06",
			flag = 25
		}
	},
	["dessert1"] = {
		type = "prop",
		name = "dessert1",
		prop1 = {
			model = "p_oatmeal_spoon01x",
			bone = "SKEL_R_Finger11",
			position = vector3(0, -0.03, -0.05),
			rotation = vector3(-223, 41, 181)
		},
		
		prop2 = {
			model = "sundae",
			bone = "CP_Belly",
			position = vector3(0.07, 0.49, 0.5),
			rotation = vector3(0, 0, 0)
		
		},
		animation = {
			dict = "amb_camp@prop_camp_seat_chair_stew@eating@female_a@idle_c",
			name = "idle_h",
			flag = 25
		}
	},
	["dogbone"] = {
		type = "prop",
		name = "Dog Bone",
		prop1 = {
			model = "p_dogbone01x",
			bone = "skel_head",
			position = vector3(0.18, 0.02, 0.0),
			rotation = vector3(0.0, 90.0, 0.0)
		}
	},
	["dogchewbone"] = {
		type = "prop",
		name = "Chew on Bone",
		prop1 = {
			model = "p_dogbone01x",
			bone = "skel_head",
			position = vector3(0.18, 0.02, 0.0),
			rotation = vector3(0.0, 90.0, 0.0)
		},
		animation = {
			dict = "amb_creature_mammal@prop_dog_eat_bone@base",
			name = "base",
			flag = 1
		}
	},
	["fan"] = {
		type = "prop",
		name = "Fan (right hand)",
		prop1 = {
			model = "p_cs_fan01x",
			bone = "skel_r_hand",
			position = vector3(0.1, 0, -0.035),
			rotation = vector3(0, 150, -9)
		},
		animation = {
			dict = "amb_wander@code_human_fan_wander@female_a@base",
			name = "base",
			flag = 25
		}
	},
	["book"] = {
		type = "prop",
		name = "knife (right hand)",
		prop1 = {
			model = "p_cs_bookhardcv03x",
			bone = "cp_chest",
			position = vector3(0.00, 0.04, 0.10),
			rotation = vector3(1.02, 1.23, -90.09)
		},
		animation = {
			dict = "script_common@other@unapproved",
			name = "unarmed_fold_arms",
			flag = 25
		}
	},
	["Champagne"] = {
		type = "prop",
		name = "Fan (left hand)",
		prop1 = {
			model = "p_glass001x",
			bone = "IK_R_Hand",
			position = vector3(0.03, 0.23, 0.4),
			rotation = vector3(0, 0, 0)
		},
		animation = {
			dict = "mech_inventory@drinking@champagne",
			name = "base",
	        flag = 25
		}
	},
	["fan2"] = {
		type = "prop",
		name = "Fan (left hand)",
		prop1 = {
			model = "p_cs_fan01x",
			bone = "skel_l_hand",
			position = vector3(0.07, 0.02, 0.04),
			rotation = vector3(-20, 0, 0)
				},
			animation = {
			dict = "amb_camp@prop_camp_marybeth_seat_chair@fan@female_a@base",
			name = "base",
			flag = 25
		}
	},
	["parasol"] = {
		type = "prop",
		name = "Parasol",
		prop1 = {
			model = "p_parasol02x",
			bone = "skel_r_hand",
			position = vector3(0.07, -0.04, -0.02),
			rotation = vector3(-90.0, 0.0, 0.0)
		},
		animation = {
			dict = "amb_rest_sit@prop_human_seat_bench@parasol@female_a@wip_base",
			name = "wip_base",
			flag = 25
		}
	}
}
