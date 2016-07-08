puts "How many employees will be processed?"
num_employees = gets.chomp.to_i
employee_count = 0 

while employee_count < num_employees do

	puts "What is your name?"
	name = gets.chomp
	puts "How old are you?"
	age = gets.chomp.to_i
	puts "What year were you born?"
	birth_year = gets.chomp
	age_year_match = 2016 - birth_year.to_i
	puts "Our company cafeteria serves garlic bread. Should we order some for you? (yes/no)"
	garlic_bread = gets.chomp
	puts "Would you like to enroll in the company's health insurance? (yes/no)"
	health = gets.chomp
	allergies = ""

	until allergies == "done" do
		puts "Name an allergy you have. (Type done if you are finished and have no more allergies to share.)"
		allergies = gets.chomp
		if allergies == "sunshine"
	 		puts "Probably a vampire"
			allergies = "done"
		elsif name == "Drake Cula" || name == "Tu Fang"
		puts "Definitely a vampire."
		elsif age == age_year_match && garlic_bread == "yes" 
		puts "Probably not a vampire."
		elsif age != age_year_match && (garlic_bread == "no" && health == "no")
		puts "Almost certainly a vampire."
		elsif age != age_year_match && (garlic_bread == "no" || health == "no")
		puts "Probably a vampire"
		else puts "Results inconclusive."
		end
	end

	employee_count +=1

end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."