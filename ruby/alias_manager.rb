
def nextvowel(name)
	name = name.downcase.split(' ').reverse.join(' ')
	name = name.tr("aeiou", "eioua")
	name = name.tr("bcdfghjklmnpqrstvwxyz", "cdfghjklmnpqrstvwxyza")
	name = name.split(' ').join(' ').capitalize
end 

def capitalize(name)
	name = name.split(' ')
	capitalized_string = ""
	capitalized_string += name[0].capitalize
	capitalized_string += " " +  name[1].capitalize
end

stored_names = {}



# puts "Please enter a name to convert"
# loop do
# input = gets.chomp
# 	if input != "done" 
# 		stored_names[input] = capitalize(nextvowel(input))
# 		p capitalize(nextvowel(input))
# 		puts "please type in another name(type 'done' to exit):"
# 	else 
# 		break if input == "done"
# 	end
# end


# could write this with while loop 
puts "Please enter a name to convert"
input = gets.chomp
	while input != "done" 
		stored_names[input] = capitalize(nextvowel(input))
		p capitalize(nextvowel(input))
		puts "please type in another name or (type 'done' to exit):"
		input = gets.chomp
	end



stored_names.each do |name, fake_name|
puts "#{name}" + " is also known as " + "#{fake_name}"
end









