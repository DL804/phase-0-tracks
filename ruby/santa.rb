class Santa 

attr_reader :age, :ethnicity
attr_accessor :gender

	def initialize(gender, ethnicity)
		puts "Initializing Santa instance ..."
		@gender = gender
		@ethnicity = ethnicity
		@reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
		@age = 0 
	end

=begin getter method
	def age 
		@age
	end

	def ethnicity
		@ethnicity
	end
	#setter method
	def gender=(newgender)
		@gender = newgender
	end
=end 


	def celebrate_birthday(age)
		@age +=1 
	end
	
	def getmad(name)
		@reindeer_ranking.each do |bad_reindeer|
			if bad_reindeer == name
			@reindeer_ranking.insert(-1, @reindeer_ranking.delete_at(@reindeer_ranking.index(name)))
			p @reindeer_ranking
			end
		end
	end

	#then I realized I could of written
	#def getmad(name)
	#@reindeer_ranking.delete(name)
	#@reindeer_ranking.push(name)
	#end .... this is much easier *sigh* 


	def speak
		puts "Ho Ho Ho, I'm a #{@gender}"
	end

	def eat_milk_and_cookies
		puts "*roll"
	end

end

santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]
example_genders.length.times do |i| 
	santas << Santa.new(example_genders[i],example_ethnicities[i])
end

santas.each do |word|
	word.speak
end



#Release 2 

fake_santa = Santa.new("unknown_gender", "outerspace_race")
p fake_santa.age
p fake_santa.gender
p fake_santa.ethnicity
p "My age is #{fake_santa.celebrate_birthday(rand(100))}"

fake_santa.getmad("Vixen")


#Release 4

class Santa2

	def initialize(gender, ethnicity, age)
		@gender = gender 
		@ethnicity = ethnicity
		@age = age
	end
	
end 

new_santas = []
gender1 = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicity1 = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]



counter = 0 
while counter < 50
newsanta = Santa2.new(gender1[rand(6)], ethnicity1[rand(6)], rand(141))
p newsanta
counter +=1 
end 

