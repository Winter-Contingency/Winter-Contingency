// MARINE STORAGE ARMOR


/obj/item/clothing/suit/storage/halo
	name = "\improper halo armor"
	desc = "halo armor"
	icon = 'icons/obj/clothing/cm_suits.dmi'
	icon_state = "3"
	item_state = "armor"
	sprite_sheet_id = 1
	flags_atom = CONDUCT
	flags_armor_protection = CHEST|GROIN|ARMS|LEGS|HANDS|FEET
	flags_cold_protection = CHEST|GROIN|ARMS|LEGS|HANDS|FEET
	flags_heat_protection = CHEST|GROIN|ARMS|LEGS|HANDS|FEET
	min_cold_protection_temperature = ARMOR_MIN_COLD_PROTECTION_TEMPERATURE
	max_heat_protection_temperature = ARMOR_MAX_HEAT_PROTECTION_TEMPERATURE
	blood_overlay_type = "armor"
	soft_armor = list("melee" = 55, "bullet" = 65, "laser" = 65, "energy" = 20, "bomb" = 55, "bio" = 40, "rad" = 10, "fire" = 40, "acid" = 45)
	siemens_coefficient = 0.7
	permeability_coefficient = 0.8
	slowdown = SLOWDOWN_ARMOR_MEDIUM
	allowed = list(
		/obj/item/weapon/gun,
		/obj/item/tank/emergency_oxygen,
		/obj/item/storage/bible,
		/obj/item/storage/belt/sparepouch,
		/obj/item/storage/large_holster/machete,
		/obj/item/weapon/claymore,
		/obj/item/storage/belt/gun,
		/obj/item/storage/belt/knifepouch,
	)
	w_class = WEIGHT_CLASS_HUGE
	time_to_unequip = 2 SECONDS
	time_to_equip = 2 SECONDS
	pockets = /obj/item/storage/internal/suit/halo

/obj/item/storage/internal/suit/halo
	bypass_w_limit = list(
		/obj/item/ammo_magazine/rifle,
		/obj/item/ammo_magazine/smg,
		/obj/item/ammo_magazine/sniper,
		/obj/item/cell/lasgun,
	)
	max_storage_space = 6

//HALO


//URF
/obj/item/clothing/suit/storage/halo/urf
	name = "P2-M Body Armor (brown)"
	desc = "A set of United Rebel Front pattern two medium body armor. Provides decent protection against small arms and bladed objects."
	icon_state = "urf_armor_brown"
	item_state = "urf_armor_brown"
	slowdown = SLOWDOWN_ARMOR_MEDIUM
	flags_armor_protection = CHEST|GROIN|ARMS|LEGS|HANDS|FEET
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 50, "bomb" = 50, "bio" = 50, "rad" = 50, "fire" = 50, "acid" = 50)

/obj/item/clothing/suit/storage/halo/urf/black
	name = "P2-M Body Armor (black)"
	desc = "A set of United Rebel Front pattern two medium body armor. Provides decent protection against small arms and bladed objects."
	icon_state = "urf_armor_black"
	item_state = "urf_armor_black"

/obj/item/clothing/suit/storage/halo/urf/green
	name = "P2-M Body Armor (green)"
	desc = "A set of United Rebel Front pattern two medium body armor. Provides decent protection against small arms and bladed objects."
	icon_state = "urf_armor_green"
	item_state = "urf_armor_green"

/obj/item/clothing/suit/storage/halo/urf/white
	name = "P2-M Body Armor (white)"
	desc = "A set of United Rebel Front pattern two medium body armor. Provides decent protection against small arms and bladed objects."
	icon_state = "urf_armor_white"
	item_state = "urf_armor_white"

/obj/item/clothing/suit/storage/halo/urf/blue
	name = "P2-M Body Armor (blue)"
	desc = "A set of United Rebel Front pattern two medium body armor. Provides decent protection against small arms and bladed objects."
	icon_state = "urf_armor_blue"
	item_state = "urf_armor_blue"
	soft_armor = list("melee" = 53, "bullet" = 53, "laser" = 53, "energy" = 53, "bomb" = 53, "bio" = 53, "rad" = 50, "fire" = 53, "acid" = 50)

