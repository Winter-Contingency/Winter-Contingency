// jobs for WC

//UNSC

/datum/job/unsc/marine/
	selection_color = "#57994e"
	job_category = JOB_CAT_UNSC

/datum/job/unsc/marine/basic
	title = "UNSC Marine"
	paygrade = "E2"
	comm_title = "Mar"
	access = list(ACCESS_UNSC_MARINE)
	minimal_access = list(ACCESS_UNSC_MARINE, ACCESS_MARINE_DROPSHIP)
	faction = FACTION_UNSC
	max_positions = -1 //infinite
	supervisors = "squad leader"
	outfit = /datum/outfit/job/unsc
	display_order = JOB_DISPLAY_ORDER_UNSC_MARINE
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST|JOB_FLAG_PROVIDES_SQUAD_HUD


/datum/job/unsc/marine/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"\nYou are a marine in the esteemed United Nations Space Command. You enforce order and maintain peace across the galaxy."})

/datum/job/unsc/marine/medic
	title = "UNSC Combat Medic"
	paygrade = "E3"
	comm_title = "Med"
	access = list(ACCESS_UNSC_MARINE, ACCESS_UNSC_MEDIC, ACCESS_MARINE_DROPSHIP, ACCESS_MARINE_MEDPREP, ACCESS_MARINE_MEDBAY)
	minimal_access = list(ACCESS_UNSC_MARINE, ACCESS_UNSC_MEDIC, ACCESS_MARINE_DROPSHIP, ACCESS_MARINE_MEDPREP, ACCESS_MARINE_MEDBAY)
	max_positions = 6
	supervisors = "squad leader"
	outfit = /datum/outfit/job/unsc/medic
	skills_type = /datum/skills/combat_medic
	display_order = JOB_DISPLAY_ORDER_UNSC_MEDIC
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST|JOB_FLAG_PROVIDES_SQUAD_HUD

/datum/job/unsc/marine/medic/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"\nKeep your fellow marines combat ready and make sure your squad is functional."})


/datum/job/unsc/marine/engineer
	title = "UNSC Combat Engineer"
	paygrade = "E3"
	comm_title = "Engi"
	access = list(ACCESS_UNSC_MARINE, ACCESS_UNSC_ENGINEER, ACCESS_MARINE_DROPSHIP, ACCESS_MARINE_ENGPREP, ACCESS_MARINE_ENGINEERING)
	minimal_access = list(ACCESS_UNSC_MARINE, ACCESS_UNSC_ENGINEER, ACCESS_MARINE_DROPSHIP, ACCESS_MARINE_ENGPREP, ACCESS_MARINE_ENGINEERING)
	max_positions = 6
	supervisors = "squad leader"
	outfit = /datum/outfit/job/unsc/engineer
	skills_type = /datum/skills/combat_engineer
	display_order = JOB_DISPLAY_ORDER_UNSC_ENGINEER
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST|JOB_FLAG_PROVIDES_SQUAD_HUD

/datum/job/unsc/marine/engineer/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"\nSupport your squad with controlled demolitions and construct barricades to assist."})


/datum/job/unsc/marine/leader
	title = "UNSC Squad Leader"
	paygrade = "E6"
	comm_title = "SL"
	access = list(ACCESS_UNSC_MARINE, ACCESS_UNSC_LEADER)
	minimal_access = list(ACCESS_UNSC_MARINE, ACCESS_UNSC_LEADER, ACCESS_MARINE_DROPSHIP)
	max_positions = 1
	supervisors = "commanding officer"
	display_order = JOB_DISPLAY_ORDER_UNSC_LEADER
	outfit = /datum/outfit/job/unsc/leader
	skills_type = /datum/skills/SL
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST|JOB_FLAG_BOLD_NAME_ON_SELECTION|JOB_FLAG_PROVIDES_SQUAD_HUD


/datum/job/unsc/marine/leader/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"\nYou are an NCO in the UNSC, charged with leading a squad of marines. Keep your unit cohesive, and make sure everyone escapes with their lives."})

//UNSC Marine outfits

/datum/outfit/job/unsc
	name = "UNSC Marine"
	jobtype = /datum/job/unsc/marine/basic
	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/unsc
	back = /obj/item/storage/backpack/marine/satchel

/datum/outfit/job/unsc/medic
	name = "UNSC Combat Medic"
	jobtype = /datum/job/unsc/marine/medic
	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/unsc
	back = /obj/item/storage/backpack/marine/corpsman

/datum/outfit/job/unsc/engineer
	name = "UNSC Combat Engineer"
	jobtype = /datum/job/unsc/marine/engineer
	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/unsc
	back = /obj/item/storage/backpack/marine/engineerpack

/datum/outfit/job/unsc/leader
	name = "UNSC Squad Leader"
	jobtype = /datum/job/unsc/marine/leader
	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/unsc
	back = /obj/item/storage/backpack/marine/satchel

//ODST

/datum/job/unsc/odst/
	selection_color = "#3e6e38"
	job_category = JOB_CAT_ODST

