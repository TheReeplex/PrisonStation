/datum/job/hos
	title = "Head of Security"
	flag = HOS
	head_position = 1
	department = "Security"
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Prison Administrator"
	selection_color = "#8E2929"
	idtype = /obj/item/weapon/card/id/security/head
	req_admin_notify = 1
	economic_modifier = 10
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory,
			            access_forensics_lockers, access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_heads, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory,
			            access_forensics_lockers, access_morgue, access_maint_tunnels, access_all_personal_lockers,
			            access_research, access_engine, access_mining, access_medical, access_construction, access_mailsorting,
			            access_heads, access_hos, access_RC_announce, access_keycard_auth, access_gateway, access_external_airlocks)
	alt_titles = list("Commander")
	minimum_character_age = 25
	minimal_player_age = 14

	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		switch(H.backbag)
			if(2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/security(H), slot_back)
			if(3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel/sec(H), slot_back)
			if(4) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
		H.equip_to_slot_or_del(new /obj/item/device/radio/headset/heads/hos(H), slot_l_ear)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/head_of_security(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/jackboots(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/device/pda/heads/hos(H), slot_belt)
		H.equip_to_slot_or_del(new /obj/item/clothing/gloves/black(H), slot_gloves)
//		H.equip_to_slot_or_del(new /obj/item/clothing/mask/gas(H), slot_wear_mask) //Grab one from the armory you donk
		H.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses/sechud(H), slot_glasses)
		H.equip_to_slot_or_del(new /obj/item/weapon/gun/energy/gun(H), slot_s_store)
		if(H.backbag == 1)
			H.equip_to_slot_or_del(new /obj/item/weapon/handcuffs(H), slot_l_store)
		else
			H.equip_to_slot_or_del(new /obj/item/weapon/handcuffs(H), slot_in_backpack)
		H.implant_loyalty()
		return 1



/datum/job/warden
	title = "Warden"
	flag = WARDEN
	department = "Security"
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the Head of Security"
	selection_color = "#601C1C"
	idtype = /obj/item/weapon/card/id/security
	economic_modifier = 5
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory, access_maint_tunnels, access_morgue, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_armory, access_maint_tunnels, access_external_airlocks)
	minimal_player_age = 5

	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/device/radio/headset/headset_sec(H), slot_l_ear)
		switch(H.backbag)
			if(2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/security(H), slot_back)
			if(3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel/sec(H), slot_back)
			if(4) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/warden(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/jackboots(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/device/pda/warden(H), slot_belt)
		H.equip_to_slot_or_del(new /obj/item/clothing/gloves/black(H), slot_gloves)
		H.equip_to_slot_or_del(new /obj/item/clothing/glasses/sunglasses/sechud(H), slot_glasses)
//		H.equip_to_slot_or_del(new /obj/item/clothing/mask/gas(H), slot_wear_mask) //Grab one from the armory you donk
		H.equip_to_slot_or_del(new /obj/item/device/flash(H), slot_l_store)
		if(H.backbag == 1)
			H.equip_to_slot_or_del(new /obj/item/weapon/handcuffs(H), slot_l_hand)
		else
			H.equip_to_slot_or_del(new /obj/item/weapon/handcuffs(H), slot_in_backpack)
		return 1



/datum/job/detective
	title = "Detective"
	flag = DETECTIVE
	department = "Security"
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	supervisors = "the Head of Security"
	selection_color = "#601C1C"
	idtype = /obj/item/weapon/card/id/security
	alt_titles = list("Forensic Technician","Investigator")
	access = list(access_security, access_sec_doors, access_forensics_lockers, access_morgue, access_maint_tunnels, access_eva, access_external_airlocks)
	minimal_access = list(access_security, access_sec_doors, access_forensics_lockers, access_morgue, access_maint_tunnels, access_eva, access_external_airlocks)
	economic_modifier = 5
	minimal_player_age = 3
	equip(var/mob/living/carbon/human/H, var/alt_title)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/device/radio/headset/headset_sec(H), slot_l_ear)
		switch(H.backbag)
			if(2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack(H), slot_back)
			if(3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel/norm(H), slot_back)
			if(4) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/det(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/laceup(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/device/pda/detective(H), slot_belt)
		H.equip_to_slot_or_del(new /obj/item/clothing/gloves/black(H), slot_gloves)
		H.equip_to_slot_or_del(new /obj/item/weapon/flame/lighter/zippo(H), slot_l_store)
		if(H.backbag == 1)//Why cant some of these things spawn in his office?
			H.equip_to_slot_or_del(new /obj/item/weapon/storage/box/evidence(H), slot_l_hand)
		else
			H.equip_to_slot_or_del(new /obj/item/weapon/storage/box/evidence(H), slot_in_backpack)
		if(has_alt_title(H, alt_title,"Forensic Technician"))
			H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/forensics/blue(H), slot_wear_suit)
			H.equip_to_slot_or_del(new /obj/item/weapon/storage/briefcase/crimekit, slot_r_hand)
		else
			H.equip_to_slot_or_del(new /obj/item/clothing/suit/storage/det_trench(H), slot_wear_suit)
			H.equip_to_slot_or_del(new /obj/item/clothing/head/det(H), slot_head)
		H.equip_to_slot_or_del(new /obj/item/weapon/storage/briefcase/crimekit(H), slot_r_hand)
		return 1



