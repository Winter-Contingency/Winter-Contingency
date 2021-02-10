/datum/component/shield
	var/mob/living/affected
	var/datum/callback/intercept_damage_cb
	var/datum/callback/transfer_damage_cb
	/// %-reduction-based armor.
	var/datum/armor/soft_armor
	/// Flat-damage-reduction-based armor.
	var/datum/armor/hard_armor
	/// Percentage damage The shield intercepts.
	var/datum/armor/cover = list("melee" = 80, "bullet" = 100, "laser" = 100, "energy" = 100, "bomb" = 80, "bio" = 30, "rad" = 0, "fire" = 80, "acid" = 80)
	var/shield_flags = NONE
	var/slot_flags = SLOT_L_HAND|SLOT_R_HAND
	var/layer = 50
	var/active = TRUE


/datum/component/shield/Initialize(shield_flags, shield_soft_armor, shield_hard_armor, shield_cover = cover)
	. = ..()
	if(!isitem(parent))
		return COMPONENT_INCOMPATIBLE
	var/obj/item/parent_item = parent
	if(shield_flags & SHIELD_TOGGLE)
		RegisterSignal(parent, COMSIG_ITEM_TOGGLE_ACTIVE, .proc/toggle_shield)
		active = parent_item.active
	if(active)
		RegisterSignal(parent, COMSIG_ITEM_EQUIPPED, .proc/shield_equipped)
		RegisterSignal(parent, COMSIG_ITEM_DROPPED, .proc/shield_dropped)
		if(ismob(parent_item.loc))
			shield_init(parent_item.loc)

	setup_callbacks(shield_flags)

	if(!isnull(shield_soft_armor))
		soft_armor = shield_soft_armor
	if(islist(shield_soft_armor))
		soft_armor = getArmor(arglist(shield_soft_armor))
	else
		soft_armor = parent_item.soft_armor

	if(!isnull(shield_hard_armor))
		hard_armor = shield_hard_armor
	if(islist(shield_hard_armor))
		hard_armor = getArmor(arglist(shield_hard_armor))
	else
		hard_armor = parent_item.hard_armor

	if(islist(shield_cover))
		cover = getArmor(arglist(shield_cover))
	else if(istype(shield_cover, /datum/armor))
		cover = shield_cover
	else
		cover = getArmor()
		stack_trace("Invalid type found in cover during /datum/component/shield Initialize()")


/datum/component/shield/Destroy()
	shield_detatch_from_user()
	soft_armor = null
	hard_armor = null
	cover = null
	QDEL_NULL(intercept_damage_cb)
	if(transfer_damage_cb)
		QDEL_NULL(transfer_damage_cb)
	return ..()

/datum/component/shield/proc/setup_callbacks(shield_flags)
	if(shield_flags & SHIELD_PURE_BLOCKING)
		intercept_damage_cb = CALLBACK(src, .proc/item_pure_block_chance)
	else
		intercept_damage_cb = CALLBACK(src, .proc/item_intercept_attack)
	if(shield_flags & SHIELD_PARENT_INTEGRITY)
		transfer_damage_cb = CALLBACK(src, .proc/transfer_damage_to_parent)

/datum/component/shield/proc/shield_init(mob/holder_mob) // If we confess our sins (like this proc), he is faithful and just and will forgive us our sins and purify us from all unrighteousness.
	var/slot
	if(parent == holder_mob.l_hand)
		slot = SLOT_L_HAND
	else if(parent == holder_mob.r_hand)
		slot = SLOT_R_HAND
	else if(parent == holder_mob.wear_mask)
		slot = SLOT_WEAR_MASK
	else if(iscarbon(holder_mob))
		var/mob/living/carbon/holder_carbon = holder_mob
		if(parent == holder_carbon.handcuffed)
			slot = SLOT_HANDCUFFED
		else if(parent == holder_carbon.back)
			slot = SLOT_BACK
		else if(ishuman(holder_mob))
			var/mob/living/carbon/human/holder_human = holder_mob
			if(parent == holder_human.wear_suit)
				slot = SLOT_WEAR_SUIT
			else if(parent == holder_human.w_uniform)
				slot = SLOT_W_UNIFORM
			else if(parent == holder_human.shoes)
				slot = SLOT_SHOES
			else if(parent == holder_human.belt)
				slot = SLOT_BELT
			else if(parent == holder_human.gloves)
				slot = SLOT_GLOVES
			else if(parent == holder_human.glasses)
				slot = SLOT_GLASSES
			else if(parent == holder_human.head)
				slot = SLOT_HEAD
			else if(parent == holder_human.wear_ear)
				slot = SLOT_EARS
			else if(parent == holder_human.wear_id)
				slot = SLOT_WEAR_ID
			else if(parent == holder_human.r_store)
				slot = SLOT_R_STORE
			else if(parent == holder_human.l_store)
				slot = SLOT_L_STORE
			else if(parent == holder_human.s_store)
				slot = SLOT_S_STORE
	shield_equipped(parent, holder_mob, slot)

