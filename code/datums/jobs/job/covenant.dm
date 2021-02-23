//Covenant

/datum/job/covenant
	selection_color = "#944FBD"
	job_category = JOB_CAT_COVENANT
	faction = FACTION_COVENANT

/datum/job/covenant/sangheili/

/datum/job/covenant/sangheili/return_spawn_type(datum/preferences/prefs)
	if(prefs && prefs.species == "Sangheili")
		return /mob/living/carbon/human/species/covenant/sangheili


/datum/job/covenant/sangheili/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"\nYou are a Sangheili enlisted in the Covenant. You enforce the prophet's will and act as their hand throughout the galaxy."})


/datum/job/covenant/sangheili/minor
	title = "Sangheili Minor"
	comm_title = "Sangheili Minor"
	access = list(ACCESS_COVENANT, ACCESS_COVENANT_SANGMINOR, ACCESS_MARINE_DROPSHIP)
	minimal_access = list(ACCESS_COVENANT, ACCESS_COVENANT_SANGMINOR, ACCESS_MARINE_DROPSHIP)
	max_positions = -1 //infinite
	supervisors = "Sangheili Officer, Sangheili Ultra, Sangheili General"
	outfit = /datum/outfit/job/covenant/sangheili/minor
	display_order = JOB_DISPLAY_ORDER_COVENANT_SANG_MINOR
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST|JOB_FLAG_PROVIDES_SQUAD_HUD


/datum/job/covenant/sangheili/ranger
	title = "Sangheili Ranger"
	comm_title = "Sangheili Ranger"
	access = list(ACCESS_COVENANT, ACCESS_COVENANT_SANGRANGER, ACCESS_MARINE_DROPSHIP)
	minimal_access = list(ACCESS_COVENANT, ACCESS_COVENANT_SANGRANGER, ACCESS_MARINE_DROPSHIP)//might cause troubles in the future, making this have access_covenant
	max_positions = -1
	supervisors = "Sangheili Officer, Sangheili Ultra, Sangheili General"
	outfit = /datum/outfit/job/covenant/sangheili/ranger
	display_order = JOB_DISPLAY_ORDER_COVENANT_SANG_RANGER
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST|JOB_FLAG_PROVIDES_SQUAD_HUD


/datum/job/covenant/sangheili/officer
	title = "Sangheili Officer"
	comm_title = "Sangheili Officer"
	access = list(ACCESS_COVENANT, ACCESS_COVENANT_SANGOFFICER, ACCESS_MARINE_DROPSHIP)
	minimal_access = list(ACCESS_COVENANT,ACCESS_COVENANT_SANGOFFICER, ACCESS_MARINE_DROPSHIP)
	max_positions = -1
	supervisors = "Sangheili Ultra, Sangheili General"
	display_order = JOB_DISPLAY_ORDER_COVENANT_SANG_OFFICER
	outfit = /datum/outfit/job/covenant/sangheili/officer
	skills_type = /datum/skills/SL
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST|JOB_FLAG_BOLD_NAME_ON_SELECTION|JOB_FLAG_PROVIDES_SQUAD_HUD


/datum/job/covenant/sangheili/specops
	title = "Special Operations Sangheili"
	comm_title = "Sangheili Ranger"
	access = list(ACCESS_COVENANT, ACCESS_COVENANT_SANGSPEC, ACCESS_MARINE_DROPSHIP)
	minimal_access = list(ACCESS_COVENANT, ACCESS_COVENANT_SANGSPEC, ACCESS_MARINE_DROPSHIP)
	max_positions = -1
	supervisors = "Sangheili Ultra, Sangheili General"
	outfit = /datum/outfit/job/covenant/sangheili/specops
	display_order = JOB_DISPLAY_ORDER_COVENANT_SANG_SPECOPS
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST|JOB_FLAG_PROVIDES_SQUAD_HUD

/datum/job/covenant/sangheili/ultra
	title = "Sangheili Ultra"
	comm_title = "Sangheili Ultra"
	access = list(ACCESS_COVENANT, ACCESS_COVENANT_SANGULTRA, ACCESS_MARINE_DROPSHIP)
	minimal_access = list(ACCESS_COVENANT, ACCESS_COVENANT_SANGULTRA, ACCESS_MARINE_DROPSHIP)
	max_positions = 1
	supervisors = "Sangheili General"
	display_order = JOB_DISPLAY_ORDER_COVENANT_SANG_ULTRA
	outfit = /datum/outfit/job/covenant/sangheili/ultra
	skills_type = /datum/skills/SL
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST|JOB_FLAG_BOLD_NAME_ON_SELECTION|JOB_FLAG_PROVIDES_SQUAD_HUD

/datum/job/covenant/sangheili/general
	title = "Sangheili General"
	comm_title = "Sangheili General"
	access = list(ACCESS_COVENANT, ACCESS_COVENANT_SANGGENERAL, ACCESS_MARINE_DROPSHIP)
	minimal_access = list(ACCESS_COVENANT, ACCESS_COVENANT_SANGGENERAL, ACCESS_MARINE_DROPSHIP)
	max_positions = -1
	supervisors = ""
	display_order = JOB_DISPLAY_ORDER_COVENANT_SANG_GENERAL
	outfit = /datum/outfit/job/covenant/sangheili/general
	skills_type = /datum/skills/SL
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST|JOB_FLAG_BOLD_NAME_ON_SELECTION|JOB_FLAG_PROVIDES_SQUAD_HUD


