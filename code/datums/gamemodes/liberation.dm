#define TICKETLOSS_KILL 1
#define UNSC_VICTORY "UNSC_VICTORY"
#define INSURRECTIONIST_VICTORY "INSURRECTIONIST_VICTORY"

//       from port         //
//creds to tennessee
// KOSMNAZ_VICTORY  TO UNSC_VICTORY
// NATSF_VICTORY TO INSURRECTIONIST_VICTORY

// FACTION_USSR to FACTION_UNSC
// FACTION_NATSF to FACTION_INSURRECTION

// kosmnaz_tickets to unsc_tickets
// natsf_tickets to insurrectionist_tickets
// --------------------------- //

/datum/game_mode/liberation
	name = "Liberation"
	config_tag = "Liberation"
	required_players = 0
	votable = TRUE
	var/unsc_tickets = 50
	var/insurrectionist_tickets = 50
	//var/list/factions = (FACTION_INSURRECTION, FACTION_UNSC)
	valid_job_types = list(
							/datum/job/unsc/marine/basic = -1,
							/datum/job/unsc/marine/medic = 6,
							/datum/job/unsc/marine/engineer = 6,
							/datum/job/unsc/marine/leader = 1,

							/datum/job/insurrectionist/basic = -1,
							/datum/job/insurrectionist/medic = 6,
							/datum/job/insurrectionist/engineer = 6,
							/datum/job/insurrectionist/leader = 1
	)

/datum/game_mode/liberation/announce()
	to_chat(world, "<b>The current game mode is Liberation!</b>")
	to_chat(world, "<b>Assume DEFCON 1, prepare for all-out war!</b>")

//Called when mob dies//
/datum/game_mode/liberation/on_mob_death(mob/living/M)
	if(M.faction == FACTION_INSURRECTION)
		insurrectionist_tickets -= TICKETLOSS_KILL
	else if(M.faction == FACTION_UNSC)
		unsc_tickets -= TICKETLOSS_KILL

//Capture beacon will call this upon being captured//
/datum/game_mode/liberation/proc/cap_tickets(faction, tickets)
	if(faction == FACTION_INSURRECTION)
		insurrectionist_tickets += tickets
	if(faction == FACTION_UNSC)
		unsc_tickets += tickets

/datum/game_mode/liberation/process()
	. = ..()
	for(var/obj/machinery/capbeacon/C in global.cps)
		if(C.controlled_by == FACTION_UNSC)
			insurrectionist_tickets -= C.ppm / 30
		else if(C.controlled_by == FACTION_INSURRECTION)
			unsc_tickets -= C.ppm / 30

	if(insurrectionist_tickets <= 0)
		round_finished = UNSC_VICTORY
	else if(unsc_tickets <= 0)
		round_finished = INSURRECTIONIST_VICTORY

/datum/game_mode/liberation/check_finished()
	if(round_finished)
		return TRUE

/datum/game_mode/liberation/declare_completion()
	. = ..()
	var/winner
	var/win_condition
	var/sound/S

	switch(round_finished)
		if(UNSC_VICTORY)
			winner = FACTION_UNSC
			if(unsc_tickets / initial(unsc_tickets) >= 0.6)
				win_condition = "OVERWHELMING VICTORY!"
				S = sound(pick('sound/theme/neutral_hopeful1.ogg','sound/theme/neutral_hopeful2.ogg'), channel = CHANNEL_CINEMATIC)
			else if(unsc_tickets / initial(unsc_tickets) <= 0.4)
				win_condition = "PHYRRIC VICTORY"
				S = sound(pick('sound/theme/neutral_hopeful1.ogg','sound/theme/neutral_hopeful2.ogg'), channel = CHANNEL_CINEMATIC)
			else
				win_condition = "VICTORY"
				S = sound(pick('sound/theme/neutral_hopeful1.ogg','sound/theme/neutral_hopeful2.ogg'), channel = CHANNEL_CINEMATIC)

		if(INSURRECTIONIST_VICTORY)
			winner = FACTION_INSURRECTION
			if(insurrectionist_tickets / initial(insurrectionist_tickets) >= 0.6)
				win_condition = "OVERWHELMING VICTORY!"
				S = sound(pick('sound/theme/neutral_hopeful1.ogg','sound/theme/neutral_hopeful2.ogg'), channel = CHANNEL_CINEMATIC)
			else if(insurrectionist_tickets / initial(insurrectionist_tickets) <= 0.4)
				win_condition = "PHYRRIC VICTORY"
				S = sound(pick('sound/theme/neutral_hopeful1.ogg','sound/theme/neutral_hopeful2.ogg'), channel = CHANNEL_CINEMATIC)
			else
				win_condition = "VICTORY"
				S = sound(pick('sound/theme/neutral_hopeful1.ogg','sound/theme/neutral_hopeful2.ogg'), channel = CHANNEL_CINEMATIC)

	to_chat(world, "<span class='round_header'>|Round Complete|</span>")
	to_chat(world, "<span class='round_body'>The [winner] is victorious.</span>")
	to_chat(world,"<span class='round_body'>[win_condition]</span>")

	SEND_SOUND(world, S)

	log_game("[round_finished]\nGame mode: [name]\nRound time: [duration2text()]\nEnd round player population: [length(GLOB.clients)]\nTotal humans spawned: [GLOB.round_statistics.total_humans_created]")

	announce_medal_awards()
	announce_round_stats()
