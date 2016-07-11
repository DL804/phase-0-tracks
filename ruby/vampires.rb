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

	
	


	
=begin I think I added an extra question in there, already started with the allergy yes question and trying 
to figure out how to get the list into it.... then I realized we were suppose to only do a list. hope this is okay, 
leaving it in the code so I can look back as a reminder. Is this okay to wrap a loop inside an 'if'?

=end
	

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
DO THE THING
Match the following conditions in the order they're listed. Your program should base its result on the latest condition matched, not the first condition matched. In other words, it's not a "only one condition will apply" sort of scenario. This may mean repeatedly updating a variable as each condition is checked, so that the variable always contains the most precise result.

If the employee got their age right, and is willing to eat garlic bread or sign up for insurance, the result is “Probably not a vampire.”
If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
Otherwise, print “Results inconclusive.”
Print the result at the end of the survey.

Release 3: Process Multiple Employees
Processing one employee at a time is fine, but some days, the Werewolf Resources Department hires quite a few employees.

DO THE THING
At the beginning of your program, ask the user how many employees will be processed, then begin the survey process for the first employee. After you print the result for that employee, start the survey over again, and repeat until all the employees have been processed.

(Hmm, doing things over and over again ... that certainly sounds like a loop, doesn't it?)

Release 4: Check for Suspicious Allergies
After getting some feedback from Werewolf Resources, we need to fine-tune our detection program.

DO THE THING
In addition to the other questions in the survey, use a loop to ask the employee to name any allergies, one at a time. The employee can type “done” when finished.

As long as the allergy is not “sunshine,” continue the loop for as long as is needed. If at any point the employee lists “sunshine” as an allergy, skip directly to the result of “Probably a vampire.”
=end

