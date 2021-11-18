/datum/dna/update_body_size(old_size)
	if(!holder || features["body_size"] == old_size)
		return
	//new size detected
	holder.resize = features["body_size"] / old_size
	holder.update_transform(old_size)
	if(iscarbon(holder))
		var/mob/living/carbon/carbon_holder = holder
		var/penalty_threshold = CONFIG_GET(number/threshold_body_size_penalty)
		if(features["body_size"] < penalty_threshold && old_size >= penalty_threshold)
			//reduce the maxhealth
			carbon_holder.maxHealth -= 10
			var/slowdown = (1 - round(features["body_size"] / penalty_threshold, 0.1)) * CONFIG_GET(number/body_size_slowdown_multiplier)
			holder.add_or_update_variable_movespeed_modifier(/datum/movespeed_modifier/small_stride, TRUE, slowdown)
		else
			if(old_size < penalty_threshold && features["body_size"] >= penalty_threshold)
				//give the maxhealth back
				carbon_holder.maxHealth  += 10
				holder.remove_movespeed_modifier(/datum/movespeed_modifier/small_stride) //remove the slowdown

