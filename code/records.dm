/datum/record
	var/name = "generic record"
	var/author = "unnamed author"
	var/date_added				// Date record was created IC'ly.

	var/details					// Bulk of the record.

	//ooc info
	var/author_ckey = "n/a"		// Ckey of the person who created this record.
	var/game_id_created			// what game id this record was made on
	var/expiration				// If this record self_deletes at some point. (not yet implemented)

	var/ckey					// Player's ckey of this record. For aboose tracking purposes.

/datum/record/proc/set_record(r_name, r_author, r_ckey, r_date_added, r_details, added_ckey)
	name = r_name
	author = r_author
	author_ckey = r_ckey

	if(!r_date_added)
		date_added = full_game_time()
	else
		date_added = r_date_added

	details = r_details
	game_id_created = game_id

	ckey = added_ckey

/proc/make_new_record(record_type, r_name, r_author, r_ckey, r_date_added, r_details, added_ckey)
	var/datum/record/R = new record_type
	R.set_record(r_name, r_author, r_ckey, r_date_added, r_details, added_ckey)

	return R

/datum/record/security
	var/pardon_status = FALSE		// If this affects voting or not.

/datum/record/medical
	var/medical_institution = "n/a"	// Where this record took place.

/datum/record/employment
	var/employment_place = "n/a"	// Where this record took place.
