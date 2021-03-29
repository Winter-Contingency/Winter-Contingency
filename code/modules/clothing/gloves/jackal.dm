/obj/item/clothing/gloves/jackal
	icon_state = "unggoy"
	item_state = "unggoy"

/obj/item/clothing/gloves/jackal/Initialize()
	. = ..()
	AddComponent(/datum/component/shield/overhealth/directional)

