#define UNSC "UNSC"
#define URF "URF"

#define TICKETLOSS_KILL 100
#define TICKETLOSS_CAP 100

#define UNSC_VICTORY "UNSC_VICTORY"
#define URF_VICTORY "URF_VICTORY"

//creds to tennessee

/datum/game_mode/liberation
	name = "Liberation"
	config_tag = "Liberation"
	required_players = 0
	votable = TRUE
	var/urf_tickets = 100
	var/unsc_tickets = 100

/datum/game_mode/liberation/announce()
	to_chat(world, "<b>The current game mode is Liberation!</b>")
	to_chat(world, "<b>Assume DEFCON 1, prepare for all-out war!</b>")

/datum/game_mode/liberation/proc/kill_tickets(var/mob/living/carbon/human/H)
	if(H.undefibbable == 1)
		if(H.faction == FACTION_UNSC)
			unsc_tickets -= TICKETLOSS_KILL
		if(H.faction == FACTION_INSURRECTION)
			urf_tickets -= TICKETLOSS_KILL
	return

/datum/game_mode/liberation/proc/cap_tickets(var/obj/machinery/capbeacon/B)
	if(B.controlled_by == null)
		return
	if(B.controlled_by == FACTION_INSURRECTION)
		unsc_tickets -= TICKETLOSS_CAP
	if(B.controlled_by == FACTION_UNSC)
		urf_tickets -= TICKETLOSS_CAP

/datum/game_mode/liberation/ticket_processing()
	. = ..()
	if(urf_tickets <= 0)
		round_finished = UNSC_VICTORY
		return TRUE
	if(unsc_tickets <= 0)
		round_finished = URF_VICTORY
		return TRUE
	return FALSE

/datum/game_mode/liberation/distress/check_finished()
	ticket_processing()
	if(round_finished)
		return TRUE

/datum/game_mode/liberation/declare_completion()
	. = ..()
	var/F = null
	var/sound/S = null
	switch(round_finished)
		if(UNSC_VICTORY)
			S = sound(pick('sound/theme/neutral_hopeful1.ogg','sound/theme/neutral_hopeful2.ogg'), channel = CHANNEL_CINEMATIC)
			F = "UNSC"
		if(URF_VICTORY)
			S = sound(pick('sound/theme/neutral_hopeful1.ogg','sound/theme/neutral_hopeful2.ogg'), channel = CHANNEL_CINEMATIC)
			F = "URF"

	to_chat(world, "<span class='round_header'>|Round Complete|</span>")
	to_chat(world, "<span class='round_body'>The [F] soldiers are victorious</span>")

	SEND_SOUND(world, S)

	log_game("[round_finished]\nGame mode: [name]\nRound time: [duration2text()]\nEnd round player population: [length(GLOB.clients)]\nTotal humans spawned: [GLOB.round_statistics.total_humans_created]")

	announce_medal_awards()
	announce_round_stats()
