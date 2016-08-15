
=begin 
Write a program that allows an interior designer to enter details for client:
Client's name, Age, Number of children, Decor theme, number of rooms
=end 


=begin 
Write a program that allows an interior designer to enter details for client:
Client's name, Age, Number of children, Decor theme, number of rooms
=end 

#Create a new hash named client
client = {}

#Create new hash keys and insert value inputs 
print "Please enter your name:"
client[:name] = gets.chomp.capitalize

print "What is your age?"
client[:age] = gets.chomp.to_i

print "How many children do you have?"
client[:children] = gets.chomp.to_i

print "What type of decor theme are you interested in?"
client[:decor] = gets.chomp

print "Do you have a budget(yes,no)"
client[:budget] = gets.chomp

#print hash
puts  "Here are your inputs"
puts
puts client
#prompt designer if they need to update a key, but if they type "none" to exit
puts
puts "If you need to make a change, please type in the key name or type (none) to exit?"
puts 
user_response = gets.chomp
#if response is "none", end the program
#if response is one of the hash keys, get the updated response and update the hash key value. 
 	if 	user_response == "name"
	   	puts "Please update the name"
	   	client[:name] = gets.chomp  	
 	elsif user_response == "age"
 		puts "Please update the age"
 		client[:age] = gets.chomp
 	elsif user_response == "children"
 		puts "Please update the number of children"
 		client[:children] = gets.chomp
 	elsif user_response == "decor"
 		puts "Please update the decor choice"
 		client[:decor] = gets.chomp
 	elsif user_response == "budget"
 		client[:budget] = gets.chomp
 	else user_response == "none"  
 		puts "All edits completed"
 	end
 
 puts client
 

 	






