//covenant weapons
/obj/item/weapon/gun/energy/lasgun/plasma //debug item, temporarily it's just a copy of /obj/item/weapon/gun/energy/lasgun
	name = "\improper plasmagun"
	desc = "A laser based firearm. Uses power cells."
	reload_sound = 'sound/weapons/guns/interact/rifle_reload.ogg'
	fire_sound = 'sound/weapons/guns/fire/laser.ogg'
	load_method = CELL //codex
	ammo = /datum/ammo/energy/plasmarifle
	flags_equip_slot = ITEM_SLOT_BACK
	muzzleflash_iconstate = "muzzle_flash_laser"
	w_class = WEIGHT_CLASS_BULKY
	force = 15
	overcharge = FALSE
	flags_gun_features = GUN_AUTO_EJECTOR|GUN_CAN_POINTBLANK|GUN_ENERGY|GUN_AMMO_COUNTER
	aim_slowdown = 0.75
	wield_delay = 1 SECONDS
	gun_skill_category = GUN_SKILL_RIFLES

	fire_delay = 3
	accuracy_mult = 1.5
	accuracy_mult_unwielded = 0.6
	scatter_unwielded = 80
	damage_falloff_mult = 0.5
	burst_delay = 1.5
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO)
	var/overheat_time
	var/overheat_cooldown = 20 SECONDS
	var/overheat_count = 0
	var/overheat_limit = 10

/obj/item/weapon/gun/energy/lasgun/plasma/apply_gun_modifiers(obj/projectile/projectile_to_fire, atom/target)
	. = ..()
	if(overcharge && projectile_to_fire.ammo.flags_ammo_behavior & AMMO_ENERGY)
		projectile_to_fire.damage *= 2

/obj/item/weapon/gun/energy/lasgun/plasma/examine(mob/user)
	. = ..()
	is_overheat(user, TRUE)

/obj/item/weapon/gun/energy/lasgun/plasma/able_to_fire(mob/user)
	. = ..()
	if(. && is_overheat(user))
		return FALSE

/obj/item/weapon/gun/energy/lasgun/plasma/proc/is_overheat(mob/user, from_examine)
	. = FALSE
	update_overheat()
	if(overheat_count > 0)
		if(overheat_count > overheat_limit)
			. = TRUE
			if(user)
				to_chat(user, "<span class='warning'>[src] has overheated!.</span>")
				to_chat(user, "<span class='notice'>You need to manually ventilated [src]!.</span>")
		else if(from_examine)
			to_chat(user, "<span class='warning'>[src] is starting to overheat!</span>")


/obj/item/weapon/gun/energy/lasgun/plasma/proc/update_overheat()
	if(overheat_count <= overheat_limit && overheat_count > 0)
		var/delta = world.time - overheat_time
		if(delta > 0)
			overheat_count -= delta/overheat_cooldown
			overheat_count = max(0, overheat_count)
			overheat_time = world.time

/obj/item/weapon/gun/energy/lasgun/plasma/proc/update_delay()
	update_overheat()
	set_fire_delay(initial(fire_delay))
	if(overcharge)
		modify_fire_delay(0,2)
	if(overheat_count > 0)
		modify_fire_delay(max(overheat_count - 1, 0) * 0.25)

/obj/item/weapon/gun/energy/lasgun/plasma/on_fire()
	update_delay()
	if(overcharge)
		overheat_count++
		overheat_time = max(world.time + overheat_cooldown, overheat_time)
		update_delay()

/obj/item/weapon/gun/energy/lasgun/plasma/unique_action(mob/user)
	return toggle_chargemode(user)