/datum/job/officer
	title = "Security Officer"
	flag = OFFICER
	department = "Security"
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Head of Security"
	selection_color = "#601C1C"
	idtype = /obj/item/weapon/card/id/security
	alt_titles = list("Security Guard")
	economic_modifier = 4
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_morgue, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_external_airlocks)
	minimal_player_age = 3
	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/device/radio/headset/headset_sec(H), slot_l_ear)
		switch(H.backbag)
			if(2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/security(H), slot_back)
			if(3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel/sec(H), slot_back)
			if(4) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/security(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/jackboots(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/device/pda/security(H), slot_belt)
		H.equip_to_slot_or_del(new /obj/item/clothing/gloves/black(H), slot_gloves)
		H.equip_to_slot_or_del(new /obj/item/weapon/handcuffs(H), slot_s_store)
		H.equip_to_slot_or_del(new /obj/item/device/flash(H), slot_l_store)
		if(H.backbag == 1)
			H.equip_to_slot_or_del(new /obj/item/weapon/handcuffs(H), slot_l_hand)
		else
			H.equip_to_slot_or_del(new /obj/item/weapon/handcuffs(H), slot_in_backpack)
		return 1



/datum/job/prison_officer // Not Done
	title = "Correctional Officer"
	flag = COFFICER
	department = "Security"
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Warden, and the Head of Security"
	selection_color = "#601C1C"
	idtype = /obj/item/weapon/card/id/security
	alt_titles = list("Junior Correctional Officer")
	economic_modifier = 4
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_morgue, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_external_airlocks)
	minimal_player_age = 3
	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/device/radio/headset/headset_sec(H), slot_l_ear)
		switch(H.backbag)
			if(2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/security(H), slot_back)
			if(3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel/sec(H), slot_back)
			if(4) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/security(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/jackboots(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/device/pda/security(H), slot_belt)
		H.equip_to_slot_or_del(new /obj/item/clothing/gloves/black(H), slot_gloves)
		H.equip_to_slot_or_del(new /obj/item/weapon/handcuffs(H), slot_s_store)
		H.equip_to_slot_or_del(new /obj/item/device/flash(H), slot_l_store)
		if(H.backbag == 1)
			H.equip_to_slot_or_del(new /obj/item/weapon/handcuffs(H), slot_l_hand)
		else
			H.equip_to_slot_or_del(new /obj/item/weapon/handcuffs(H), slot_in_backpack)
		return 1



/datum/job/swat // Not Done, possibly nees a name change.
	title = "Crisis Response Officer"
	flag = SWAT
	department = "Security"
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 4
	spawn_positions = 4
	supervisors = "the Warden, and the Head of Security"
	selection_color = "#601C1C"
	idtype = /obj/item/weapon/card/id/security
	alt_titles = list("S.W.A.T.") // Too edgy? -Spades
	economic_modifier = 4
	access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_morgue, access_external_airlocks)
	minimal_access = list(access_security, access_eva, access_sec_doors, access_brig, access_maint_tunnels, access_external_airlocks)
	minimal_player_age = 3
	equip(var/mob/living/carbon/human/H)
		if(!H)	return 0
		H.equip_to_slot_or_del(new /obj/item/device/radio/headset/headset_sec(H), slot_l_ear)
		switch(H.backbag)
			if(2) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/security(H), slot_back)
			if(3) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel/sec(H), slot_back)
			if(4) H.equip_to_slot_or_del(new /obj/item/weapon/storage/backpack/satchel(H), slot_back)
		H.equip_to_slot_or_del(new /obj/item/clothing/under/rank/security(H), slot_w_uniform)
		H.equip_to_slot_or_del(new /obj/item/clothing/shoes/jackboots(H), slot_shoes)
		H.equip_to_slot_or_del(new /obj/item/device/pda/security(H), slot_belt)
		H.equip_to_slot_or_del(new /obj/item/clothing/gloves/black(H), slot_gloves)
		H.equip_to_slot_or_del(new /obj/item/weapon/handcuffs(H), slot_s_store)
		H.equip_to_slot_or_del(new /obj/item/device/flash(H), slot_l_store)
		if(H.backbag == 1)
			H.equip_to_slot_or_del(new /obj/item/weapon/handcuffs(H), slot_l_hand)
		else
			H.equip_to_slot_or_del(new /obj/item/weapon/handcuffs(H), slot_in_backpack)
		return 1