/datum/outfit/job/covenant/sangheili/minor
	name = "Sangheili Minor"
	jobtype = /datum/job/covenant/sangheili/minor

	id = /obj/item/card/id
	ears = /obj/item/radio/headset/covenant
	w_uniform = /obj/item/clothing/under/sangheili
	shoes = /obj/item/clothing/shoes/covenant/sangheili/minor
	wear_suit = /obj/item/clothing/suit/covenant/sangheili/minor
	gloves = /obj/item/clothing/gloves/covenant/sangheili/minor
	head = /obj/item/clothing/head/covenant/sangheili/minor
	suit_store = /obj/item/weapon/gun/energy/lasgun/plasma/rifle

/datum/outfit/job/covenant/sangheili/ranger
	name = "Sangheili Ranger"
	jobtype = /datum/job/covenant/sangheili/ranger

	id = /obj/item/card/id
	ears = /obj/item/radio/headset/covenant
	w_uniform = /obj/item/clothing/under/sangheili
	shoes = /obj/item/clothing/shoes/covenant/sangheili/ranger
	wear_suit = /obj/item/clothing/suit/covenant/sangheili/ranger
	gloves = /obj/item/clothing/gloves/covenant/sangheili/ranger
	head = /obj/item/clothing/head/covenant/sangheili/ranger
	suit_store = /obj/item/weapon/gun/energy/lasgun/plasma/rifle

/datum/outfit/job/covenant/sangheili/officer
	name = "Sangheili Officer"
	jobtype = /datum/job/covenant/sangheili/officer

	id = /obj/item/card/id
	ears = /obj/item/radio/headset/covenant
	w_uniform = /obj/item/clothing/under/sangheili
	shoes = /obj/item/clothing/shoes/covenant/sangheili/officer
	wear_suit = /obj/item/clothing/suit/covenant/sangheili/officer
	gloves = /obj/item/clothing/gloves/covenant/sangheili/officer
	head = /obj/item/clothing/head/covenant/sangheili/officer
	suit_store = /obj/item/weapon/gun/energy/lasgun/plasma/rifle
	r_store = /obj/item/weapon/energy/sword/covenant

/datum/outfit/job/covenant/sangheili/specops
	name = "Sangheili Special Operations"
	jobtype = /datum/job/covenant/sangheili/specops

	id = /obj/item/card/id
	ears = /obj/item/radio/headset/covenant
	w_uniform = /obj/item/clothing/under/sangheili
	shoes = /obj/item/clothing/shoes/covenant/sangheili/specops
	wear_suit = /obj/item/clothing/suit/covenant/sangheili/specops
	gloves = /obj/item/clothing/gloves/covenant/sangheili/specops
	head = /obj/item/clothing/head/covenant/sangheili/specops
	suit_store = /obj/item/weapon/gun/energy/lasgun/plasma/rifle

/datum/outfit/job/covenant/sangheili/ultra
	name = "Sangheili Ultra"
	jobtype = /datum/job/covenant/sangheili/ultra

	id = /obj/item/card/id
	ears = /obj/item/radio/headset/covenant
	w_uniform = /obj/item/clothing/under/sangheili
	shoes = /obj/item/clothing/shoes/covenant/sangheili/ultra
	wear_suit = /obj/item/clothing/suit/covenant/sangheili/ultra
	gloves = /obj/item/clothing/gloves/covenant/sangheili/ultra
	head = /obj/item/clothing/head/covenant/sangheili/ultra
	suit_store = /obj/item/weapon/gun/energy/lasgun/plasma/rifle
	r_store = /obj/item/weapon/energy/sword/covenant

/datum/outfit/job/covenant/sangheili/general
	name = "Sangheili General"
	jobtype = /datum/job/covenant/sangheili/general

	id = /obj/item/card/id
	ears = /obj/item/radio/headset/covenant
	w_uniform = /obj/item/clothing/under/sangheili
	shoes = /obj/item/clothing/shoes/covenant/sangheili/general
	wear_suit = /obj/item/clothing/suit/covenant/sangheili/general
	gloves = /obj/item/clothing/gloves/covenant/sangheili/general
	head = /obj/item/clothing/head/covenant/sangheili/general
	suit_store = /obj/item/weapon/gun/energy/lasgun/plasma/rifle
	r_store = /obj/item/weapon/energy/sword/covenant

/datum/job/covenant/kigyar
	selection_color = "#944FBD"
	job_category = JOB_CAT_COVENANT
	faction = FACTION_COVENANT

/datum/job/covenant/kigyar

/datum/job/covenant/kigyar/return_spawn_type(datum/preferences/prefs)
	if(prefs && prefs.species == "Kig-Yar")
		return /mob/living/carbon/human/species/covenant/sangheili


/datum/job/covenant/kigyar/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"\nYou are a Kig-Yar within the offensive wing of the Covenant Empire. You are an expert in marksmanship, and excel with defensive tactics."})

datum/job/covenant/kigyar
	title = "Kig-Yar Trooper"
	comm_title = "Kig.Minor"
	access = list(ACCESS_COVENANT, ACCESS_COVENANT_SANGMINOR, ACCESS_MARINE_DROPSHIP)
	minimal_access = list(ACCESS_COVENANT, ACCESS_COVENANT_KIGYAR, ACCESS_MARINE_DROPSHIP)
	max_positions = -1 //infinite
	supervisors = "Sangheili"
	outfit = /datum/outfit/job/covenant/kigyar
	display_order = JOB_DISPLAY_ORDER_COVENANT_KIGYAR
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST|JOB_FLAG_PROVIDES_SQUAD_HUD

/datum/outfit/job/covenant/kigyar
	name = "Kig-Yar Trooper"
	jobtype = /datum/job/covenant/kigyar

	id = /obj/item/card/id
	ears = /obj/item/radio/headset/covenant
	w_uniform = /obj/item/clothing/under/kigyar
	shoes = /obj/item/clothing/shoes/covenant/kigyar
	wear_suit = /obj/item/clothing/suit/kigyar
	head = /obj/item/clothing/head/helmet/marine/kigyar



