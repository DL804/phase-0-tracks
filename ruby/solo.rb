=begin 
Release 0 

Motorcycle class with brand, model and horsepower as attributes. 

1. method to upgrade the horsepower by 5hp or 10hp depending on the parts used
2. method to spin the tires
3. method to determine if the tires are safe to ride on

=end

class Motorcycle

	attr_reader :year, :brand
	attr_accessor :horsepower 


	def initialize(year, brand, horsepower)
		@horsepower = horsepower
		@year = year
		@brand = brand
	end

	def horsepower_upgrade(part)
		if part == "exhaust"
			@horsepower += 10
		else part == "filter"
			@horsepower +=5
		end
	end

	def spin_tires
		puts "tires spinning *smoooookin*"
	end

	def tire_check(depth_in_mm) 
		if depth_in_mm < 3
			puts "Not enough tread buddy, change your tires"
		else
			puts "Tires are good, let's spin them!"
			spin_tires
		end
	end
end


 #Driver code 
 # Ducati = Motorcycle.new(2004, "Ducati", 150)
 # Ducati.horsepower("filter")
 # Ducati.spin_tires
 # Ducati.tire_check(5)
 # Ducati.tire_check(2)


#User interface
instance_array = []

puts "How many bikes do you want to create?"
input_number = gets.chomp.to_i 
count = 0 
while count < input_number
	puts "What year is this bike?"
	year_input = gets.chomp.to_i
	puts "What is the brand name?"
	brand_input = gets.chomp.capitalize
	puts "How many horsepower?"
	horsepower_input = gets.chomp.to_i

	instance_array << newbike = Motorcycle.new(year_input, brand_input, horsepower_input)
	
		puts "You currently have #{horsepower_input}HP, do you want to upgrade with performance parts('yes', 'no')"
		upgrade_response = gets.chomp
			if upgrade_response == "yes"
				puts "Please type 'exhaust' for a +10HP boost or 'filter' for a +5HP boost"
				upgrade_request = gets.chomp
				original_horsepower = newbike.horsepower
				newbike.horsepower_upgrade(upgrade_request) 
				puts "Very cool, you started with #{original_horsepower}HP and now it's upgraded to #{newbike.horsepower}HP"
			end	
	count +=1
end


	instance_array.each do |instance|
	puts "You created a #{instance.year}, #{instance.brand} motorcycle with #{instance.horsepower}HP"
	puts "One last question, do you want to spin the tires on this #{instance.brand}('yes', 'no')?"
	response = gets.chomp
		if response == "yes"
			puts "let's make sure your tires will spin properly, how much tread(mm) do you have left (1-6)?"
			tread = gets.chomp.to_i
			instance.tire_check(tread)
		end

	end


