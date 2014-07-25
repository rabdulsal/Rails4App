# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Project.create(
				name: 			"Portfolio Site",
				instructions: 	"I designed and built this portfolio site using Rails 4 on the backend and Bootstrap 3 on the front. I encourage you to look around and view my work, and don't hesitate to reach out if you have your own passion-project in need of a talented and dedicated designer/developer.",
				language: 		"Design, Development",
				project_type: 	"website",
				website: 		"http://rashadsalaam.com"
				)

Project.create(
				name: 			"HappyHealth",
				instructions: 	"This project was a deep, personal passion of mine, and my attempt at building a tool to solve the problem of: "Why is it when I go to the doctor's office I have to deal with a bunch of paperwork, and then when I see a different doctor I have to answer all the same questions from the last one? Why isn't there one place where my information is stored, and then each doctor is updated automatically when I arrive?" HappyHealth was designed to securely store your basic personal, medical and insurance information in the cloud, then auto-fill different doctor offices' forms and print them out - all to save time and spare redundancy. I continue to make small updates and improvements to this project where I can.",
				language: 		"Design, Development",
				project_type: 	"web-application",
				website: 		"https://happyhealth.herokuapp.com"
				)

#Project.create(
#				name: 			"Prius Medical Center",
#				instructions: 	"Prius Medical Center is a respected Primary Care and Internal Medicine clinic serving a diverse patient community on the Northwest Side of Chicago. They needed a light-weight solution allowing patients to easily book appointments with the clinic's physicians online, while also elegantly interfacing with the organization's established IT software. I was able to provide this functionality with fast turn-around, and they were very pleased with the results.",
#				language: 		"Design"
				#project_type: 	"web-development",
				#web_address: 	"http://www.priusmedicalcenter.com"
#				)