//Toggles Overcharge mode. Overcharge mode significantly increases damage and AP in exchange for doubled ammo usage and increased fire delay.
/obj/item/weapon/gun/energy/lasgun/plasma/toggle_chargemode(mob/user)
	if(overcharge == FALSE)
		if(!cell)
			playsound(user, 'sound/machines/buzz-two.ogg', 15, 0, 2)
			to_chat(user, "<span class='warning'>You attempt to toggle on [src]'s overcharge mode but you have no battery loaded.</span>")
			return
		if(cell.charge < ENERGY_OVERCHARGE_AMMO_COST)
			playsound(user, 'sound/machines/buzz-two.ogg', 15, 0, 2)
			to_chat(user, "<span class='warning'>You attempt to toggle on [src]'s overcharge mode but your battery pack lacks adequate charge to do so.</span>")
			return
		//While overcharge is active, double ammo consumption, and
		playsound(user, 'sound/weapons/emitter.ogg', 5, 0, 2)
		charge_cost = ENERGY_OVERCHARGE_AMMO_COST
		update_delay()
		fire_sound = 'sound/weapons/guns/fire/laser3.ogg'
		to_chat(user, "[icon2html(src, user)] You [overcharge ? "<B>disable</b>" : "<B>enable</b>" ] [src]'s overcharge mode.")
		overcharge = TRUE
	else
		playsound(user, 'sound/weapons/emitter2.ogg', 5, 0, 2)
		charge_cost = ENERGY_STANDARD_AMMO_COST
		fire_sound = 'sound/weapons/guns/fire/laser.ogg'
		to_chat(user, "[icon2html(src, user)] You [overcharge ? "<B>disable</b>" : "<B>enable</b>" ] [src]'s overcharge mode.")
		overcharge = FALSE
		if(is_overheat())
			overheat_count = overheat_limit * 0.8
			to_chat(user, "[icon2html(src, user)] You you vent manually [src].")
		update_delay()

	//load_into_chamber()

	if(user)
		var/obj/screen/ammo/A = user.hud_used.ammo //The ammo HUD
		A.update_hud(user)

	return TRUE

/obj/item/weapon/gun/energy/lasgun/plasma/pistol
	name = "Type-25 Directed Energy Pistol"
	desc = "A plasma pistol. Uses covenant energy cells."
	icon_state = "plasmapistol"
	item_state = "plasmapistol"
	reload_sound = 'sound/halo/cov_carbine_reload.ogg'
	fire_sound = 'sound/halo/haloplasmapistol.ogg'
	ammo = /datum/ammo/energy/plasmapistol
	cell_type = /obj/item/cell/lasgun/plasma
	flags_equip_slot = ITEM_SLOT_BELT
	flags_gun_features = GUN_CAN_POINTBLANK|GUN_ENERGY|GUN_AMMO_COUNTER
	overheat_limit = 10

/obj/item/weapon/gun/energy/lasgun/plasma/pistol/apply_gun_modifiers(obj/projectile/projectile_to_fire, atom/target)
	. = ..()
	if(overcharge && projectile_to_fire.ammo.flags_ammo_behavior & AMMO_ENERGY)
		projectile_to_fire.emp_act = TRUE

/obj/item/weapon/gun/energy/lasgun/plasma/rifle
	name = "Type-25 Directed Energy Rifle"
	desc = "A plasma rifle. Uses covenant energy cells."
	icon_state = "plasmarifle"
	item_state = "plasmarifle"
	reload_sound = 'sound/halo/cov_carbine_reload.ogg'
	fire_sound = 'sound/halo/plasrifle3burst.ogg'
	ammo = /datum/ammo/energy/plasmarifle
	cell_type = /obj/item/cell/lasgun/plasma
	flags_equip_slot = ITEM_SLOT_BELT
	flags_gun_features = GUN_CAN_POINTBLANK|GUN_ENERGY|GUN_AMMO_COUNTER
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_BURSTFIRE, GUN_FIREMODE_AUTOMATIC, GUN_FIREMODE_AUTOBURST)
	overheat_limit = 15
	burst_amount = 2

/obj/item/weapon/gun/energy/lasgun/plasma/repeater
	name = "Type-51 Plasma Repeater"
	desc = "A plasma repeater. Uses covenant energy cells."
	icon_state = "repeater"
	item_state = "repeater"
	reload_sound = 'sound/halo/cov_carbine_reload.ogg'
	fire_sound = 'sound/halo/plasrifle3burst.ogg'
	ammo = /datum/ammo/energy/plasmarifle
	cell_type = /obj/item/cell/lasgun/plasma/large
	gun_firemode_list = list(GUN_FIREMODE_SEMIAUTO, GUN_FIREMODE_AUTOMATIC)
	flags_equip_slot = ITEM_SLOT_BELT
	flags_gun_features = GUN_ENERGY|GUN_AMMO_COUNTER
	overheat_limit = 20
