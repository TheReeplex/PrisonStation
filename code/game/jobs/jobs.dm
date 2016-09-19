
var/const/ENGSEC			=(1<<0)

var/const/CAPTAIN			=(1<<0)
var/const/HOS				=(1<<1)
var/const/WARDEN			=(1<<2)
var/const/DETECTIVE			=(1<<3)
var/const/OFFICER			=(1<<4)
var/const/CHIEF				=(1<<5)
var/const/ENGINEER			=(1<<6)
var/const/ATMOSTECH			=(1<<7)
var/const/AI				=(1<<8)
var/const/CYBORG			=(1<<9)
var/const/COFFICER			=(1<<10)
var/const/SWAT				=(1<<11)


var/const/MEDSCI			=(1<<1)

var/const/RD				=(1<<0)
var/const/SCIENTIST			=(1<<1)
var/const/CHEMIST			=(1<<2)
var/const/CMO				=(1<<3)
var/const/DOCTOR			=(1<<4)
var/const/GENETICIST		=(1<<5)
var/const/VIROLOGIST		=(1<<6)
var/const/PSYCHIATRIST		=(1<<7)
var/const/ROBOTICIST		=(1<<8)
var/const/XENOBIOLOGIST		=(1<<9)
var/const/PARAMEDIC			=(1<<10)


var/const/CIVILIAN			=(1<<2)

var/const/HOP				=(1<<0)
var/const/BARTENDER			=(1<<1)
var/const/CHEF				=(1<<2)
var/const/LIBRARIAN			=(1<<3)
var/const/QUARTERMASTER		=(1<<4)
var/const/JANITOR			=(1<<5)
var/const/CARGOTECH			=(1<<6)
var/const/LAWYER			=(1<<7)
var/const/CHAPLAIN			=(1<<8)
var/const/CLOWN				=(1<<9)
var/const/MIME				=(1<<10)
var/const/MFOREMAN			=(1<<11)
var/const/FFOREMAN			=(1<<12)

var/const/PRISONER			=(1<<3)

var/const/INMATE			=(1<<1)
var/const/MINER				=(1<<2)
var/const/BOTANIST			=(1<<3)
var/const/WORKER			=(1<<4)
var/const/PCHEF				=(1<<6)

var/list/command_positions = list(
	"Prison Administrator",
	"Head of Personnel",
	"Head of Security",
	"Chief Engineer",
	"Research Director",
	"Chief Medical Officer"
)


var/list/engineering_positions = list(
	"Chief Engineer",
	"Station Engineer",
	"Atmospheric Technician",
)


var/list/medical_positions = list(
	"Chief Medical Officer",
	"Medical Doctor",
	"Geneticist",
	"Psychiatrist",
	"Chemist",
	"Paramedic"
)


var/list/science_positions = list(
	"Research Director",
	"Scientist",
	"Geneticist",	//Part of both medical and science
	"Roboticist",
	"Xenobiologist"
)

//BS12 EDIT
var/list/cargo_positions = list(
	"Quartermaster",
	"Cargo Technician"
)

var/list/civilian_positions = list(
	"Head of Personnel",
	"Bartender",
	"Chef",
	"Librarian",
	"Lawyer",
	"Chaplain",
	"Janitor",
	"Kitchen Foreman",
	"Production Foreman",
	"Shaft Mine Foreman"
)


var/list/security_positions = list(
	"Head of Security",
	"Warden",
	"Detective",
	"Security Officer",
	"Crisis Response Officer",
	"Correctional Officer"
)

// Prison Station Edit
var/list/prisoner_positions = list(
	"Inmate",
	"Food Processing Laborer",
	"Factory Worker",
	"Shaft Mine Laborer"
)


var/list/nonhuman_positions = list(
	"AI",
	"Cyborg",
	"pAI"
)

/proc/guest_jobbans(var/job)
	return ((job in command_positions) || (job in nonhuman_positions) || (job in security_positions))

/proc/get_job_datums()
	var/list/occupations = list()
	var/list/all_jobs = typesof(/datum/job)

	for(var/A in all_jobs)
		var/datum/job/job = new A()
		if(!job)	continue
		occupations += job

	return occupations

/proc/get_alternate_titles(var/job)
	var/list/jobs = get_job_datums()
	var/list/titles = list()

	for(var/datum/job/J in jobs)
		if(J.title == job)
			titles = J.alt_titles

	return titles
