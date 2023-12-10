/datum/species/hivelord
	name = "Hive Lord"
	name_plural = "hive lords"

	default_form = FORM_HIVEMIND

	unarmed_types = list(/datum/unarmed_attack/stomp, /datum/unarmed_attack/kick, /datum/unarmed_attack/punch)
	flags = NO_BREATHE | NO_PAIN | NO_BLOOD | NO_SCAN | NO_POISON | NO_MINOR_CUT
	spawn_flags = IS_RESTRICTED
	siemens_coefficient = 0
	total_health = 200
	brute_mod =     0.25                    // Physical damage multiplier.
	burn_mod =      0.25                    // Burn damage multiplier.
	oxy_mod =       0                    // Oxyloss modifier
	toxins_mod =    0                  // Toxloss modifier
	radiation_mod = 0                    // Radiation modifier
	flash_mod =     0
	darksight = 8

	breath_type = null
	poison_type = null

	has_process = list(
		BP_BRAIN = /obj/item/organ/internal/vital/brain
		)

/datum/species/hivelord/handle_post_spawn(var/mob/living/carbon/human/H)
	if(H.mind)
		H.mind.assigned_role = "Hive Lord"
	H.real_name = "hive lord ([rand(1, 1000)])"
	H.name = H.real_name
	H.faction = "hive"
	..()
