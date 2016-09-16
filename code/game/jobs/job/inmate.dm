/datum/job/inmate
	title = "Inmate"
	flag = INMATE
	department = "Inmate"
	department_flag = CIVILIAN
	faction = "Inmate"
	total_positions = -1
	spawn_positions = -1
	supervisors = "absolutely everyone"
	selection_color = "#515151"
	economic_modifier = 1
	access = list()			//See /datum/job/inmate/get_access()
	minimal_access = list()	//See /datum/job/inmate/get_access()
//	alt_titles = list("Technical Inmate","Medical Intern","Research Inmate","Visitor", "Resident")

/datum/job/inmate/equip(var/mob/living/carbon/human/H, var/alt_title)
	if(!H)	return 0
	switch(H.backbag)
		if(2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack(H), slot_back)
		if(3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel/norm(H), slot_back)
		if(4) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
/*	if(has_alt_title(H, alt_title,"Visitor")) //I doubt someone visiting the station would want to wear an ugly grey uniform
		H.equip_to_slot_or_del(new /obj/item/clothing/under/assistantformal(H), slot_w_uniform)
	else if(has_alt_title(H, alt_title,"Resident"))
		H.equip_to_slot_or_del(new /obj/item/clothing/under/color/white(H), slot_w_uniform)
	else*/
	H.equip_to_slot_or_del(new /obj/item/clothing/under/color/orange(H), slot_w_uniform)
	H.equip_to_slot_or_del(new /obj/item/clothing/shoes/orange(H), slot_shoes)
	return 1

/* // Inmates should probably never have maintinence access. Code commented out just so any new psudeo-assistant jobs that might need it can have it.
/datum/job/inmate/get_access()
	if(config.assistant_maint)
		return list(access_maint_tunnels)
	else
		return list()
*/