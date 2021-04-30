
//===========================//HALO HELMETS\\=================================\\
//=======================================================================


/obj/item/clothing/head/helmet/halo
	name = "\improper halo helmet"
	desc = "halo helmet"
	icon = 'icons/obj/clothing/cm_hats.dmi'
	sprite_sheet_id = 1
	icon_state = "urf_helmet_brown"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 50, "bomb" = 50, "bio" = 50, "rad" = 50, "fire" = 50, "acid" = 50)
	max_integrity = 5
	flags_inventory = BLOCKSHARPOBJ
	flags_inv_hide = HIDEEARS

//Halo//

/obj/item/clothing/head/helmet/halo/urf
	name = "P1-M combat helmet"
	desc = "A general purpose URF combat helmet."
	icon_state = "urf_helmet_brown"
	item_state = "urf_helmet_brown"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)

/obj/item/clothing/head/helmet/halo/urf/black
	name = "P1-M combat helmet (black)"
	desc = "A general purpose URF combat helmet."
	icon_state = "urf_helmet_black"
	item_state = "urf_helmet_black"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)

/obj/item/clothing/head/helmet/halo/urf/black/engie
	name = "P2-M combat helmet (black)"
	desc = "A general purpose URF combat helmet."
	icon_state = "urf_helmet_black_heavy"
	item_state = "urf_helmet_black_heavy"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)

/obj/item/clothing/head/helmet/halo/urf/black/sl
	name = "P3-M combat helmet (black)"
	desc = "A general purpose URF combat helmet."
	icon_state = "urf_helmet_black_sl"
	item_state = "urf_helmet_black_sl"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)

/obj/item/clothing/head/helmet/halo/urf/black/medic
	name = "P1-M medic helmet (black)"
	desc = "A general purpose URF combat helmet."
	icon_state = "urf_helmet_black_medic"
	item_state = "urf_helmet_black_medic"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)

/obj/item/clothing/head/helmet/halo/urf/green
	name = "P1-M combat helmet (green)"
	desc = "A general purpose URF combat helmet."
	icon_state = "urf_helmet_green"
	item_state = "urf_helmet_green"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)

/obj/item/clothing/head/helmet/halo/urf/white
	name = "P1-M combat helmet (green)"
	desc = "A general purpose URF combat helmet."
	icon_state = "urf_helmet_white"
	item_state = "urf_helmet_white"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)

/obj/item/clothing/head/helmet/halo/urf/blue
	name = "P1-M combat helmet (blue)"
	desc = "A general purpose URF combat helmet."
	icon_state = "urf_helmet_blue"
	item_state = "urf_helmet_blue"
	soft_armor = list("melee" = 53, "bullet" = 53, "laser" = 53, "energy" = 25, "bomb" = 15, "bio" = 50, "rad" = 5, "fire" = 25, "acid" = 45)

/obj/item/clothing/head/helmet/halo/urf/blue/traditional
	name = "Armored Headwear"
	desc = "A piece of traditonal headwear, many insurrectionist warlords favor this over regular clothing."
	icon_state = "innie_warlord"
	item_state = "innie_warlord"


/obj/item/clothing/head/helmet/halo/urf/blue/reno
	name = "Reinforced cowboy hat"
	desc = "A fine example of western headwear, favored by the legendary URF leader 'Johnny Reno'."
	icon_state = "cowboy_hat"
	item_state = "cowboy_hat"
	soft_armor = list("melee" = 53, "bullet" = 53, "laser" = 53, "energy" = 25, "bomb" = 15, "bio" = 50, "rad" = 5, "fire" = 25, "acid" = 45)

//ODST//

/obj/item/clothing/head/helmet/halo/odst
	name = "ODST helmet (standard)"
	desc = "A general purpose ODST helmet."
	icon_state = "odst_helmet"
	item_state = "odst_helmet"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)
	flags_inventory = COVEREYES|COVERMOUTH|BLOCKSHARPOBJ
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDEFACE|HIDEMASK|HIDEALLHAIR


/obj/item/clothing/head/helmet/halo/odst/sl
	name = "ODST helmet (squad leader)"
	desc = "A general purpose ODST SL helmet."
	icon_state = "odst_sl_helmet"
	item_state = "odst_sl_helmet"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)
	flags_inventory = COVEREYES|COVERMOUTH|BLOCKSHARPOBJ
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDEFACE|HIDEMASK|HIDEALLHAIR


