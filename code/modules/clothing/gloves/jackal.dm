/obj/item/clothing/gloves/jackal
	icon_state = "unggoy"
	item_state = "unggoy"
	actions_types = list(/datum/action/item_action/call_item/sword)

/obj/item/clothing/gloves/jackal/Initialize()
	. = ..()
	AddComponent(/datum/component/shield/directional)
