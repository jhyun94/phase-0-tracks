classroom = {
	front_desk: {
		name: "front desk",

		supplies: [
			"pencils",
			"erasers",
			"glue"
		]
	},

	middle_desk: {
		name: "back desk",

		supplies: [
			"pens",
			"staples",
			"ruler"
		]
	}
}

puts classroom[:front_desk][:name]
puts classroom[:middle_desk][:supplies]
puts classroom[:middle_desk][:supplies][0]
print "\n"
puts classroom[:middle_desk][:supplies].push("water bottle")