/obj/item/clothing/head/helmet/halo/odst/engi
	name = "ODST helmet (engineer)"
	desc = "A general purpose ODST Engineer helmet."
	icon_state = "odst_engi_helmet"
	item_state = "odst_engi_helmet"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)
	flags_inventory = COVEREYES|COVERMOUTH|BLOCKSHARPOBJ
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDEFACE|HIDEMASK|HIDEALLHAIR


/obj/item/clothing/head/helmet/halo/odst/gungnir
	name = "ODST helmet (GUNGNIR)"
	desc = "A general purpose ODST GUNGNIR helmet."
	icon_state = "odst_gungnir_helmet"
	item_state = "odst_gungnir_helmet"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)
	flags_inventory = COVEREYES|COVERMOUTH|BLOCKSHARPOBJ
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDEFACE|HIDEMASK|HIDEALLHAIR


/obj/item/clothing/head/helmet/halo/odst/recon
	name = "ODST helmet (recon)"
	desc = "A general purpose ODST Recon helmet."
	icon_state = "odst_recon_helmet"
	item_state = "odst_recon_helmet"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)
	flags_inventory = COVEREYES|COVERMOUTH|BLOCKSHARPOBJ
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDEFACE|HIDEMASK|HIDEALLHAIR


/obj/item/clothing/head/helmet/halo/odst/medic
	name = "ODST helmet (medic)"
	desc = "A general purpose ODST Medic helmet."
	icon_state = "odst_medic_helmet"
	item_state = "odst_medic_helmet"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)
	flags_inventory = COVEREYES|COVERMOUTH|BLOCKSHARPOBJ
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDEFACE|HIDEMASK|HIDEALLHAIR


/obj/item/clothing/head/helmet/halo/odst/sniper
	name = "ODST helmet (sniper)"
	desc = "A general purpose ODST Sniper helmet."
	icon_state = "odst_sniper_helmet"
	item_state = "odst_sniper_helmet"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)
	flags_inventory = COVEREYES|COVERMOUTH|BLOCKSHARPOBJ
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDEFACE|HIDEMASK|HIDEALLHAIR


/obj/item/clothing/head/helmet/halo/odst/cqc
	name = "ODST helmet (cqc)"
	desc = "A general purpose ODST CQC helmet."
	icon_state = "odst_cqc_helmet"
	item_state = "odst_cqc_helmet"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)
	flags_inventory = COVEREYES|COVERMOUTH|BLOCKSHARPOBJ
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDEFACE|HIDEMASK|HIDEALLHAIR

/obj/item/clothing/head/helmet/halo/odst/loafe
	name = "ODST helmet (loafe)"
	desc = "A general purpose ODST helmet, worn by the ODST 'Loafe'."
	icon_state = "odst_helmet_loafe"
	item_state = "odst_helmet_loafe"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)
	flags_inventory = COVEREYES|COVERMOUTH|BLOCKSHARPOBJ
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDEFACE|HIDEMASK|HIDEALLHAIR

//URFC

/obj/item/clothing/head/helmet/halo/urfc
	name = "URFC helmet (rifleman)"
	desc = "A general purpose URFC rifleman helmet."
	icon_state = "urfc_rifleman_helmet"
	item_state = "urfc_rifleman_helmet"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)
	flags_inventory = COVEREYES|COVERMOUTH|BLOCKSHARPOBJ
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDEFACE|HIDEMASK|HIDEALLHAIR


/obj/item/clothing/head/helmet/halo/urfc/sl
	name = "URFC helmet (sl)"
	desc = "A general purpose URFC squad leader helmet."
	icon_state = "urfc_sl_helmet"
	item_state = "urfc_sl_helmet"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)
	flags_inventory = COVEREYES|COVERMOUTH|BLOCKSHARPOBJ
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDEFACE|HIDEMASK|HIDEALLHAIR


/obj/item/clothing/head/helmet/halo/urfc/medic
	name = "URFC helmet (medic)"
	desc = "A general purpose URFC medic helmet."
	icon_state = "urfc_medic_helmet"
	item_state = "urfc_medic_helmet"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)
	flags_inventory = COVEREYES|COVERMOUTH|BLOCKSHARPOBJ
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDEFACE|HIDEMASK|HIDEALLHAIR


