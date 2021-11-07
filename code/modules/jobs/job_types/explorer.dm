/datum/job/explorer
	title = "Explorer"
	flag = EXPLORER
	department_head = list("Research Director")
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 2
	spawn_positions = 0
	supervisors = "the research director"
	selection_color = "#a085ce"
	exp_requirements = 60
	exp_type = EXP_TYPE_CREW

	outfit = /datum/outfit/job/explorer
	plasma_outfit = /datum/outfit/plasmaman/science

	access = list(ACCESS_RESEARCH, ACCESS_GATEWAY, ACCESS_AWAY_MED)
	minimal_access = list(ACCESS_TOX, ACCESS_TOX_STORAGE, ACCESS_RESEARCH, ACCESS_XENOBIOLOGY, ACCESS_MINERAL_STOREROOM, ACCESS_GATEWAY, ACCESS_AWAY_MED)
	paycheck = PAYCHECK_MEDIUM
	paycheck_department = ACCOUNT_SCI

	display_order = JOB_DISPLAY_ORDER_EXPLORER
	threat = 1.2

/datum/outfit/job/explorer
	name = "Explorer"
	jobtype = /datum/job/explorer

	belt = /obj/item/pda/toxins
	ears = /obj/item/radio/headset/headset_sci
	uniform = /obj/item/clothing/under/rank/rnd/scientist
	shoes = /obj/item/clothing/shoes/sneakers/white
	suit = /obj/item/clothing/suit/toggle/labcoat/science

	backpack = /obj/item/storage/backpack/science
	satchel = /obj/item/storage/backpack/satchel/tox
