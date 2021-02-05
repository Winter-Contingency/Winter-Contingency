/obj/item/explosive/grenade/covenant
	name = "\improper plasma grenade"
	desc = "A covenant grenade."
	icon_state = "plasmagrenade"
	item_state = "plasmagrenade"
	det_time = 50
	underslug_launchable = FALSE
	throwforce = 5
	var/burn_damage = 15

/obj/item/explosive/grenade/covenant/attack_self(mob/user)
	. = ..()
	if(active)
		item_state += "_active"

/obj/item/explosive/grenade/covenant/prime()
	if(!QDELETED(src))
		explosion(loc, light_impact_range = 4, small_animation = TRUE)
		qdel(src)

/obj/item/explosive/grenade/frag/flamer_fire_act()
	prime()

/obj/item/explosive/grenade/covenant/throw_impact(atom/hit_atom, speed)
	. = ..()
	if(!active)
		return

	if(isliving(hit_atom))
		var/mob/living/L = hit_atom
		if(ishuman(L))
			for(var/body_part in GLOB.human_body_parts)
				var/armor_block = L.run_armor_check(body_part, BURN)
				L.apply_damage(rand(burn_damage * 0.8, burn_damage * 1.2), BURN, body_part, armor_block) //Do more damage if launched from a proper launcher and active
		else
			var/armor_block = L.run_armor_check(null, BURN)
			L.take_overall_damage(0, rand(burn_damage * 0.8, burn_damage * 1.2), armor_block) //Do more damage if launched from a proper launcher and active
		UPDATEHEALTH(L)
		qdel(src)