/datum/component/shield/proc/toggle_shield(datum/source, new_state)
	SIGNAL_HANDLER
	if(active == new_state)
		return
	active = new_state
	if(active)
		RegisterSignal(parent, COMSIG_ITEM_EQUIPPED, .proc/shield_equipped)
		RegisterSignal(parent, COMSIG_ITEM_DROPPED, .proc/shield_dropped)
		if(affected)
			activate_with_user()
		return
	if(affected)
		deactivate_with_user()
	UnregisterSignal(parent, list(COMSIG_ITEM_EQUIPPED, COMSIG_ITEM_DROPPED))

/datum/component/shield/proc/shield_equipped(datum/source, mob/living/user, slot)
	SIGNAL_HANDLER
	if(!(slot_flags & slot))
		shield_detatch_from_user()
		return
	shield_affect_user(user)

	var/obj/item/parent_item = parent //Apply in-hand slowdowns.
	if(!ishuman(user))
		return
	var/mob/living/carbon/human/human_user = user
	if(parent_item.slowdown)
		human_user.add_movespeed_modifier(parent.type, TRUE, 0, NONE, TRUE, parent_item.slowdown)

/datum/component/shield/proc/shield_dropped(datum/source, mob/user)
	SIGNAL_HANDLER
	shield_detatch_from_user()

	var/obj/item/parent_item = parent //Apply in-hand slowdowns.
	if(!ishuman(user))
		return
	var/mob/living/carbon/human/human_user = user
	if(parent_item.slowdown)
		human_user.remove_movespeed_modifier(parent.type)

/datum/component/shield/proc/shield_affect_user(mob/living/user)
	if(affected)
		if(affected == user)
			return //Already active
		shield_detatch_from_user()
	affected = user
	if(active)
		activate_with_user()

/datum/component/shield/proc/activate_with_user()
	RegisterSignal(affected, COMSIG_LIVING_SHIELDCALL, .proc/on_attack_cb_shields_call)

/datum/component/shield/proc/deactivate_with_user()
	UnregisterSignal(affected, COMSIG_LIVING_SHIELDCALL)

/datum/component/shield/proc/shield_detatch_from_user()
	if(!affected)
		return
	deactivate_with_user()
	affected = null

/datum/component/shield/proc/on_attack_cb_shields_call(datum/source, list/affecting_shields, dam_type)
	SIGNAL_HANDLER
	if(cover.getRating(dam_type) <= 0)
		return
	affecting_shields[intercept_damage_cb] = layer

/datum/component/shield/proc/item_intercept_attack(attack_type, incoming_damage, damage_type, silent)
	var/obj/item/parent_item = parent
	var/status_cover_modifier = 1

	if(affected.IsSleeping() || affected.IsUnconscious() || affected.IsAdminSleeping()) //We don't do jack if we're literally KOed/sleeping/paralyzed.
		return incoming_damage

	if(affected.IsStun() || affected.IsKnockdown() || affected.IsParalyzed()) //Halve shield cover if we're paralyzed or stunned
		status_cover_modifier *= 0.5

	if(iscarbon(affected))
		var/mob/living/carbon/C = affected
		if(C.stagger) //Lesser penalty to shield cover for being staggered.
			status_cover_modifier *= 0.75

	switch(attack_type)
		if(COMBAT_TOUCH_ATTACK)
			if(!prob(cover.getRating(damage_type) * status_cover_modifier))
				return FALSE //Bypassed the shield.
			incoming_damage = max(0, incoming_damage - hard_armor.getRating(damage_type))
			incoming_damage *= (100 - soft_armor.getRating(damage_type)) * 0.01
			return prob(50 - round(incoming_damage / 3))
		if(COMBAT_MELEE_ATTACK, COMBAT_PROJ_ATTACK)
			var/absorbing_damage = incoming_damage * cover.getRating(damage_type) * 0.01 * status_cover_modifier  //Determine cover ratio; this is the % of damage we actually intercept.
			absorbing_damage = max(0, absorbing_damage - hard_armor.getRating(damage_type)) //We apply hard armor *first* _not_ *after* soft armor
			if(!absorbing_damage)
				return incoming_damage //We are transparent to this kind of damage.
			. = incoming_damage - absorbing_damage
			absorbing_damage *= (100 - soft_armor.getRating(damage_type)) * 0.01 //Now apply soft armor
			if(absorbing_damage <= 0)
				if(!silent)
					to_chat(affected, "<span class='avoidharm'>\The [parent_item.name] [. ? "softens" : "soaks"] the damage!</span>")
				return
			if(transfer_damage_cb)
				return transfer_damage_cb.Invoke(absorbing_damage, ., silent)