/datum/job/unsc/odst/rifleman
	title = "ODST Rifleman"
	paygrade = "E2"
	comm_title = "ODST-RFL"
	access = list(ACCESS_UNSC_MARINE, ACCESS_ODST, ACCESS_ODST_RIFLEMAN, ACCESS_MARINE_DROPSHIP)
	minimal_access = list(ACCESS_UNSC_MARINE, ACCESS_ODST, ACCESS_ODST_RIFLEMAN, ACCESS_MARINE_DROPSHIP)
	faction = FACTION_UNSC
	max_positions = 1
	supervisors = "ODST Squad Leader"
	outfit = /datum/outfit/job/odst/rifleman
	display_order = JOB_DISPLAY_ORDER_ODST_RIFLEMAN
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST|JOB_FLAG_PROVIDES_SQUAD_HUD

/datum/job/unsc/odst/rifleman/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"\nYou are a ODST Medic in the esteemed United Nations Space Command. You enforce order and maintain peace across the galaxy."})

/datum/job/unsc/odst/engineer
	title = "ODST Engineer"
	paygrade = "E3"
	comm_title = "ODST-ENGI"
	access = list(ACCESS_UNSC_MARINE, ACCESS_ODST, ACCESS_ODST_ENGINEER, ACCESS_MARINE_DROPSHIP)
	minimal_access = list(ACCESS_UNSC_MARINE, ACCESS_ODST, ACCESS_ODST_ENGINEER, ACCESS_MARINE_DROPSHIP)
	faction = FACTION_UNSC
	max_positions = 1
	supervisors = "ODST Squad Leader"
	outfit = /datum/outfit/job/odst/engineer
	display_order = JOB_DISPLAY_ORDER_ODST_ENGINEER
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST|JOB_FLAG_PROVIDES_SQUAD_HUD

/datum/job/unsc/odst/engineer/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"\nYou are a ODST Engineer in the esteemed United Nations Space Command. You enforce order and maintain peace across the galaxy."})

/datum/job/unsc/odst/medic
	title = "ODST Medic"
	paygrade = "E3"
	comm_title = "ODST-MED"
	access = list(ACCESS_UNSC_MARINE, ACCESS_ODST, ACCESS_ODST_MEDIC, ACCESS_MARINE_DROPSHIP)
	minimal_access = list(ACCESS_UNSC_MARINE, ACCESS_ODST, ACCESS_ODST_MEDIC, ACCESS_MARINE_DROPSHIP)
	faction = FACTION_UNSC
	max_positions = 1
	supervisors = "ODST Squad Leader"
	outfit = /datum/outfit/job/odst/medic
	display_order = JOB_DISPLAY_ORDER_ODST_MEDIC
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST|JOB_FLAG_PROVIDES_SQUAD_HUD

/datum/job/unsc/odst/medic/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"\nYou are a ODST Medic in the esteemed United Nations Space Command. You enforce order and maintain peace across the galaxy."})


/datum/job/unsc/odst/cqc
	title = "ODST CQC Specialist"
	paygrade = "E2"
	comm_title = "ODST-CQC"
	access = list(ACCESS_UNSC_MARINE, ACCESS_ODST, ACCESS_ODST_CQC, ACCESS_MARINE_DROPSHIP)
	minimal_access = list(ACCESS_UNSC_MARINE, ACCESS_ODST, ACCESS_ODST_CQC, ACCESS_MARINE_DROPSHIP)
	faction = FACTION_UNSC
	max_positions = 1
	supervisors = "ODST Squad Leader"
	outfit = /datum/outfit/job/odst/cqc
	display_order = JOB_DISPLAY_ORDER_ODST_CQC
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST|JOB_FLAG_PROVIDES_SQUAD_HUD

/datum/job/unsc/odst/cqc/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"\nYou are a ODST CQC Specialist in the esteemed United Nations Space Command. You enforce order and maintain peace across the galaxy."})

/datum/job/unsc/odst/sniper
	title = "ODST Sniper"
	paygrade = "E2"
	comm_title = "ODST-SNPR"
	access = list(ACCESS_UNSC_MARINE, ACCESS_ODST, ACCESS_ODST_SNIPER, ACCESS_MARINE_DROPSHIP)
	minimal_access = list(ACCESS_UNSC_MARINE, ACCESS_ODST, ACCESS_ODST_SNIPER, ACCESS_MARINE_DROPSHIP)
	faction = FACTION_UNSC
	max_positions = 1
	supervisors = "ODST Squad Leader"
	outfit = /datum/outfit/job/odst/sniper
	display_order = JOB_DISPLAY_ORDER_ODST_SNIPER
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST|JOB_FLAG_PROVIDES_SQUAD_HUD

/datum/job/unsc/odst/sniper/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"\nYou are a ODST Sniper in the esteemed United Nations Space Command. You enforce order and maintain peace across the galaxy."})

/datum/job/unsc/odst/sl
	title = "ODST Squad Leader"
	paygrade = "E6"
	comm_title = "ODST-SL"
	access = list(ACCESS_UNSC_MARINE, ACCESS_ODST, ACCESS_ODST_SQUADLEADER, ACCESS_MARINE_DROPSHIP)
	minimal_access = list(ACCESS_UNSC_MARINE, ACCESS_ODST, ACCESS_ODST_SQUADLEADER, ACCESS_MARINE_DROPSHIP)
	faction = FACTION_UNSC
	max_positions = 1
	supervisors = "ODST Squad Leader"
	outfit = /datum/outfit/job/odst/sl
	display_order = JOB_DISPLAY_ORDER_ODST_SQUADLEADER
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST|JOB_FLAG_PROVIDES_SQUAD_HUD

