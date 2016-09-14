//Helios

// Prison Station TODO

/datum/locations/helios
	name = "Helios"
	desc = "Helios is a human system that resides just beyond the far fringes of human-controlled space."

/datum/locations/helios/New(var/creator)
	contents.Add(
		new /datum/locations/firnir(src),
		new /datum/locations/tyr(src),
		new /datum/locations/sif(src),
		new /datum/locations/magni(src),
		new /datum/locations/kara(src),
		new /datum/locations/rota(src)
		)
	..(creator)

/datum/locations/firnir
	name = "Firnir"
	desc = "Tidally locked to Vir and having temperatures in excess of 570 degrees kelvin (299°C) on the day side has caused this planet to go mostly ignored."

/datum/locations/tyr
	name = "Tyr"
	desc = "Second closest planet, with a high concentration of minerals in the crust, but otherwise a typical planet. The surface temperature can reach \
	405 degrees kelvin (132°C), which deter most mining operations, except for one, which has a mining base and a few orbitals established, utilizing \
	specialized equipment, chiefly being autonomous synthetic mining drones, to retrieve precious ore in a rather expensive, but safer way, compared to the \
	pirate haven that is asteroid mining."

/datum/locations/sif
	name = "Sif"
	desc = "Falling within Vir's 'habitable zone', the third planet was the first to be colonized, initially by a large group of colonists owing \
	loyalty to their own employers. Unfortunate events discussed previously had forced the settlement to be abandoned, and then reclaimed. \
	The planet's mean temperature is 286 kelvin (13°C), chilly but habitable."

/datum/locations/magni
	name = "Magni"
	desc = "Outside of the habitable zone, Vir D is generally at 202 kelvin (-71°C)."

/datum/locations/hades
	name = "Hades"
	desc = "An uninhabitable world cracked by a massive planetary collision eons ago, leaving the planet's core exposed. The entire system is littered \
	with debris rich in minerals, making it a wealthy mining location. The OmniWatch owned Tartarus Penal Colony resides in this hazardous system where only \
	the most foolhardy pilots would dare to travel outside of heavily patrolled transit lanes."

/datum/locations/hades/New(var/creator)
	contents.Add(
		new /datum/locations/tartarus(src)
		)
	..(creator)

/datum/locations/tartarus //Inception joke here
	name = "Tartarus Penal Colony"
	desc = "The Tartarus is an asteroid-based penal colony owned and operated by OmniWatch Security Services. Originally conceived as 'just another pitstop' \
	for weary asteroid miners, the colony has been refurbished to house some of the galaxy's most notorious criminals; for a price."

/datum/locations/tartarus/New(var/creator)
	contents.Add(
		new /datum/locations/tartarus_interior(src)
		)
	..(creator)

/datum/locations/tartarus_interior
	name = "Tartarus Penal Colony Main Level"
	desc = "The Tartarus Penal Colony contains multiple layers, this one being the main level. It hosts both staff and prisoner facilities, divided up into \
	two different sectors, so as to provide staff a safe work environment, whilst still allowing suitable observation and management of prisoners interned here."

/datum/locations/rota
	name = "Rota"
	desc = "A Neptune-like ice giant, with a beautiful ring system circling it. It is 165 kelvin (-157°C)."