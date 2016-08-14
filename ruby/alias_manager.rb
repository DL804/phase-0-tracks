
def nextvowel(name)
	name = name.downcase.split(' ').reverse.join(' ')
	name = name.tr("aeiou", "eioua")
	name = name.tr("bcdfghjklmnpqrstvwxyz", "cdfghjklmnpqrstvwxyza")
	name = name.split(' ').join(' ').capitalize
end 

def capitalize(name)
	name = name.split(' ')
	capitalized_string = ""
	capitalized_string += lastname = name[0].capitalize
	capitalized_string += " " +  firstname = name[1].capitalize
end

stored_names = {}


puts "Please enter a name to convert"
loop do
input = gets.chomp
	if input != "done" 
		stored_names[input] = capitalize(nextvowel(input))
		p capitalize(nextvowel(input))
		puts "please type in another name(type 'done' to exit):"
	else 
		break if input == "done"
	end
end


stored_names.each do |name, fake_name|
puts "#{name}" + " is also known as " + "#{fake_name}"
end