/obj/item/clothing/suit/storage/halo/urf/blue/traditional
	name = "traditional body armor"
	desc = "A set of traditional United Rebel Front body armor. Provides decent protection against small arms and bladed objects."
	icon_state = "innie_warlord"
	item_state = "innie_warlord"

/obj/item/clothing/suit/storage/halo/urf/blue/reno
	name = "Armored duster coat"
	desc = "A western duster fitted with armor plates. Provides decent protection against small arms and bladed objects."
	icon_state = "urf_armor_reno"
	item_state = "urf_armor_reno"

//ODST

/obj/item/clothing/suit/storage/halo/odst
	name = "ODST Body Armor (standard)"
	desc = "A set of Orbital Drop Shock Trooper standard body armor. Provides decent protection against small arms and bladed objects."
	icon_state = "odst_armor"
	item_state = "odst_armor"
	slowdown = SLOWDOWN_ARMOR_MEDIUM
	flags_armor_protection = CHEST|GROIN|ARMS|LEGS|HANDS|FEET
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 50, "bomb" = 50, "bio" = 50, "rad" = 50, "fire" = 50, "acid" = 50)

/obj/item/clothing/suit/storage/halo/odst/sl
	name = "ODST Body Armor (squad leader)"
	desc = "A set of Orbital Drop Shock Trooper SL body armor. Provides decent protection against small arms and bladed objects."
	icon_state = "odst_armor_sl"
	item_state = "odst_armor_sl"


/obj/item/clothing/suit/storage/halo/odst/cqc
	name = "ODST Body Armor (cqc)"
	desc = "A set of Orbital Drop Shock Trooper CQC body armor. Provides decent protection against small arms and bladed objects."
	icon_state = "odst_armor_cqc"
	item_state = "odst_armor_cqc"


/obj/item/clothing/suit/storage/halo/odst/engi
	name = "ODST Body Armor (engineer)"
	desc = "A set of Orbital Drop Shock Trooper Engineer body armor. Provides decent protection against small arms and bladed objects."
	icon_state = "odst_armor_engi"
	item_state = "odst_armor_engi"


/obj/item/clothing/suit/storage/halo/odst/sniper
	name = "ODST Body Armor (sniper)"
	desc = "A set of Orbital Drop Shock Trooper Sniper body armor. Provides decent protection against small arms and bladed objects."
	icon_state = "odst_armor_sniper"
	item_state = "odst_armor_sniper"


/obj/item/clothing/suit/storage/halo/odst/medic
	name = "ODST Body Armor (medic)"
	desc = "A set of Orbital Drop Shock Trooper Medic body armor. Provides decent protection against small arms and bladed objects."
	icon_state = "odst_armor_medic"
	item_state = "odst_armor_medic"


/obj/item/clothing/suit/storage/halo/odst/loafe
	name = "ODST Body Armor (loafe)"
	desc = "A set of Orbital Drop Shock Trooper body armor, worn by the ODST 'Loafe'. Provides decent protection against small arms and bladed objects."
	icon_state = "odst_armor_loafe"
	item_state = "odst_armor_loafe"



//URFC

/obj/item/clothing/suit/storage/halo/urfc
	name = "URFC Body Armor (rifleman)"
	desc = "A set of URF Commando rifleman body armor. Provides decent protection against small arms and bladed objects."
	icon_state = "urfc_rifleman"
	item_state = "urfc_rifleman"
	slowdown = SLOWDOWN_ARMOR_MEDIUM
	flags_armor_protection = CHEST|GROIN|ARMS|LEGS|HANDS|FEET
	soft_armor = list("melee" = 50, "bullet" = 50, "laser" = 50, "energy" = 50, "bomb" = 50, "bio" = 50, "rad" = 50, "fire" = 50, "acid" = 50)
	flags_item_map_variant = NONE

/obj/item/clothing/suit/storage/halo/urfc/sl
	name = "URFC Body Armor (squad leader)"
	desc = "A set of URF Commando squad leader body armor. Provides decent protection against small arms and bladed objects."
	icon_state = "urfc_sl"
	item_state = "urfc_sl"


