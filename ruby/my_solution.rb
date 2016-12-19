# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
# adds in code from a file relative to this one. require needs the code w/in same file

require_relative 'state_data' 

class VirusPredictor
  # runs each time a new class is created
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  # runs methods w/ the parameters
  
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  # displays a state's number of deaths in outbreak
  def predicted_deaths
    # predicted deaths is solely based on population density
    if @population_density >= 200
      number_of_deaths = (@population * 0.4).floor
    elsif @population_density >= 150
      number_of_deaths = (@population * 0.3).floor
    elsif @population_density >= 100
      number_of_deaths = (@population * 0.2).floor
    elsif @population_density >= 50
      number_of_deaths = (@population * 0.1).floor
    else
      number_of_deaths = (@population * 0.05).floor
    end

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end
  # determines speed of spread
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    if @population_density >= 200
      speed += 0.5
    elsif @population_density >= 150
      speed += 1
    elsif @population_density >= 100
      speed += 1.5
    elsif @population_density >= 50
      speed += 2
    else
      speed += 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


STATE_DATA.each do |state_name, value|
  state = VirusPredictor.new(state_name, value[:population_density], value[:population])
  state.virus_effects
end


=begin
What are the differences between the two different hash syntaxes shown in the state_data file?
one uses a hash rocket and the other uses a symbol
What does require_relative do? How is it different from require?
  require relative can use data within same directory, while requre uses data from same file.
What are some ways to iterate through a hash?

When refactoring virus_effects, what stood out to you about the variables, if anything?
What concept did you most solidify in this challenge?
  

  
=end