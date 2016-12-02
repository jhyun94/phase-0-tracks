# class Puppy

#   def fetch(toy)
#     puts "I brought back the #{toy}!"
#     toy
#   end

#   def speak(int)
#     int.times do
#       puts "Woof!"
#     end
#   end

#   def roll_over
#     puts "*rolls over*"
#   end
#   def dog_years(human_years)
#     dog_years = human_years / 15
#   end
#   def play_dead
#     puts "*Gets hit by CAR!*"
#   end

#   def initialize
#     puts "Initializing new puppy instance..."
#   end

# end

class Ninja
  def initialize
    puts "Bonsai"
  end

  def throw_star(int)
    int.times { puts "*star throw* swoosh!"}
  end
  
  def stealth_mode
    puts "Ninja Creep... . . ."
  end

  def assinate(nam)
    puts "Kill #{nam}"
  end

end



#DRIVER CODE
ninja_array =[]


#iterate through array of instances


def all_methods(nin)
  nin.stealth_mode
  nin.throw_star(3)
  nin.assinate("Donald Duck")
end

50.times do 
  ninja_array<< Ninja.new
end

ninja_array.each do |instance|
  print_allmethods = all_methods(instance)
  puts print_allmethods
end


# pup = Puppy.new

# pup.fetch("big ball")

# pup.speak(5)

# pup.roll_over

# puts pup.dog_years(15)

# pup.play_dead