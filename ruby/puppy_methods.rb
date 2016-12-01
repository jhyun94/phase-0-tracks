class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
    int.times do
      puts "Woof!"
    end
  end

  def roll_over
    puts "*rolls over*"
  end
  def dog_years(human_years)
    dog_years = human_years / 15
  end
  def play_dead
    puts "*Gets hit by CAR!*"
  end

  def initialize
    puts "Initializing new puppy instance..."
  end

end


#DRIVER CODE
pup = Puppy.new

pup.fetch("big ball")

pup.speak(5)

pup.roll_over

puts pup.dog_years(15)

pup.play_dead