/datum/component/shield/proc/item_pure_block_chance(attack_type, incoming_damage, damage_type, silent)
	switch(attack_type)
		if(COMBAT_TOUCH_ATTACK)
			if(!prob(cover.getRating(damage_type)))
				return FALSE //Bypassed the shield.
			incoming_damage = max(0, incoming_damage - hard_armor.getRating(damage_type))
			incoming_damage *= (100 - soft_armor.getRating(damage_type)) * 0.01
			return prob(50 - round(incoming_damage / 3))
		if(COMBAT_MELEE_ATTACK, COMBAT_PROJ_ATTACK)
			if(prob(cover.getRating(damage_type)))
				return 0 //Blocked
			return incoming_damage //Went through.

/datum/component/shield/proc/transfer_damage_to_parent(incoming_damage, return_damage, silent)
	. = return_damage
	var/obj/item/parent_item = parent
	if(incoming_damage >= parent_item.obj_integrity)
		. += incoming_damage - parent_item.obj_integrity
		parent_item.take_damage(incoming_damage, armour_penetration = 100) //Armor has already been accounted for, this should destroy the parent and thus the component.
		return
	if(!silent)
		to_chat(affected, "<span class='avoidharm'>\The [parent_item.name] [. ? "softens" : "soaks"] the damage!</span>")
	parent_item.take_damage(incoming_damage, armour_penetration = 100)


//Dune, Halo and energy shields.
/datum/component/shield/overhealth
	layer = 100
	cover = list("melee" = 100, "bullet" = 100, "laser" = 100, "energy" = 100, "bomb" = 100, "bio" = 100, "rad" = 100, "fire" = 100, "acid" = 100)
	slot_flags = SLOT_WEAR_SUIT //For now it only activates while worn on a single place, meaning only one active at a time. Need to handle overlays properly to allow for stacking.
	var/icon = 'icons/effects/shield.dmi'
	var/list/damagetype_to_integrity_multiplier = list("melee" = 1, "bullet" = 1, "laser" = 1, "energy" = 1, "bomb" = 1, "bio" = 1, "rad" = 1, "fire" = 1, "acid" = 1)//This multiplies the damage the shield takes depending on the type of damage taken.
	var/list/attack_type_to_integrity_multiplier = list(COMBAT_MELEE_ATTACK = 2, COMBAT_PROJ_ATTACK = 1, COMBAT_TOUCH_ATTACK = 2, COMBAT_EXPLOSION_ATTACK = 4)
	var/list/can_shield = list(COMBAT_MELEE_ATTACK, COMBAT_PROJ_ATTACK, COMBAT_TOUCH_ATTACK, COMBAT_EXPLOSION_ATTACK)
	var/max_shield_integrity = 100
	var/shield_integrity = 100
	var/recharge_rate = 1 SECONDS
	var/integrity_regen = 10 //per recharge_rate
	var/recharge_cooldown = 10 SECONDS //after being hit
	var/next_recharge = 0 //world.time based
	var/shiel_off = "null"
	var/shield_overlay = "shield-blue"
	var/recharge_overlay = "recharging"
	var/margin_x = -3

/datum/component/shield/overhealth/Initialize(shield_flags, shield_soft_armor, shield_hard_armor, shield_cover = cover, new_icon, new_shield_overlay, new_recharge_overlay)
	if(new_icon)
		icon = new_icon
	if(new_shield_overlay)
		shield_overlay = new_recharge_overlay
	if(new_recharge_overlay)
		recharge_overlay = new_recharge_overlay
	return ..(shield_flags, shield_soft_armor, shield_hard_armor, shield_cover)

/datum/component/shield/overhealth/RegisterWithParent()
	. = ..()
	RegisterSignal(parent, COMSIG_PARENT_EXAMINE, .proc/examine)
	RegisterSignal(parent, COMSIG_ATOM_EMP_ACT, .proc/on_emp)

/datum/component/shield/overhealth/proc/examine(datum/source, mob/user)
	SIGNAL_HANDLER
	to_chat(user, "<span class='notice'>The shield of [parent] has [shield_integrity*100/max_shield_integrity]% energy.</span>")

/datum/component/shield/overhealth/proc/on_emp(datum/source, severity)
	damage_overhealth(shield_integrity)

/datum/component/shield/overhealth/Destroy()
	STOP_PROCESSING(SSprocessing, src)
	return ..()


/datum/component/shield/overhealth/setup_callbacks(shield_flags)
	intercept_damage_cb = CALLBACK(src, .proc/overhealth_intercept_attack)
	transfer_damage_cb = CALLBACK(src, .proc/transfer_damage_to_overhealth)


