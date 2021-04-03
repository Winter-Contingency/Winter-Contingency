/obj/item/clothing/gloves/jackal
	icon_state = "gauntlet"
	item_state = "gauntlet"
	actions_types = list(/datum/action/item_action/call_item/shield)
	var/base_icon = "gauntlet"
	var/overloaded = FALSE
	var/overloaded_icon
	var/overloaded_cooldown = 20 SECONDS

/obj/item/clothing/gloves/jackal/can_active_action_button(mob/user)
	if(user && overloaded)
		to_chat(user, "<span class='warning'>[src] is overloaded</span>")
	return !overloaded

/obj/item/clothing/gloves/jackal/item_action_slot_check(mob/user, slot)
	return flags_equip_slot & slotdefine2slotbit(slot)

/obj/item/clothing/gloves/jackal/update_icon()
	. = ..()
	if(overloaded)
		icon_state = "[base_icon]_overloaded"
	else if(active)
		icon_state = "[base_icon]_active"
	else
		icon_state = base_icon

/obj/item/clothing/gloves/jackal/emp_act(severity)
	. = ..()
	overloaded = TRUE
	update_icon()
	addtimer(CALLBACK(src, .proc/reactive_gloves), overloaded_cooldown)

/obj/item/clothing/gloves/jackal/proc/reactive_gloves()
	overloaded = FALSE
	update_icon()


