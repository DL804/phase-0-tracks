# Virus Predictor

# I worked on this challenge [by myself, with: Laura Mareno
# We spent [1] hours on this challenge.

# EXPLANATION OF require_relative
#
# Require_relative points to other file for the program executed here
# Require can point to a different location, require_relative points within the same folder
require_relative 'state_data'

class VirusPredictor
  #defines initial attribute of that class upon instance creation
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end
  #prints out predicted_deaths and speed_of_spread method results
  
  
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private
  #takes attributes in argument to print out the number of deaths in state
  def predicted_deaths
    # predicted deaths is solely based on population density
    
    if @population_density >= 200
      death_multiplier = 0.4
    elsif @population_density >= 150
      death_multiplier = 0.3
    elsif @population_density >= 100
      death_multiplier = 0.2
    elsif @population_density >= 50
      death_multiplier = 0.1
    else
      death_multiplier = 0.05
    end

    number_of_deaths = (@population * death_multiplier).floor

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  #takes attributes in argument to print out the speed of deaths in state
  def speed_of_spread #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.

    if @population_density >= 200
      speed = 0.5
    elsif @population_density >= 150
      speed = 1
    elsif @population_density >= 100
      speed = 1.5
    elsif @population_density >= 50
      speed = 2
    else
      speed = 2.5
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state


# alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
# alabama.virus_effects

# jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
# jersey.virus_effects

# california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
# california.virus_effects

# alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
# alaska.virus_effects

STATE_DATA.each do |state, pop_den| 
  state = VirusPredictor.new(state, pop_den[:population_density], pop_den[:population])
state.virus_effects
end



#=======================================================================
# Reflection Section
=begin
The hashrocket which can be used to initialize a key with or without the symbol. And also a key with the symbol which can be used to access the values. 
Require_relative gives you access to another file in the same directory... Require will need to search the computer for the file. 
.Each method can be used to iterate through hashes
That each method had instance variables which shouldn't be needed to be passed as arguments
I learned a bit more about classes and understood a bit better with nested hashes and refactoring. But the challenge for me was refactoring and how to change the code without modifying it too much.  
=end