/datum/component/shield/overhealth/proc/overhealth_intercept_attack(attack_type, incoming_damage, damage_type, silent)
	if(!(attack_type in can_shield))
		return incoming_damage
	var/absorbing_damage = incoming_damage * cover.getRating(damage_type) * 0.01
	if(!absorbing_damage)
		return incoming_damage //We are transparent to this kind of damage.
	. = incoming_damage - absorbing_damage
	absorbing_damage *= damagetype_to_integrity_multiplier[damage_type]
	absorbing_damage *= attack_type_to_integrity_multiplier[attack_type]
	return wrap_up_attack(absorbing_damage, ., silent)


/datum/component/shield/overhealth/proc/wrap_up_attack(absorbing_damage, unabsorbed_damage, silent)
	. = unabsorbed_damage
	var/obj/item/parent_item = parent
	if(absorbing_damage <= 0)
		if(!.)
			if(!silent)
				to_chat(affected, "<span class='avoidharm'>\The [parent_item.name] soaks the damage!</span>")
			return
	if(transfer_damage_cb)
		return transfer_damage_cb.Invoke(absorbing_damage, ., silent)
	else if(!silent)
		to_chat(affected, "<span class='avoidharm'>\The [parent_item.name] softens the damage!</span>")


/datum/component/shield/overhealth/proc/transfer_damage_to_overhealth(absorbing_damage, unabsorbed_damage, silent)
	. = unabsorbed_damage
	var/obj/item/parent_item = parent
	if(absorbing_damage >= shield_integrity)
		. += absorbing_damage - shield_integrity
	if(!silent)
		to_chat(affected, "<span class='avoidharm'>\The [parent_item.name] [. ? "softens" : "soaks"] the damage!</span>")
	damage_overhealth(absorbing_damage)


/datum/component/shield/overhealth/proc/damage_overhealth(amount)
	var/datum/effect_system/spark_spread/s = new
	s.set_up(2, 1, get_turf(parent))
	s.start()
	shield_integrity = max(shield_integrity - amount, 0)
	if(!shield_integrity)
		deactivate_with_user()
		playsound(get_turf(parent), 'sound/halo/EliteDown.ogg', 75, 1)
		return
	if(!next_recharge)
		START_PROCESSING(SSprocessing, src)
	update_overlay(shield_overlay)
	next_recharge = max(next_recharge, world.time + recharge_cooldown)


/datum/component/shield/overhealth/process()
	if(world.time < next_recharge)
		return
	if(shield_integrity >= max_shield_integrity)
		STOP_PROCESSING(SSprocessing, src)
		next_recharge = 0
		update_overlay(shiel_off)
		return
	update_overlay(recharge_overlay)
	var/needs_activation = !shield_integrity
	shield_integrity = min(shield_integrity + integrity_regen, max_shield_integrity)
	next_recharge = max(next_recharge, world.time + recharge_rate)
	if(needs_activation)
		if(affected)
			activate_with_user()
		else
			active = TRUE
		playsound(get_turf(parent), 'sound/halo/EliteLow.ogg', 75, 1)
	else
		playsound(get_turf(parent), 'sound/halo/EliteRecharge.ogg', 50, 1)

/datum/component/shield/overhealth/activate_with_user()
	. = ..()
	if(!shield_integrity)
		return
	update_overlay(shiel_off)

/datum/component/shield/overhealth/deactivate_with_user()
	var/mob/living/carbon/human/affected_human = affected
	affected_human.remove_overlay(OVERHEALTH_SHIELD_LAYER)
	return ..()

/datum/component/shield/overhealth/proc/update_overlay(new_icon_state)
	var/mob/living/carbon/human/affected_human = affected
	affected_human.remove_overlay(OVERHEALTH_SHIELD_LAYER)
	var/mutable_appearance/MA = mutable_appearance(icon, new_icon_state, affected.layer + 0.01)
	MA.pixel_x += margin_x
	affected_human.overlays_standing[OVERHEALTH_SHIELD_LAYER] = list(MA)
	affected_human.apply_overlay(OVERHEALTH_SHIELD_LAYER)

/datum/component/shield/overhealth/energy
	icon = 'icons/effects/effects.dmi'
	cover = list("melee" = 0, "bullet" = 100, "laser" = 100, "energy" = 100, "bomb" = 0, "bio" = 0, "rad" = 0, "fire" = 0, "acid" = 100)
	can_shield = list(COMBAT_PROJ_ATTACK)
	max_shield_integrity = 100
	shield_integrity = 100
	recharge_rate = 1 SECONDS
	integrity_regen = 10 //per recharge_rate
	recharge_cooldown = 5 SECONDS //after being hit
	shield_overlay = "shield-blue"
	recharge_overlay = "shield-blue"
	margin_x = 0
