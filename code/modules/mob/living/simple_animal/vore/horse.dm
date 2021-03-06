/mob/living/simple_mob/horse
	name = "horse"
	desc = "Don't look it in the mouth."
	tt_desc = "Equus ferus caballus"
	icon = 'icons/mob/vore.dmi'
	icon_state = "horse"
	icon_living = "horse"
	icon_dead = "horse-dead"

	faction = "horse"
	maxHealth = 60
	health = 60

	turns_per_move = 5
	see_in_dark = 6

	response_help  = "pets"
	response_disarm = "gently pushes aside"
	response_harm   = "kicks"

	melee_damage_lower = 1
	melee_damage_upper = 5
	attacktext = list("kicked")

	speak_chance = 1
	speak = list("NEHEHEHEHEH","Neh?")
	speak_emote = list("whinnies")
	emote_hear = list("snorts")
	emote_see = list("shakes its head", "stamps a hoof", "looks around")

	meat_amount = 4
	meat_type = /obj/item/reagent_containers/food/snacks/meat

	max_buckled_mobs = 1 //Yeehaw
	can_buckle = TRUE
	buckle_movable = TRUE
	buckle_lying = FALSE
	mount_offset_x = 0

// Activate Noms!
/mob/living/simple_mob/horse
	vore_active = 1
	vore_icons = SA_ICON_LIVING

/mob/living/simple_animal/horse/Login()
	. = ..()
	if(!riding_datum)
		riding_datum = new /datum/riding/simple_animal(src)
	verbs |= /mob/living/simple_animal/proc/animal_mount

/mob/living/simple_animal/horse/MouseDrop_T(mob/living/M, mob/living/user)
	return