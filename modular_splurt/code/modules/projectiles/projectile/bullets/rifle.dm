/obj/item/ammo_casing/a308
	name = ".308 bullet casing"
	desc = "A .308 bullet casing."
	icon_state = "762-casing"
	caliber = ".308"
	projectile_type = /obj/item/projectile/bullet/a308

/obj/item/projectile/bullet/a308
	name = ".308 bullet"
	damage = 45
	wound_bonus = -15
	wound_falloff_tile = 0

/obj/item/ammo_casing/a308/sleepy
	name = ".308 bullet casing (Soporific)"
	desc = "A .308 bullet soporific casing."
	projectile_type = /obj/item/projectile/bullet/a308/sleepy

/obj/item/projectile/bullet/a308/sleepy
	name =".308 Soporific bullet"
	armour_penetration = 0
	damage = 0
	dismemberment = 0
	knockdown = 0

/obj/item/projectile/bullet/a308/sleepy/on_hit(atom/target, blocked = FALSE)
	if((blocked != 100) && isliving(target))
		var/mob/living/L = target
		L.Sleeping(200)
	return ..()

/obj/item/ammo_casing/a308/rubber
	name = ".308 bullet casing (Rubber)"
	desc = "A .308 bullet casing."
	icon_state = "762-casing"
	caliber = ".308"
	projectile_type = /obj/item/projectile/bullet/a308

/obj/item/projectile/bullet/a308/rubber
	name = ".308 Rubber bullet"
	damage = 5
	armour_penetration = 0
	wound_bonus = 0
	stamina = 30
	sharpness = SHARP_NONE
	embedding = null

/obj/item/ammo_casing/g45l
	name= ".45 Long bullet casing (Rubber)"
	desc = "An .45 Long bullet casing."
	caliber = ".45l"
	projectile_type = /obj/item/projectile/bullet/g45l

/obj/item/ammo_casing/g45l/lehtal
	name= ".45 Long bullet casing (Lethal)"
	projectile_type = /obj/item/projectile/bullet/g45l/lethal

/obj/item/projectile/bullet/g45l
	name = ".45 Long Rubber bullet"
	damage = 5
	armour_penetration = 0
	wound_bonus = 0
	stamina = 35
	sharpness = SHARP_NONE
	embedding = null

/obj/item/projectile/bullet/g45l/lethal
	name = ".45 Long Lethal bullet"
	damage = 35
	armour_penetration = 0
	wound_bonus = -5
	stamina = 0
	sharpness = SHARP_EDGED
