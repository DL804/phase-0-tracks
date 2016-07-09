	puts "How many users will we process"
	number_users = gets.chomp.to_i

until number_users <= 0 
	
	puts "what is your name?"
	name = gets.chomp == "Drake Cula" || "Tu Fang"
	
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
	allergies = gets.chomp

	
	
	# If vampire input age is correct and eats garlic bread or needs insurance = Probably not a vampire
	# If vampire input age is incorrect, hates garlic bread or waives insurance = Probably a vampire
	# If vampire age is incorrect, hates garlic bread and doesn't want insurance = Almost certainly a vampire
	# Name of "Drake Cula" or "Tu Fang" is definitely a vampire 
	
=begin I think I added an extra question in there, already started with the allergy yes question and trying to figure out how to get the list into it.... then I realized we were suppose to only do a list. hope this is okay, leaving it in the code so I can look back as a reminder. Is this okay to wrap a loop inside an 'if'?
=end
	

list_response = "" 

		if allergies == "yes"
				until list_response ==  "done" || list_response == "sunshine"
	     			puts "please list"
	     			list_response = gets.chomp
		     			if list_response == "sunshine"
		       				puts "Probably a vampire inside allergy loop"
	     	 			end
				end
		elsif correct_age && (garlic || insurance_enrollment)
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
	
