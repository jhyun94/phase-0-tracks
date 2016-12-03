class Santa
	def initialize(gender,ethnicity)
		puts "Initializing Santa instance..."
		@gender=gender
		@ethnicity=ethnicity
		@age=0
		@reindeer_ranking=["Rudolph", "Dasher", "Prancer", "Vixen",
			"Comet", "Cupid", "Donner", "Blitzen"]
	end

	attr_reader :reindeer_ranking
	attr_accessor :gender, :age,  :ethnicity


	def celebrate_birthday
		@age+=1
	end
	def get_mad_at(reindeer)
		reindeer_ranking.delete(reindeer)
		reindeer_ranking.push(reindeer)
	end

	def speak
		puts"Ho, ho, ho! Haaaapy holidays!"
	end

	def eat_milk_and_cookies(cookie)
		puts "That was a good #{cookie}!"
	end


end

genders=["agender", "female", "male", "n/a" , "bigender"]
ethnicities=["Latino", "Japanese", "prefer not to answer", "mystical creature"]
santas=[]

10.times do 
	genders.shuffle!
	ethnicities.shuffle!
	santas << Santa.new(genders[0],ethnicities[0])
end

santas.each do |santa|
	santa.age=rand(0..140)
	puts "Gender: #{santa.gender}"
	puts "Ethnicity: #{santa.ethnicity}"
	puts "Age: #{santa.age}"
	puts "\n"
end









