# 4.4 Solo Challenge

	puts "How many users will we process"
	number_users = gets.chomp.to_i

until number_users <= 0 
	
	puts "what is your name?"
	name = gets.chomp == "Tu Fang" || "Drake Cula"
	
	puts "How old are you?"
	vampire_input_age = gets.chomp.to_i
	
	puts "What year were you born?"
	vampire_input_year = gets.chomp.to_i
	
	#calculating actual age by subtracting current date from vampire input age and comparing it to vampire input age 
	correct_age = (2016 - vampire_input_year) == vampire_input_age
	
	puts "Do you want some garlic bread?"
	garlic = gets.chomp == 'yes'

	puts "Would you like to enroll in the company's health insurance"
	insurance_enrollment = gets.chomp == 'yes'
	
	puts "Do you have any allergies?"
	allergies = gets.chomp == "yes"

	list_response = "" 

				
			if allergies
	     			until  list_response ==  "done" || list_response == "sunshine" 
	     			puts "please list(type 'done' to exit)"
	     			list_response = gets.chomp
		     			if list_response == "sunshine"
		       			puts "Probably a vampire inside allergy loop"
	     				end
	     			end
	     		
			end
	# If vampire input age is correct and eats garlic bread or needs insurance = Probably not a vampire
	# If vampire input age is incorrect, hates garlic bread or waives insurance = Probably a vampire
	# If vampire age is incorrect, hates garlic bread and doesn't want insurance = Almost certainly a vampire
	# Name of "Drake Cula" or "Tu Fang" is definitely a vampire 		
				
		if correct_age && (garlic || insurance_enrollment)
			puts "Probably not a vampire"
		elsif !correct_age && (garlic || insurance_enrollment)
			puts "Probably a vampire"
		elsif !correct_age && !garlic && !insurance_enrollment
			puts "Almost certainly a vampire"
		elsif name 
			puts "Definitely a vampire name"
		else 
			puts "Results inconclusive"
		end
				
number_users -= 1 
		
		
end

print "Actually, never mind! What do these questions have to do with anything? Let's all be friends."

=begin 
# Second version.... started with first version and then figured out I could write it another way
# I was just wondering if both are fine, or maybe they're both not good? Thanks Tyler. 

#Version 2


puts "How many employees will be processed"
employees = gets.chomp.to_i

until employees == 0 

	puts "what is your name"
	name = gets.chomp

	puts "How old are you?"
	age = gets.chomp.to_i

	puts "What year were you born?"
	year = gets.chomp.to_i

	correctyear = (2016 - year)

	puts "Do you want garlic bread?"
	garlic = gets.chomp

	puts "Do you want insurance?"
	insurance = gets.chomp

	puts "Do you have any allergies?"
	allergies = gets.chomp

	list_response = "" 

				
			if allergies =="yes"
	     			until  list_response ==  "done" || list_response == "sunshine" 
	     			puts "please list(type 'done' to exit)"
	     			list_response = gets.chomp
		     			if list_response == "sunshine"
		       			puts "Probably a vampire inside allergy loop"
	     				end
	     			end
	     		
			end	

	 	if age == correctyear && (garlic == "yes" || insurance == "yes")
			puts "Probably not a vampire"
		elsif age != correctyear && (garlic == "no" || insurance == "no")
			puts "Probably a vampire"
		elsif age != correctyear && garlic == "no" && insurance =="no"
			puts "Almost certainly a vampire"
		elsif name == "Drake Cula" || name == "Tu Fang"
			puts "Definitely a vampire"
		else 
			puts "Results inconclusive"

		end
employees -= 1
end

=end

