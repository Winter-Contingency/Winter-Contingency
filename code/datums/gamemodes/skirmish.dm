/datum/game_mode/skirmish
	name = "Skirmish"
	config_tag = "Skirmish"
	required_players = 0
	votable = FALSE

	valid_job_types = list(
		/datum/job/unsc/marine/basic = -1,
		/datum/job/unsc/marine/medic = 6,
		/datum/job/unsc/marine/engineer = 6,
		/datum/job/unsc/marine/leader = 1,
		/datum/job/insurrectionist/basic = -1,
		/datum/job/insurrectionist/medic = 6,
		/datum/job/insurrectionist/engineer = 6,
		/datum/job/insurrectionist/leader = 1,
		/datum/job/gcpd/chief = 1,
		/datum/job/gcpd/cop = 3,
		/datum/job/civ/mayor = 1,
		/datum/job/civ/colonist = 4,
		/datum/job/civ/doctor = 1,
		/datum/job/civ/chef = 1,
		/datum/job/civ/chaplain = 1,
		/datum/job/civ/farmer = 1,
		/datum/job/civ/janitor = 1
		)


/datum/game_mode/skirmish/announce()
	to_chat(world, "<b>The current game mode is - Skirmish!</b>")
	to_chat(world, "<b>Prepare for an epic fight on [SSmapping.configs[GROUND_MAP].map_name]. Will you make it out alive?</b>")

/datum/game_mode/skirmish/check_finished()
	if(!round_finished)
		return FALSE
	return TRUE
