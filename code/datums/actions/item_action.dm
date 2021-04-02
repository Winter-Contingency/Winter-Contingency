
/datum/action/item_action
	name = "Use item"
	var/obj/item/holder_item //the item that has this action in its list of actions. Is not necessarily the target
							//e.g. gun attachment action: target = attachment, holder = gun.

/datum/action/item_action/New(Target, obj/item/holder)
	. = ..()
	if(!holder)
		holder = target
	holder_item = holder
	holder_item.actions += src
	name = "Use [target]"
	button.name = name

/datum/action/item_action/Destroy()
	holder_item.actions -= src
	holder_item = null
	return ..()

/datum/action/item_action/action_activate()
	if(target)
		var/obj/item/I = target
		I.ui_action_click(owner, src, holder_item)

/datum/action/item_action/can_use_action()
	if(QDELETED(owner) || owner.incapacitated() || owner.lying_angle)
		return FALSE
	return TRUE

/datum/action/item_action/update_button_icon()
	button.overlays.Cut()
	var/obj/item/I = target
	var/old_layer = I.layer
	var/old_plane = I.plane
	I.layer = ABOVE_HUD_LAYER
	I.plane = ABOVE_HUD_PLANE
	button.overlays += I
	I.layer = old_layer
	I.plane = old_plane


/datum/action/item_action/toggle/New(Target)
	. = ..()
	name = "Toggle [target]"
	button.name = name


/datum/action/item_action/firemode
	var/action_firemode
	var/obj/item/weapon/gun/holder_gun
	var/static/atom/movable/vis_obj/action/fmode_single/semiauto = new
	var/static/atom/movable/vis_obj/action/fmode_burst/burstfire = new
	var/static/atom/movable/vis_obj/action/fmode_single_auto/fullauto = new
	var/static/atom/movable/vis_obj/action/fmode_burst_auto/autoburst = new
	var/atom/movable/vis_obj/action/current_action_vis_obj


/datum/action/item_action/firemode/New()
	. = ..()
	holder_gun = holder_item
	button.overlays.Cut()
	update_button_icon()


/datum/action/item_action/firemode/update_button_icon()
	if(holder_gun.gun_firemode == action_firemode)
		return
	button.vis_contents -= current_action_vis_obj
	switch(holder_gun.gun_firemode)
		if(GUN_FIREMODE_SEMIAUTO)
			button.name = "Semi-Automatic Firemode"
			current_action_vis_obj = semiauto
		if(GUN_FIREMODE_BURSTFIRE)
			button.name = "Burst Firemode"
			current_action_vis_obj = burstfire
		if(GUN_FIREMODE_AUTOMATIC)
			button.name = "Automatic Firemode"
			current_action_vis_obj = fullauto
		if(GUN_FIREMODE_AUTOBURST)
			button.name = "Automatic Burst Firemode"
			current_action_vis_obj = autoburst
	button.vis_contents += current_action_vis_obj
	action_firemode = holder_gun.gun_firemode

/datum/action/item_action/aim_mode/update_button_icon()
	button.overlays.Cut()
	button.overlays += image('icons/mob/actions.dmi', null, "sniper_zoom", ABOVE_HUD_LAYER)

/datum/action/item_action/aim_mode/action_activate()
	var/obj/item/weapon/gun/I = target
	I.toggle_auto_aim_mode(owner)

/datum/action/item_action/call_item
	name = "invoke item"
	desc = "Materializes an item"
	action_icon_state = "default"
	var/active_icon = "default"
	var/item_type
	var/obj/item/materialized
	var/item_hidden = TRUE

/datum/action/item_action/call_item/New(Target)
	..()
	create_item()
	name = "invoke [materialized]"
	button.name = name
	RegisterSignal(target, COMSIG_ITEM_DROPPED, .proc/on_drop)

/datum/action/item_action/call_item/action_activate()
	. = ..()
	switch_item()

/datum/action/item_action/call_item/proc/on_materialize()

/datum/action/item_action/call_item/proc/switch_item()
	if(QDELETED(materialized))
		create_item()
		item_hidden = TRUE

	if(item_hidden)
		materialize()
	else
		owner.UnEquip(materialized, TRUE)

/datum/action/item_action/call_item/proc/create_item()
	materialized = new item_type
	materialized.flags_item |= DELONDROP
	RegisterSignal(materialized, COMSIG_ITEM_DROPPED, .proc/on_materialized_drop, TRUE)

/datum/action/item_action/call_item/proc/on_materialized_drop(datum/source, mob/living/user)
	hidden_item()

/datum/action/item_action/call_item/proc/on_drop(datum/source, mob/living/user)
	user.UnEquip(materialized, TRUE)

/datum/action/item_action/call_item/proc/hidden_item(mob/living/user)
	if(QDELETED(materialized))
		create_item()
	else
		if(user)
			user.doUnEquip(materialized)
		materialized.moveToNullspace()
	item_hidden = TRUE
	action_icon_state = initial(action_icon_state)

/datum/action/item_action/call_item/proc/materialize()
	if(QDELETED(materialized))
		create_item()
	item_hidden = FALSE
	action_icon_state = active_icon
	if(owner.put_in_hands(materialized))
		on_materialize(owner)
		owner.update_inv_l_hand()
		owner.update_inv_r_hand()
		to_chat(owner, "<span class='notice'>[target] the boy materializes [materialized].</span>")

/datum/action/item_action/call_item/sword
	item_type = /obj/item/weapon/energy/sword/covenant

/datum/action/item_action/call_item/sword/on_materialize(mob/user)
	materialized.attack_self(owner)
