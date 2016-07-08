puts "What is your name?"
name = gets.chomp
puts "How old are you?"
age = gets.chomp.to_i
puts "What year were you born?"
birth_year = gets.chomp
age_year_match = 2016 - birth_year.to_i
puts "Our company cafeteria serves garlic bread. Should we order some for you?"
garlic_bread = gets.chomp
puts "Would you like to enroll in the company's health insurance?"
health = gets.chomp


if name == "Drake Cula" || name == "Tu Fang"
	puts "Definitely a vampire."
elsif age == age_year_match && garlic_bread == "yes" 
	puts "Probably not a vampire"
elsif age != age_year_match && (garlic_bread == "no" && health == "no")
	puts "Almost certainly a vampire"
elsif age != age_year_match && (garlic_bread == "no" || health == "no")
	puts "Probably a vampire"
else puts "Results inconclusive."
end	

