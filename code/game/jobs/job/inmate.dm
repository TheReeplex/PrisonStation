/datum/job/inmate
	title = "Inmate"
	flag = INMATE
	department = "Prisoner"
	department_flag = PRISONER
	faction = "Station" // Does this actually do anything?
	total_positions = -1
	spawn_positions = 20 // Change this if more cells get added.
	supervisors = "absolutely everyone"
	selection_color = "#FF6600"
	economic_modifier = 1
	access = list()			//See /datum/job/inmate/get_access()
	minimal_access = list()	//See /datum/job/inmate/get_access()

	equip(var/mob/living/carbon/human/H, var/alt_title)
		if(!H)	return 0
		switch(H.backbag)
			if(2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack(H), slot_back)
			if(3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel/norm(H), slot_back)
			if(4) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
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

// ToDo: Add prisoner jobs. Everything below this line not done.


// We're recruiting prisoners to mine.
/datum/job/mining
	title = "Shaft Mine Laborer"
	flag = MINER
	department = "Prisoner"
	department_flag = PRISONER
	faction = "Station"
	total_positions = 3
	spawn_positions = 3
	supervisors = "the mining foreman, and the head of personnel"
	selection_color = "#FF6600"
	idtype = /obj/item/weapon/card/id/cargo // ToDo: Add prisoner IDs
	economic_modifier = 5
	access = list(access_maint_tunnels, access_mailsorting, access_cargo, access_cargo_bot, access_mining, access_mining_station)
	minimal_access = list(access_mining, access_mining_station, access_mailsorting)
	alt_titles = list("Drill Technician","Prospector")

	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/device/radio/headset/headset_cargo (H), slot_l_ear)
		switch(H.backbag)
			if(2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack(H), slot_back)
			if(3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel/norm(H), slot_back)
			if(4) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/color/orange(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/orange(H), slot_shoes)
		if(H.backbag == 1)
			H.equip_to_slot_or_del(new /obj/item/weapon/crowbar(H), slot_l_hand)
			H.equip_to_slot_or_del(new /obj/item/weapon/storage/bag/ore(H), slot_l_store)
		else
			H.equip_to_slot_or_del(new /obj/item/weapon/crowbar(H), slot_in_backpack)
			H.equip_to_slot_or_del(new /obj/item/weapon/storage/bag/ore(H), slot_in_backpack)

		var/obj/item/clothing/under/color/orange/uniform = H.w_uniform
		var/obj/item/clothing/accessory/armband/mining/armband = new()
		uniform.attach_accessory(null, armband)

		return 1

	equip_survival(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.species.equip_survival_gear(H,1)
		return 1



/datum/job/hydro
	title = "Food Processing Worker"
	flag = BOTANIST
	department = "Prisoner"
	department_flag = PRISONER
	faction = "Station"
	total_positions = 2
	spawn_positions = 1
	supervisors = "the kitchen foreman, and the production foreman"
	selection_color = "#FF6600"
	idtype = /obj/item/weapon/card/id/civilian
	access = list(access_hydroponics, access_bar, access_kitchen)
	minimal_access = list(access_hydroponics)
	alt_titles = list("Garden Laborer","Plantation Laborer")


	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/device/radio/headset/headset_service(H), slot_l_ear)
		switch(H.backbag)
			if(2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack(H), slot_back)
			if(3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel/norm(H), slot_back)
			if(4) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/color/orange(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/orange(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/clothing/gloves/botanic_leather(H), slot_gloves)
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/apron(H), slot_wear_suit)
		H.equip_to_slot_or_del(new /obj/item/device/analyzer/plant_analyzer(H), slot_s_store)
		var/obj/item/clothing/under/color/orange/uniform = H.w_uniform
		var/obj/item/clothing/accessory/armband/hydro/armband = new()
		uniform.attach_accessory(null, armband)
		return 1



/datum/job/prisoner_chef
	title = "Kitchen Worker"
	flag = PCHEF
	department = "Prisoner"
	department_flag = PRISONER
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the kitchen foreman"
	selection_color = "#FF6600"
	idtype = /obj/item/weapon/card/id/civilian
	access = list(access_hydroponics, access_bar, access_kitchen)
	minimal_access = list(access_kitchen)
	alt_titles = list("Dish Cleaner","Busser")


	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/device/radio/headset/headset_service(H), slot_l_ear)
		switch(H.backbag)
			if(2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack(H), slot_back)
			if(3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel/norm(H), slot_back)
			if(4) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/color/orange(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/orange(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/clothing/head/chefhat(H), slot_head)
		var/obj/item/clothing/under/color/orange/uniform = H.w_uniform
		var/obj/item/clothing/accessory/armband/hydro/armband = new()
		uniform.attach_accessory(null, armband)
		return 1



/datum/job/worker
	title = "Factory Worker"
	flag = WORKER
	department = "Prisoner"
	department_flag = PRISONER
	faction = "Station"
	total_positions = 2
	spawn_positions = 1
	supervisors = "the production foreman"
	selection_color = "#FF6600"
	idtype = /obj/item/weapon/card/id/civilian
	access = list(access_hydroponics, access_bar, access_kitchen)
	minimal_access = list(access_hydroponics)
	alt_titles = list("Production Worker","Assembly Line Worker")


	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/device/radio/headset/headset_service(H), slot_l_ear)
		switch(H.backbag)
			if(2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack(H), slot_back)
			if(3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel/norm(H), slot_back)
			if(4) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/color/orange(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/orange(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/clothing/gloves/botanic_leather(H), slot_gloves)
		H.equip_to_slot_or_del(new /obj/item/clothing/suit/apron(H), slot_wear_suit)
		H.equip_to_slot_or_del(new /obj/item/device/analyzer/plant_analyzer(H), slot_s_store)
		var/obj/item/clothing/under/color/orange/uniform = H.w_uniform
		var/obj/item/clothing/accessory/armband/production/armband = new()
		uniform.attach_accessory(null, armband)
		return 1