/datum/job/unsc/odst/sl/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"\nYou are a ODST Squad Leader in the esteemed United Nations Space Command. You command the rest of the ODSTs."})



//ODST outfits

/datum/outfit/job/odst/rifleman
	name = "ODST Rifleman"
	jobtype = /datum/job/unsc/odst/rifleman
	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/odst
	back = /obj/item/storage/backpack/odst

/datum/outfit/job/odst/sniper
	name = "ODST Sniper"
	jobtype = /datum/job/unsc/odst/sniper
	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/odst
	back = /obj/item/storage/backpack/odst/sniper

/datum/outfit/job/odst/cqc
	name = "ODST CQC Specialist"
	jobtype = /datum/job/unsc/odst/sniper
	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/odst
	back = /obj/item/storage/backpack/odst/cqc

/datum/outfit/job/odst/medic
	name = "ODST Medic"
	jobtype = /datum/job/unsc/odst/medic
	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/odst
	back = /obj/item/storage/backpack/odst/medic

/datum/outfit/job/odst/engineer
	name = "ODST Engineer"
	jobtype = /datum/job/unsc/odst/engineer
	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/odst
	back = /obj/item/storage/backpack/odst/engi

/datum/outfit/job/odst/sl
	name = "ODST Squad Leader"
	jobtype = /datum/job/unsc/odst/sl
	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/odst
	back = /obj/item/storage/backpack/odst/sl

//Innies

/datum/job/insurrectionist
	selection_color = "#ff5757"
	job_category = JOB_CAT_INSURRECTION

/datum/job/insurrectionist/basic
	title = "Insurrectionist Fighter"
	paygrade = "INS"
	comm_title = "Ins"
	access = list(ACCESS_INSURRECTIONIST_SOLDIER)
	minimal_access = list(ACCESS_INSURRECTIONIST_SOLDIER)
	faction = FACTION_INSURRECTION
	max_positions = -1 //infinite
	supervisors = "squad leader"
	outfit = /datum/outfit/job/insurrection
	display_order = JOB_DISPLAY_ORDER_INSURRECTIONIST
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST


/datum/job/insurrectionist/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"\nYou are an insurrectionist, fighting the tyranny of the UNSC. Avenge Far Isle."})

/datum/job/insurrectionist/medic
	title = "Insurrectionist Bonesetter"
	paygrade = "INS"
	comm_title = "Med"
	access = list(ACCESS_INSURRECTIONIST_SOLDIER, ACCESS_INSURRECTIONIST_MEDIC)
	minimal_access = list(ACCESS_INSURRECTIONIST_SOLDIER, ACCESS_INSURRECTIONIST_MEDIC)
	max_positions = 6
	supervisors = "squad leader"
	outfit = /datum/outfit/job/insurrection/medic
	skills_type = /datum/skills/combat_medic
	display_order = JOB_DISPLAY_ORDER_INSURRECTIONIST_MEDIC
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST


/datum/job/insurrectionist/medic/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"\nYou are a well-respected insurrectionist bonesetter. Aid your brothers in combat and keep them fighting."})


/datum/job/insurrectionist/engineer
	title = "Insurrectionist Sapper"
	paygrade = "INS"
	comm_title = "Engi"
	access = list(ACCESS_INSURRECTIONIST_SOLDIER, ACCESS_INSURRECTIONIST_ENGINEER)
	minimal_access = list(ACCESS_INSURRECTIONIST_SOLDIER, ACCESS_INSURRECTIONIST_ENGINEER)
	max_positions = 6
	supervisors = "squad leader"
	outfit = /datum/outfit/job/insurrection/engineer
	skills_type = /datum/skills/combat_engineer
	display_order = JOB_DISPLAY_ORDER_INSURRECTIONIST_ENGINEER
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST

/datum/job/insurrectionist/engineer/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"\nYou are a crafty insurrectionist sapper. Help your brothers by using explosives and constructing barricades."})


/datum/job/insurrectionist/leader
	title = "Insurrectionist Warlord"
	paygrade = "INSL"
	comm_title = "Warlord"
	access = list(ACCESS_INSURRECTIONIST_SOLDIER, ACCESS_INSURRECTIONIST_LEADER)
	minimal_access = list(ACCESS_INSURRECTIONIST_SOLDIER, ACCESS_INSURRECTIONIST_LEADER, ACCESS_MARINE_DROPSHIP)
	max_positions = 1
	supervisors = ""
	display_order = JOB_DISPLAY_ORDER_INSURRECTIONIST_LEADER
	outfit = /datum/outfit/job/insurrection/leader
	skills_type = /datum/skills/SL
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST|JOB_FLAG_BOLD_NAME_ON_SELECTION


/datum/job/insurrectionist/leader/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"\nYou are an insurrectionist warlord. Lead your squad against the UNSC, and maintain unit cohesion."})

