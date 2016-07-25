
def next_letter(name)
newarray = []
	# move vowels to the next vowel.... a --> e..but instead of working through entire alphabet, set vowel for ex. a --> d with .gsub before using .next method
	# also replace consanants to jump to next letter that is not a vowel
	# split the name into array, reverse and join it back into a string with a space
	name = name.downcase #downcase 
	name = name.split(' ').reverse #split into array and reserve
	name = name.join(' ') #join back into string so we can use the gsub string method
	name = name.gsub!(/[aeioudhnt]/,'a' => 'd', 'e' => 'h', 'i' => 'n', 'o' => 't', 'u' =>'a','d' => 'e', 'h' => 'i', 'n' => 'o','t' => 'u') 
	# change the vowels to the next vowel and constanants to the vowel in prep for .next 
	name = name.split('') #split into array so we can go through each letter
	name = name.each do |letter| #iterate through each letter to the next letter except "!" and feed into 'newarray'
		if letter != " "
		newarray << letter.next 
		end
	end
	name = newarray.join
	name = name.capitalize


end



puts "Please type a name, press enter to type in another name(type 'quit' to exit)"
response = gets.chomp.downcase

stored_spy_names = []
original_names =[]

until response == "quit"
	puts "Here is your spy name -->  " + next_letter(response) 
	original_names << ([response])
	stored_spy_names << ([next_letter(response)])
	puts "please enter another name or (type 'quit' to exit)"
	response = gets.chomp
end

#stored_spy_names.each do |names| puts "Here is a list of converted names #{names}"end

=begin index = 0 
 while index < original_names.length
	puts "Here is your real name" + "#{original_names[index]}" + "and here is your spy name" + "#{stored_spy_names[index]}"
index +=1 
=end end

(0...original_names.length).each do |i| puts "Here is your original name" + "#{original_names[i]}" + " and here is your spy name" + "#{stored_spy_names[i]}"
end