/obj/item/clothing/head/helmet/halo/urfc/engineer
	name = "URFC helmet (engineer)"
	desc = "A general purpose URFC Engineer helmet."
	icon_state = "urfc_engi_helmet"
	item_state = "urfc_engi_helmet"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)
	flags_inventory = COVEREYES|COVERMOUTH|BLOCKSHARPOBJ
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDEFACE|HIDEMASK|HIDEALLHAIR


/obj/item/clothing/head/helmet/halo/urfc/commander
	name = "URFC helmet (commander)"
	desc = "A general purpose URFC commander helmet."
	icon_state = "urfc_commander_helmet"
	item_state = "urfc_commander_helmet"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)
	flags_inventory = COVEREYES|COVERMOUTH|BLOCKSHARPOBJ
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDEFACE|HIDEMASK|HIDEALLHAIR


/obj/item/clothing/head/helmet/halo/urfc/sniper
	name = "URFC helmet (sniper)"
	desc = "A general purpose URFC sniper helmet."
	icon_state = "urfc_sniper_helmet"
	item_state = "urfc_sniper_helmet"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)
	flags_inventory = COVEREYES|COVERMOUTH|BLOCKSHARPOBJ
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDEFACE|HIDEMASK|HIDEALLHAIR


/obj/item/clothing/head/helmet/halo/urfc/sniper
	name = "URFC helmet (engineer)"
	desc = "A general purpose URFC engineer helmet."
	icon_state = "urfc_engi_helmet"
	item_state = "urfc_engi_helmet"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)
	flags_inventory = COVEREYES|COVERMOUTH|BLOCKSHARPOBJ
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDEFACE|HIDEMASK|HIDEALLHAIR


/obj/item/clothing/head/helmet/halo/urfc/socks
	name = "URFC helmet (socks)"
	desc = "A general purpose URFC helmet, worn by the URF commando 'Socks'."
	icon_state = "urfc_socks_helmet"
	item_state = "urfc_socks_helmet"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)
	flags_inventory = COVEREYES|COVERMOUTH|BLOCKSHARPOBJ
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDEFACE|HIDEMASK|HIDEALLHAIR


/obj/item/clothing/head/helmet/halo/urfc/pantas
	name = "URFC helmet (pantas)"
	desc = "A general purpose URFC pantas helmet, worn by the URF commando 'Pantas'."
	icon_state = "urfc_pantas_helmet"
	item_state = "urfc_pantas_helmet"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)
	flags_inventory = COVEREYES|COVERMOUTH|BLOCKSHARPOBJ
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDEFACE|HIDEMASK|HIDEALLHAIR


/obj/item/clothing/head/helmet/halo/urfc/cqb
	name = "URFC helmet (cqb)"
	desc = "A general purpose URFC cqb helmet."
	icon_state = "urfc_cqb_helmet"
	item_state = "urfc_cqb_helmet"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)
	flags_inventory = COVEREYES|COVERMOUTH|BLOCKSHARPOBJ
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDEFACE|HIDEMASK|HIDEALLHAIR

//GCPD//

/obj/item/clothing/head/helmet/halo/gcpd
	name = "PD-M combat helmet"
	desc = "A Colonial Police combat helmet."
	icon_state = "gcpd_helmet"
	item_state = "gcpd_helmet"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)


/obj/item/clothing/head/helmet/halo/gcpd/visor
	name = "PD-V combat helmet"
	desc = "A Colonial Police combat helmet, this one has a visor."
	icon_state = "gcpd_helmet_visor"
	item_state = "gcpd_helmet_visor"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)
	flags_inv_hide = HIDEEARS|HIDEEYES|HIDEFACE|HIDEMASK|HIDEALLHAIR


/obj/item/clothing/head/helmet/halo/gcpd/goggles
	name = "PD-V combat helmet"
	desc = "A Colonial Police combat helmet, this one has a pair of goggles."
	icon_state = "gcpd_helmet_g"
	item_state = "gcpd_helmet_g"
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 22, "bomb" = 12, "bio" = 50, "rad" = 5, "fire" = 22, "acid" = 45)
	flags_inv_hide = HIDEEARS|HIDEEYES