//Innie outfits

/datum/outfit/job/insurrection
	name = "Insurrectionist"
	jobtype = /datum/job/insurrectionist/basic
	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/innie
	back = /obj/item/storage/backpack/lightpack

/datum/outfit/job/insurrection/medic
	name = "Insurrectionist Bonesetter"
	jobtype = /datum/job/insurrectionist/medic
	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/innie
	back = /obj/item/storage/backpack/lightpack

/datum/outfit/job/insurrection/engineer
	name = "Insurrectionist Sapper"
	jobtype = /datum/job/insurrectionist/engineer
	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/innie
	back = /obj/item/storage/backpack/lightpack

/datum/outfit/job/insurrection/leader
	name = "Insurrectionist Warlord"
	jobtype = /datum/job/insurrectionist/leader
	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/innie
	back = /obj/item/storage/backpack/lightpack
	l_hand = /obj/item/storage/bible/koran


//URFC

/datum/job/insurrectionist/commando/
	selection_color = "#ba3838"
	job_category = JOB_CAT_URFC

/datum/job/insurrectionist/commando/rifleman
	title = "URF Commando Rifleman"
	paygrade = "URFC"
	comm_title = "URFC-RFL"
	access = list(ACCESS_INSURRECTIONIST_SOLDIER, ACCESS_INSURRECTIONIST_ENGINEER, ACCESS_URFC_RIFLEMAN)
	minimal_access = list(ACCESS_INSURRECTIONIST_SOLDIER, ACCESS_INSURRECTIONIST_ENGINEER, ACCESS_URFC_RIFLEMAN)
	max_positions = 2
	supervisors = "URFC Commander"
	outfit = /datum/outfit/job/insurrection/commando/rifleman
	display_order = JOB_DISPLAY_ORDER_URFC_RIFLEMAN
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST

/datum/job/insurrectionist/engineer/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"\nYou are a United Rebel Front Commando rifleman. An elite soldier of the URF, do what your commander says."})

/datum/job/insurrectionist/commando/commander
	title = "URF Commando Commader"
	paygrade = "URFC-C"
	comm_title = "URFC-CDR"
	access = list(ACCESS_INSURRECTIONIST_SOLDIER, ACCESS_INSURRECTIONIST_ENGINEER, ACCESS_URFC, ACCESS_URFC_COMMANDER)
	minimal_access = list(ACCESS_INSURRECTIONIST_SOLDIER, ACCESS_INSURRECTIONIST_ENGINEER, ACCESS_URFC, ACCESS_URFC_COMMANDER)
	max_positions = 2
	supervisors = "URFC Commander"
	outfit = /datum/outfit/job/insurrection/commando/commander
	display_order = JOB_DISPLAY_ORDER_URFC_COMMANDER
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST

/datum/job/insurrectionist/commando/commander/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"\nYou are the United Rebel Front Commando Commander. You command the entire URFC force, give your men direction."})

/datum/job/insurrectionist/commando/medic
	title = "URF Commando Medic"
	paygrade = "URFC"
	comm_title = "URFC-MED"
	access = list(ACCESS_INSURRECTIONIST_SOLDIER, ACCESS_INSURRECTIONIST_ENGINEER, ACCESS_URFC, ACCESS_URFC_MEDIC)
	minimal_access = list(ACCESS_INSURRECTIONIST_SOLDIER, ACCESS_INSURRECTIONIST_ENGINEER, ACCESS_URFC, ACCESS_URFC_MEDIC)
	max_positions = 2
	supervisors = "URFC Commander"
	outfit = /datum/outfit/job/insurrection/commando/medic
	display_order = JOB_DISPLAY_ORDER_URFC_MEDIC
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST

/datum/job/insurrectionist/commando/medic/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"\nYou are a United Rebel Front Commando medic. An elite soldier of the URF, do what your commander says."})


/datum/job/insurrectionist/commando/engineer
	title = "URF Commando Engineer"
	paygrade = "URFC"
	comm_title = "URFC-ENGI"
	access = list(ACCESS_INSURRECTIONIST_SOLDIER, ACCESS_INSURRECTIONIST_ENGINEER, ACCESS_URFC, ACCESS_URFC_ENGINEER)
	minimal_access = list(ACCESS_INSURRECTIONIST_SOLDIER, ACCESS_INSURRECTIONIST_ENGINEER, ACCESS_URFC, ACCESS_URFC_ENGINEER)
	max_positions = 2
	supervisors = "URFC Commander"
	outfit = /datum/outfit/job/insurrection/commando/enigneer
	display_order = JOB_DISPLAY_ORDER_URFC_MEDIC
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST

/datum/job/insurrectionist/commando/engineer/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"\nYou are a United Rebel Front Commando engineer. An elite soldier of the URF, do what your commander says."})


