# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create(
				name: 			"HappyHealth",
				instructions: 	"The Smart Personal Health Record - Store your personal, medical and insurance information securely in the cloud, and auto-fill those annoying doctor's forms to save you time and spare you redundancy. Try it now!",
				language: 		"Design, Development"
				# project_type: 	"web-development",
				# web_address: 	"https://happyhealth.herokuapp.com"
				)

#Project.create(
#				name: 			"Prius Medical Center",
#				instructions: 	"Prius Medical Center is a respected Primary Care and Internal Medicine clinic serving a diverse patient community on the Northwest Side of Chicago. They needed a light-weight solution allowing patients to easily book appointments with the clinic's physicians online, while also elegantly interfacing with the organization's established IT software. I was able to provide this functionality with fast turn-around, and they were very pleased with the results.",
#				language: 		"Design"
				#project_type: 	"web-development",
				#web_address: 	"http://www.priusmedicalcenter.com"
				)