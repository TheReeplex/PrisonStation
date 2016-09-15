//Helios

// Prison Station TODO

/datum/locations/helios
	name = "Helios"
	desc = "Helios is the name of a human controlled star system that resides just beyond the far fringes of inhabited space."

/datum/locations/helios/New(var/creator)
	contents.Add(
		new /datum/locations/coeus(src),
		new /datum/locations/theia(src),
		new /datum/locations/cronus(src),
		new /datum/locations/hades(src),
		new /datum/locations/themis(src)
		)
	..(creator)

/datum/locations/coeus
	name = "Coeus"
	desc = "In addition to being the closest planet to the host star, with temperatures in excess of 700 degrees kelvin (426°C), the planet also has a rapid spin, \
	with a day-night cycle of only a few hours, giving it a distinct ellipsoid shape. Once thought to be a possibly rich mining prospect, those thoughts were \
	quickly torn to pieces along with the crew of the first and only human colony ship attempting to land on Coeus, as it was completely eviscerated by the \
	planet's immensely powerful and unpredictable magnetic field. A following support ship recorded small bits of metallic debris firing off in every direction \
	of the colony ship's intended landing zone, some in excess of 2,000 kilometers per hour."

/datum/locations/theia
	name = "Theia"
	desc = "A brilliantly white rocky world with vast oceans of shimmering liquid that looks as if it's made of gold. In truth, it's sulphuric acid. Scientists \
	remain baffled as to how this planet came to form. Temperatures on this planet sit roughly at 433 kelvin (160°C) all year long. The entire world is \
	sterile, and the air is highly toxic."

/datum/locations/cronus
	name = "Cronus"
	desc = "Falling within inner edge of Helios's 'habitable zone', the third planet was the only to be colonized, then subsequently abandoned after \
	discovering the fauna present on the jungle world was largely toxic, predatory, and had a taste for human meat. The planet's mean temperature is \
	303 kelvin (30°C), and the world is battered by frequent rainstorms and oppressive humidity. Some former colonists have taken to calling the planet \
	Pandora, alluding to the planet's many hazards, or perhaps some long forgotten pop-culture reference."

/datum/locations/hades
	name = "Hades"
	desc = "A dead world cracked by a massive planetary collision eons ago, leaving the planet's core exposed. The entire system is littered \
	with debris rich in minerals, making it a wealthy mining location. The OmniWatch owned Tartarus Penal Colony resides in this hazardous system where only \
	the most foolhardy pilots would dare to travel outside of heavily patrolled transit lanes."

/datum/locations/hades/New(var/creator)
	contents.Add(
		new /datum/locations/tartarus(src)
		)
	..(creator)

/datum/locations/tartarus
	name = "Tartarus Penal Colony"
	desc = "The Tartarus is an asteroid-based penal colony owned and operated by OmniWatch Security Solutions. Originally conceived as 'just another pitstop' \
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

/datum/locations/themis
	name = "Themis"
	desc = "A Jupiter-like gas giant, with a beautiful ring system circling it. The temperature in the clouds is about 128 kelvin (-145°C). The temperature \
	near the planet's center on the other hand is much, much hotter. The core temperature may be up to 24,273 kelvin (24,000°C)."