/datum/job/insurrectionist/commando/cqb
	title = "URF Commando CQB"
	paygrade = "URFC"
	comm_title = "URFC-CQB"
	access = list(ACCESS_INSURRECTIONIST_SOLDIER, ACCESS_INSURRECTIONIST_ENGINEER, ACCESS_URFC, ACCESS_URFC_CQB)
	minimal_access = list(ACCESS_INSURRECTIONIST_SOLDIER, ACCESS_INSURRECTIONIST_ENGINEER, ACCESS_URFC, ACCESS_URFC_CQB)
	max_positions = 2
	supervisors = "URFC Commander"
	outfit = /datum/outfit/job/insurrection/commando/cqb
	display_order = JOB_DISPLAY_ORDER_URFC_CQB
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST

/datum/job/insurrectionist/commando/cqb/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"\nYou are a United Rebel Front Commando CQB specalist. An elite soldier of the URF, do what your commander says."})

/datum/job/insurrectionist/commando/sniper
	title = "URF Commando Sniper"
	paygrade = "URFC"
	comm_title = "URFC-SNPR"
	access = list(ACCESS_INSURRECTIONIST_SOLDIER, ACCESS_INSURRECTIONIST_ENGINEER, ACCESS_URFC, ACCESS_URFC_SNIPER)
	minimal_access = list(ACCESS_INSURRECTIONIST_SOLDIER, ACCESS_INSURRECTIONIST_ENGINEER, ACCESS_URFC, ACCESS_URFC_SNIPER)
	max_positions = 2
	supervisors = "URFC Commander"
	outfit = /datum/outfit/job/insurrection/commando/sniper
	display_order = JOB_DISPLAY_ORDER_URFC_SNIPER
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST

/datum/job/insurrectionist/commando/sniper/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"\nYou are a United Rebel Front Commando sniper. An elite soldier of the URF, do what your commander says."})

/datum/job/insurrectionist/commando/sl
	title = "URF Commando Squad Leader"
	paygrade = "URFC-SL"
	comm_title = "URFC-SL"
	access = list(ACCESS_INSURRECTIONIST_SOLDIER, ACCESS_INSURRECTIONIST_ENGINEER, ACCESS_URFC, ACCESS_URFC_SQUADLEADER)
	minimal_access = list(ACCESS_INSURRECTIONIST_SOLDIER, ACCESS_INSURRECTIONIST_ENGINEER, ACCESS_URFC, ACCESS_URFC_SQUADLEADER)
	max_positions = 2
	supervisors = "URFC Commander"
	outfit = /datum/outfit/job/insurrection/commando/sl
	display_order = JOB_DISPLAY_ORDER_URFC_SQUADLEADER
	job_flags = JOB_FLAG_LATEJOINABLE|JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_ALLOWS_PREFS_GEAR|JOB_FLAG_PROVIDES_BANK_ACCOUNT|JOB_FLAG_ADDTOMANIFEST

/datum/job/insurrectionist/commando/sl/radio_help_message(mob/M)
	. = ..()
	to_chat(M, {"\nYou are a United Rebel Front Commando squad leader. An elite soldier of the URF, do what your commander says."})

//URFC Outfits

/datum/outfit/job/insurrection/commando/rifleman
	name = "URFC Rifleman"
	jobtype = /datum/job/insurrectionist/commando/rifleman
	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/urfc
	back = /obj/item/storage/backpack/urfc_rifleman

/datum/outfit/job/insurrection/commando/enigneer
	name = "URFC Engineer"
	jobtype = /datum/job/insurrectionist/commando/engineer
	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/urfc
	back = /obj/item/storage/backpack/urfc_engi

/datum/outfit/job/insurrection/commando/medic
	name = "URFC Medic"
	jobtype = /datum/job/insurrectionist/commando/medic
	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/urfc
	back = /obj/item/storage/backpack/urfc_medic

/datum/outfit/job/insurrection/commando/sniper
	name = "URFC Sniper"
	jobtype = /datum/job/insurrectionist/commando/sniper
	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/urfc
	back = /obj/item/storage/backpack/urfc_rifleman

/datum/outfit/job/insurrection/commando/cqb
	name = "URFC CQB Specalist"
	jobtype = /datum/job/insurrectionist/commando/cqb
	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/urfc
	back = /obj/item/storage/backpack/urfc_rifleman

/datum/outfit/job/insurrection/commando/sl
	name = "URFC Squad Leader"
	jobtype = /datum/job/insurrectionist/commando/sl
	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/urfc
	back = /obj/item/storage/backpack/urfc_rifleman

/datum/outfit/job/insurrection/commando/commander
	name = "URFC Commander"
	jobtype = /datum/job/insurrectionist/commando/commander
	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/urfc
	back = /obj/item/storage/backpack/urfc_rifleman

