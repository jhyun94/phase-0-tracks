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

  def self.create_ninja(int)
    int.times do |num|
      #ninja = "ninja" + num.to_s
      ninja = Ninja.new
      $ninja_array << ninja
    end
  end
end

def all_methods(nin)
  nin.stealth_mode
  nin.throw_star(3)
  nin.assinate("Donald Duck")
end

#DRIVER CODE
$ninja_array =[]

Ninja.create_ninja(50)


p $ninja_array
p $ninja_array.length

#iterate through array of instances
$ninja_array.each do |instance|
  print_allmethods = all_methods(instance)
  puts print_allmethods
end



# pup = Puppy.new

# pup.fetch("big ball")

# pup.speak(5)

# pup.roll_over

# puts pup.dog_years(15)

# pup.play_dead

