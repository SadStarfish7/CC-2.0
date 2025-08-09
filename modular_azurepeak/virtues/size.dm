/datum/virtue/size/giant
	name = "Giant"
	desc = "I've always been larger, stronger and hardier than the average person. I tend to lumber around a lot, and my immense size can break down frail, wooden doors."
	added_traits = list(TRAIT_BIGGUY)
	custom_text = "Increases your sprite size."

/datum/virtue/size/giant/apply_to_human(mob/living/carbon/human/recipient)
	recipient.transform = recipient.transform.Scale(1.25, 1.25)
	recipient.transform = recipient.transform.Translate(0, (0.25 * 16))
	recipient.update_transform()

/datum/virtue/size/macro
	name =  "Macro"
	desc = "Somehow, due to a freak accident or magical energies, my form is absolutely colossal. My strength and body are second to none. However, the ground beneath shifts, causing my speed to suffer greatly."
	added_traits = list(TRAIT_MACRO)
	custom_text = "Greatly increases your sprite size. Makes you very strong and durable but reduces your speed close to, if not to the minimum."

/datum/virtue/size/macro/apply_to_human(mob/living/carbon/human/recipient)
	recipient.transform = recipient.transform.Scale(2.25, 2.25)
	recipient.transform = recipient.transform.Translate(0, (0.25 * 35))
	recipient.update_transform()
	recipient.change_stat("strength", 6)
	recipient.change_stat("endurance", 6)
	recipient.change_stat("constitution", 6)
	recipient.change_stat("speed", -14)
	
/datum/virtue/size/micro
	name = "Micro"
	desc ="Somehow, due to a freak accident or magical energies, my form is absolutely tiny. My strength and body are lacking. However, my dimutive size allows me to dodge blows that would otherwise hit others."
	added_traits = list(TRAIT_MICRO)
	custom_text = "Greatly reduces your sprite size. Makes you very agile, but slow. In addition, your stealth will be strengthened greatly. Your strength and durability will be close to, if not the minimum however."

/datum/virtue/size/micro/apply_to_human(mob/living/carbon/human/recipient)
	recipient.transform = recipient.transform.Scale(0.2, 0.2)
	recipient.transform = recipient.transform.Translate(0, (0.25 * 8))
	recipient.update_transform()
	recipient.change_stat("strength", -10)
	recipient.change_stat("endurance", -4)
	recipient.change_stat("constitution", -10)
	recipient.change_stat("speed", -14)
	recipient.pass_flags = PASSMOB
	recipient.adjust_skillrank(/datum/skill/misc/sneaking, 2, TRUE)
	recipient.adjust_skillrank(/datum/skill/misc/stealing, 2, TRUE)