/*

//temporarily disabled for now
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
	paygrade = "MINOR"
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
	paygrade = "RANGER"
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
	paygrade = "OFFICER"
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
	paygrade = "SPECOPS"
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
	paygrade = "ULTRA"
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
	paygrade = "GENERAL"
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
	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/unsc
	back = /obj/item/storage/backpack/marine/satchel

/datum/outfit/job/covenant/sangheili/ranger
	name = "Sangheili Ranger"
	jobtype = /datum/job/covenant/sangheili/ranger
	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/unsc
	back = /obj/item/storage/backpack/marine/satchel

/datum/outfit/job/covenant/sangheili/officer
	name = "Sangheili Officer"
	jobtype = /datum/job/covenant/sangheili/officer
	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/unsc
	back = /obj/item/storage/backpack/marine/satchel

/datum/outfit/job/covenant/sangheili/specops
	name = "Sangheili Special Operations"
	jobtype = /datum/job/covenant/sangheili/specops
	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/unsc
	back = /obj/item/storage/backpack/marine/satchel

/datum/outfit/job/covenant/sangheili/ultra
	name = "Sangheili Ultra"
	jobtype = /datum/job/covenant/sangheili/ultra
	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/unsc
	back = /obj/item/storage/backpack/marine/satchel

/datum/outfit/job/covenant/sangheili/general
	name = "Sangheili General"
	jobtype = /datum/job/covenant/sangheili/general
	id = /obj/item/card/id/dogtag
	ears = /obj/item/radio/headset/unsc
	back = /obj/item/storage/backpack/marine/satchel

*/

//GCPD

/datum/job/gcpd
	selection_color = "#d9d9d9"
	job_category = JOB_CAT_GCPD
	faction = FACTION_GCPD

/datum/job/gcpd/chief
	title = "Colonial Police Chief"
	access = list(ACCESS_CIVILIAN_PUBLIC, ACCESS_CIVILIAN_RESEARCH, ACCESS_CIVILIAN_ENGINEERING, ACCESS_CIVILIAN_LOGISTICS, ACCESS_MARINE_BRIG)
	minimal_access = list(ACCESS_CIVILIAN_PUBLIC, ACCESS_CIVILIAN_RESEARCH, ACCESS_CIVILIAN_ENGINEERING, ACCESS_CIVILIAN_LOGISTICS, ACCESS_MARINE_BRIG)
	display_order = JOB_DISPLAY_ORDER_GCPD_CHIEF
	skills_type = /datum/skills/civilian/survivor/gcpd
	faction = FACTION_GCPD
	job_flags = JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_PROVIDES_BANK_ACCOUNT
	outfit = /datum/outfit/job/gcpd/chief

/datum/job/gcpd/cop
	title = "Colonial Police Officer"
	access = list(ACCESS_CIVILIAN_PUBLIC, ACCESS_CIVILIAN_RESEARCH, ACCESS_CIVILIAN_ENGINEERING, ACCESS_CIVILIAN_LOGISTICS, ACCESS_MARINE_BRIG)
	minimal_access = list(ACCESS_CIVILIAN_PUBLIC, ACCESS_CIVILIAN_RESEARCH, ACCESS_CIVILIAN_ENGINEERING, ACCESS_CIVILIAN_LOGISTICS, ACCESS_MARINE_BRIG)
	display_order = JOB_DISPLAY_ORDER_GCPD_CHIEF
	skills_type = /datum/skills/civilian/survivor/gcpd
	faction = FACTION_GCPD
	job_flags = JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_PROVIDES_BANK_ACCOUNT
	outfit = /datum/outfit/job/gcpd/cop

/datum/outfit/job/gcpd/cop
	name = "Colonial Police Officer"
	jobtype = /datum/job/gcpd/cop

	w_uniform = /obj/item/clothing/under/marine/gcpd
	wear_suit = /obj/item/clothing/suit/storage/marine/gcpd_l
	glasses = /obj/item/clothing/glasses/hud/security/gcpd
	ears = /obj/item/radio/headset/gcpd
	shoes = /obj/item/clothing/shoes/marine/gcpd
	head = /obj/item/clothing/head/soft/gcpd
	gloves = /obj/item/clothing/gloves/marine/gcpd
	back = /obj/item/storage/backpack/satchel/gcpd
	belt = /obj/item/storage/belt/security
	l_store = /obj/item/storage/pouch/firstaid/full
	r_store = /obj/item/flash

/datum/outfit/job/gcpd/cop/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	. = ..()
	H.equip_to_slot_or_del(new /obj/item/explosive/grenade/flashbang, SLOT_IN_SUIT)
	H.equip_to_slot_or_del(new /obj/item/explosive/grenade/flashbang, SLOT_IN_SUIT)

	H.equip_to_slot_or_del(new /obj/item/weapon/gun/pistol/m6/m6b_security, SLOT_IN_BELT)
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/energy/taser, SLOT_IN_BELT)
	H.equip_to_slot_or_del(new /obj/item/weapon/baton, SLOT_IN_BELT)
	H.equip_to_slot_or_del(new /obj/item/restraints/handcuffs, SLOT_IN_BELT)
	H.equip_to_slot_or_del(new /obj/item/ammo_magazine/pistol/m6, SLOT_IN_BELT)
	H.equip_to_slot_or_del(new /obj/item/ammo_magazine/pistol/m6, SLOT_IN_BELT)

/datum/outfit/job/gcpd/chief
	name = "Colonial Police Chief"
	jobtype = /datum/job/gcpd/chief

	w_uniform = /obj/item/clothing/under/marine/gcpd
	wear_suit = /obj/item/clothing/suit/storage/marine/gcpd
	glasses = /obj/item/clothing/glasses/hud/security/gcpd
	ears = /obj/item/radio/headset/gcpd
	shoes = /obj/item/clothing/shoes/marine/gcpd
	head = /obj/item/clothing/head/helmet/marine/gcpd
	gloves = /obj/item/clothing/gloves/marine/gcpd
	back = /obj/item/storage/backpack/satchel/gcpd
	belt = /obj/item/storage/belt/security
	l_store = /obj/item/storage/pouch/firstaid/full
	r_store = /obj/item/flash