/obj/item/clothing/suit/storage/halo/urfc/sniper
	name = "URFC Body Armor (sniper)"
	desc = "A set of URF Commando sniper body armor. Provides decent protection against small arms and bladed objects."
	icon_state = "urfc_sniper"
	item_state = "urfc_sniper"


/obj/item/clothing/suit/storage/halo/urfc/medic
	name = "URFC Body Armor (medic)"
	desc = "A set of URF Commando medic body armor. Provides decent protection against small arms and bladed objects."
	icon_state = "urfc_medic"
	item_state = "urfc_medic"


/obj/item/clothing/suit/storage/halo/urfc/engineer
	name = "URFC Body Armor (engineer)"
	desc = "A set of URF Commando Engineer body armor. Provides decent protection against small arms and bladed objects."
	icon_state = "urfc_engi"
	item_state = "urfc_engi"


/obj/item/clothing/suit/storage/halo/urfc/cqb
	name = "URFC Body Armor (cqb)"
	desc = "A set of URF Commando CQB body armor. Provides decent protection against small arms and bladed objects."
	icon_state = "urfc_cqb"
	item_state = "urfc_cqb"

/obj/item/clothing/suit/storage/halo/urfc/commander
	name = "URFC Body Armor (commander)"
	desc = "A set of URF Commando commander body armor. Provides decent protection against small arms and bladed objects."
	icon_state = "urfc_commander"
	item_state = "urfc_commander"


/obj/item/clothing/suit/storage/halo/urfc/socks
	name = "URFC Body Armor (socks)"
	desc = "A set of URF Commando body armor, worn by the URF commando 'Socks'. Provides decent protection against small arms and bladed objects."
	icon_state = "urfc_socks"
	item_state = "urfc_socks"


/obj/item/clothing/suit/storage/halo/urfc/pantas
	name = "URFC Body Armor (pantas)"
	desc = "A set of URF Commando body armor, worn by the URF commando 'Pantas'. Provides decent protection against small arms and bladed objects."
	icon_state = "urfc_pantas"
	item_state = "urfc_pantas"


//GCPD

/obj/item/clothing/suit/storage/halo/gcpd
	name = "PD-M Body Armor"
	desc = "A set of Colonial Police protective body armor. Provides decent protection against small arms and bladed objects."
	icon_state = "gcpd_m"
	item_state = "gcpd_m"
	slowdown = SLOWDOWN_ARMOR_MEDIUM
	flags_armor_protection = CHEST|GROIN|ARMS|LEGS|HANDS|FEET
	soft_armor = list("melee" = 55, "bullet" = 45, "laser" = 30, "energy" = 45, "bomb" = 60, "bio" = 30, "rad" = 30, "fire" = 30, "acid" = 30)
	flags_item_map_variant = NONE

/obj/item/clothing/suit/storage/halo/gcpd_h
	name = "PD-H Body Armor"
	desc = "A set of Heavy Colonial Police protective body armor. Provides great protection against small arms and bladed objects."
	icon_state = "gcpd_h"
	item_state = "gcpd_h"
	slowdown = SLOWDOWN_ARMOR_HEAVY
	flags_armor_protection = CHEST|GROIN|ARMS|LEGS|HANDS|FEET
	soft_armor = list("melee" = 65, "bullet" = 53, "laser" = 35, "energy" = 50, "bomb" = 60, "bio" = 30, "rad" = 30, "fire" = 30, "acid" = 30)
	flags_item_map_variant = NONE

/obj/item/clothing/suit/storage/halo/gcpd_l
	name = "PD-H Body Armor"
	desc = "A set of Light Colonial Police protective body armor. Provides great protection against small arms and bladed objects."
	icon_state = "gcpd_l"
	item_state = "gcpd_l"
	slowdown = SLOWDOWN_ARMOR_VERY_LIGHT
	flags_armor_protection = CHEST|GROIN|ARMS|LEGS|HANDS|FEET
	soft_armor = list("melee" = 40, "bullet" = 40, "laser" = 40, "energy" = 30, "bomb" = 60, "bio" = 30, "rad" = 30, "fire" = 30, "acid" = 30)
	flags_item_map_variant = NONE


