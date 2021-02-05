/obj/item/explosive/grenade/covenant
	name = "\improper plasma grenade"
	desc = "A covenant grenade."
	icon_state = "plasmagrenade"
	item_state = "plasmagrenade"
	det_time = 50
	underslug_launchable = FALSE
	throwforce = 5
	var/burn_damage = 15
	var/mob/living/mob_target
	var/delay_to_explote = 1.5 SECONDS

/obj/item/explosive/grenade/covenant/attack_self(mob/user)
	. = ..()
	if(active)
		item_state += "_active"

/obj/item/explosive/grenade/covenant/prime()
	if(!QDELETED(src) && !mob_target)
		explosion(loc, light_impact_range = 4, small_animation = TRUE)
		qdel(src)

/obj/item/explosive/grenade/frag/flamer_fire_act()
	prime()

/obj/item/explosive/grenade/covenant/throw_impact(atom/hit_atom, speed)
	. = ..()
	if(!active)
		return .
	if(isliving(hit_atom))
		mob_target = hit_atom
		RegisterSignal(mob_target, COMSIG_MOVABLE_MOVED, .proc/move_to_target)
		layer = ABOVE_ALL_MOB_LAYER
		spawn(delay_to_explote)
			playsound(get_turf(mob_target), get_sfx("explosion"), 50, 1)
			if(ishuman(mob_target))
				for(var/body_part in GLOB.human_body_parts)
					var/armor_block = mob_target.run_armor_check(body_part, BURN)
					mob_target.apply_damage(rand(burn_damage * 0.8, burn_damage * 1.2), BURN, body_part, armor_block) //Do more damage if launched from a proper launcher and active
			else
				var/armor_block = mob_target.run_armor_check(null, BURN)
				mob_target.take_overall_damage(0, rand(burn_damage * 0.8, burn_damage * 1.2), armor_block) //Do more damage if launched from a proper launcher and active
			UPDATEHEALTH(mob_target)
			qdel(src)

/obj/item/explosive/grenade/covenant/proc/move_to_target()
	forceMove(get_turf(mob_target))

/obj/item/explosive/grenade/covenant/Destroy()
	UnregisterSignal(mob_target, COMSIG_MOVABLE_MOVED)
	return ..()