/datum/outfit/job/gcpd/chief/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	. = ..()
	H.equip_to_slot_or_del(new /obj/item/explosive/grenade/flashbang, SLOT_IN_SUIT)
	H.equip_to_slot_or_del(new /obj/item/explosive/grenade/flashbang, SLOT_IN_SUIT)

	H.equip_to_slot_or_del(new /obj/item/weapon/gun/pistol/m6/m6b_security, SLOT_IN_BELT)
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/energy/taser, SLOT_IN_BELT)
	H.equip_to_slot_or_del(new /obj/item/weapon/baton, SLOT_IN_BELT)
	H.equip_to_slot_or_del(new /obj/item/restraints/handcuffs, SLOT_IN_BELT)
	H.equip_to_slot_or_del(new /obj/item/ammo_magazine/pistol/m6, SLOT_IN_BELT)
	H.equip_to_slot_or_del(new /obj/item/ammo_magazine/pistol/m6, SLOT_IN_BELT)



//colonists

/datum/job/civ
	selection_color = "#d9d9d9"
	job_category = JOB_CAT_COLONIST
	faction = FACTION_COLONIST

//Colonist
/datum/job/civ/colonist
	title = "Colonist"
	access = list(ACCESS_CIVILIAN_PUBLIC, ACCESS_CIVILIAN_RESEARCH, ACCESS_CIVILIAN_ENGINEERING, ACCESS_CIVILIAN_LOGISTICS)
	minimal_access = list(ACCESS_CIVILIAN_PUBLIC, ACCESS_CIVILIAN_RESEARCH, ACCESS_CIVILIAN_ENGINEERING, ACCESS_CIVILIAN_LOGISTICS)
	display_order = JOB_DISPLAY_ORDER_COLONIST
	skills_type = /datum/skills/civilian
	faction = FACTION_TERRAGOV
	job_flags = JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_PROVIDES_BANK_ACCOUNT
	outfit = /datum/outfit/job/civ/colonist

/datum/outfit/job/civ/colonist
	name = "Colonist"
	jobtype = /datum/job/civ/colonist

	ears = /obj/item/radio/headset
	w_uniform = /obj/item/clothing/under/serviceoveralls
	shoes = /obj/item/clothing/shoes/black
	back = /obj/item/storage/backpack/satchel/norm


//Mayor
/datum/job/civ/mayor
	title = "Colony Mayor"
	skills_type = /datum/skills/civilian/survivor
	outfit = /datum/outfit/job/civ/mayor
	access = list(ACCESS_CIVILIAN_PUBLIC, ACCESS_CIVILIAN_RESEARCH, ACCESS_CIVILIAN_ENGINEERING, ACCESS_CIVILIAN_LOGISTICS, ACCESS_MARINE_BRIG)
	minimal_access = list(ACCESS_CIVILIAN_PUBLIC, ACCESS_CIVILIAN_RESEARCH, ACCESS_CIVILIAN_ENGINEERING, ACCESS_CIVILIAN_LOGISTICS, ACCESS_MARINE_BRIG)
	display_order = JOB_DISPLAY_ORDER_COLONIST
	faction = FACTION_TERRAGOV
	job_flags = JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_PROVIDES_BANK_ACCOUNT

/datum/outfit/job/civ/mayor
	name = "Colony Mayor"
	jobtype = /datum/job/civ/mayor

	ears = /obj/item/radio/headset/gcpd
	w_uniform = /obj/item/clothing/under/suit_jacket/checkered
	shoes = /obj/item/clothing/shoes/laceup
	back = /obj/item/storage/backpack/satchel
	r_store = /obj/item/flash

/datum/outfit/job/civ/mayor/post_equip(mob/living/carbon/human/H, visualsOnly = FALSE)
	. = ..()
	H.equip_to_slot_or_del(new /obj/item/weapon/gun/pistol/m6/m6b_security, SLOT_IN_BACKPACK)


//Doctor
/datum/job/civ/doctor
	title = "Colony Doctor"
	skills_type = /datum/skills/civilian/survivor/doctor
	outfit = /datum/outfit/job/civ/doctor
	access = list(ACCESS_CIVILIAN_PUBLIC, ACCESS_CIVILIAN_RESEARCH, ACCESS_CIVILIAN_ENGINEERING, ACCESS_CIVILIAN_LOGISTICS)
	minimal_access = list(ACCESS_CIVILIAN_PUBLIC, ACCESS_CIVILIAN_RESEARCH, ACCESS_CIVILIAN_ENGINEERING, ACCESS_CIVILIAN_LOGISTICS)
	display_order = JOB_DISPLAY_ORDER_COLONIST
	faction = FACTION_TERRAGOV
	job_flags = JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_PROVIDES_BANK_ACCOUNT


