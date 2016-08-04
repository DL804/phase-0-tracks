# Virus Predictor

# I worked on this challenge [by myself, with: Annie Oh and Davina ].
# We spent [1.5] hours on this challenge.

# EXPLANATION OF require_relative
#require_relative imports data from another file within the same directory
#
require_relative 'state_data'

class VirusPredictor
# state, population, population_density initializes upon new instance of class
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

# utilizing two private methods to call on instance variables
  def virus_effects
    predicted_deaths    
    speed_of_spread
  end

  private #hides the methods below so they are not accessible outside of the class. 

 # takes population_density, population, state as parameters
 +  # shows number of predicted deaths based on population_density
  def predicted_deaths
    # predicted deaths is solely based on population density
   
    if @population_density >= 200
      multiplier = 0.4
    elsif @population_density >= 150
      multiplier = 0.3
    elsif @population_density >= 100
      multiplier = 0.2
    elsif @population_density >= 50
      multiplier = 0.1
    else
      multiplier = 0.05
    end
    
    number_of_deaths = (@population * multiplier).floor
    

    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  +  # takes population_density and state as parameters
 +  # calculates how quickly virus will spread based on population_density

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


STATE_DATA.each do |state, info|
  state = VirusPredictor.new(state, info[:population_density],info[:population] )
  state.virus_effects
end 




alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section
=begin
The hashrocket which can be used to initialize a key with or without the symbol. And also a key with the symbol which can be used to access the values. 
Require_relative gives you access to another file in the same directory... Require will need to search the computer for the file. 
.Each method can be used to iterate through hashes
That each method had instance variables which shouldn't be needed to be passed as arguments
I learned a bit more about classes and understood a bit better with nested hashes and refactoring. But the challenge for me was refactoring and how to change the code without modifying it too much.  
=end