/datum/outfit/job/civ/doctor
	name = "Colony Doctor"
	jobtype = /datum/job/civ/doctor

	ears = /obj/item/radio/headset
	w_uniform = /obj/item/clothing/under/rank/medical
	shoes = /obj/item/clothing/shoes/black
	back = /obj/item/storage/backpack/satchel/med
	l_store = /obj/item/storage/pouch/firstaid/full


//Chef
/datum/job/civ/chef
	title = "Colony Chef"
	skills_type = /datum/skills/civilian/survivor/chef
	outfit = /datum/outfit/job/civ/chef
	access = list(ACCESS_CIVILIAN_PUBLIC, ACCESS_CIVILIAN_RESEARCH, ACCESS_CIVILIAN_ENGINEERING, ACCESS_CIVILIAN_LOGISTICS)
	minimal_access = list(ACCESS_CIVILIAN_PUBLIC, ACCESS_CIVILIAN_RESEARCH, ACCESS_CIVILIAN_ENGINEERING, ACCESS_CIVILIAN_LOGISTICS)
	display_order = JOB_DISPLAY_ORDER_COLONIST
	faction = FACTION_TERRAGOV
	job_flags = JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_PROVIDES_BANK_ACCOUNT


/datum/outfit/job/civ/chef
	name = "Colony Chef"
	jobtype = /datum/job/civ/chef

	head = /obj/item/clothing/head/chefhat
	ears = /obj/item/radio/headset
	w_uniform = /obj/item/clothing/under/rank/chef
	shoes = /obj/item/clothing/shoes/black
	back = /obj/item/storage/backpack/satchel/norm


//Chaplain
/datum/job/civ/chaplain
	title = "Colony Chaplain"
	outfit = /datum/outfit/job/civ/chaplain
	skills_type = /datum/skills/civilian
	access = list(ACCESS_CIVILIAN_PUBLIC, ACCESS_CIVILIAN_RESEARCH, ACCESS_CIVILIAN_ENGINEERING, ACCESS_CIVILIAN_LOGISTICS)
	minimal_access = list(ACCESS_CIVILIAN_PUBLIC, ACCESS_CIVILIAN_RESEARCH, ACCESS_CIVILIAN_ENGINEERING, ACCESS_CIVILIAN_LOGISTICS)
	display_order = JOB_DISPLAY_ORDER_COLONIST
	faction = FACTION_TERRAGOV
	job_flags = JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_PROVIDES_BANK_ACCOUNT


/datum/outfit/job/civ/chaplain
	name = "Colony Chaplain"
	jobtype = /datum/job/civ/chaplain

	ears = /obj/item/radio/headset
	w_uniform = /obj/item/clothing/under/rank/chaplain
	shoes = /obj/item/clothing/shoes/black
	back = /obj/item/storage/backpack/satchel/norm


//Farmer
/datum/job/civ/farmer
	title = "Colony Farmer"
	outfit = /datum/outfit/job/civ/farmer
	skills_type = /datum/skills/civilian/survivor
	access = list(ACCESS_CIVILIAN_PUBLIC, ACCESS_CIVILIAN_RESEARCH, ACCESS_CIVILIAN_ENGINEERING, ACCESS_CIVILIAN_LOGISTICS)
	minimal_access = list(ACCESS_CIVILIAN_PUBLIC, ACCESS_CIVILIAN_RESEARCH, ACCESS_CIVILIAN_ENGINEERING, ACCESS_CIVILIAN_LOGISTICS)
	display_order = JOB_DISPLAY_ORDER_COLONIST
	faction = FACTION_TERRAGOV
	job_flags = JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_PROVIDES_BANK_ACCOUNT


/datum/outfit/job/civ/farmer
	name = "Colony Farmer"
	jobtype = /datum/job/civ/farmer

	head = /obj/item/clothing/head/boonie
	ears = /obj/item/radio/headset
	w_uniform = /obj/item/clothing/under/overalls
	shoes = /obj/item/clothing/shoes/leather
	back = /obj/item/storage/backpack/satchel/norm

//Janitor
/datum/job/civ/janitor
	title = "Colony Janitor"
	outfit = /datum/outfit/job/civ/janitor
	skills_type = /datum/skills/civilian/survivor
	access = list(ACCESS_CIVILIAN_PUBLIC, ACCESS_CIVILIAN_RESEARCH, ACCESS_CIVILIAN_ENGINEERING, ACCESS_CIVILIAN_LOGISTICS)
	minimal_access = list(ACCESS_CIVILIAN_PUBLIC, ACCESS_CIVILIAN_RESEARCH, ACCESS_CIVILIAN_ENGINEERING, ACCESS_CIVILIAN_LOGISTICS)
	display_order = JOB_DISPLAY_ORDER_COLONIST
	faction = FACTION_TERRAGOV
	job_flags = JOB_FLAG_ROUNDSTARTJOINABLE|JOB_FLAG_PROVIDES_BANK_ACCOUNT


/datum/outfit/job/civ/janitor
	name = "Colony Janitor"
	jobtype = /datum/job/civ/janitor

	head = /obj/item/clothing/head/soft/purple
	ears = /obj/item/radio/headset
	w_uniform = /obj/item/clothing/under/rank/janitor
	shoes = /obj/item/clothing/shoes/galoshes
	back = /obj/item/storage/backpack/satchel/norm


