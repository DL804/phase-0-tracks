
def next_letter(name)
newarray = []
	# move vowels to the next vowel.... a --> e..but instead of working through entire alphabet, set vowel for ex. a --> d with .gsub before using .next method
	# also replace consanants to jump to next letter that is not a vowel
	# split the name into array, reverse and join it back into a string with a space
	name = name.downcase #downcase 
	name = name.split(' ').reverse #split into array and reserve
	name = name.join(' ') #join back into string so we can use the gsub string method
	name = name.gsub!(/[aeioudhnt]/,'a' => 'd', 'e' => 'h', 'i' => 'n', 'o' => 't', 'd' => 'e', 'h' => 'i', 'n' => 'o','t' => 'u') 
	# change the vowels to the next vowel and constanants to the vowel in prep for .next 
	name = name.split('') #split into array so we can go through each letter
	name = name.each do |letter| #iterate through each letter to the next letter except "!" and feed into 'newarray'
		if letter != " "
		newarray << letter.next 
		end
	end
	#name = newarray.join('')
	name = newarray.join
	name = name.capitalize


end

#darren p next_letter("Felicia Torres")


#loop through until we get "n" and break loop

#while true

puts "Please type a name, press enter to type in another name(type 'quit' to exit)"
response = gets.chomp.downcase


#puts "Do you want to process another? type new name or type 'quit' to exit"
#response = gets.chomp	
until response == "quit"
	puts "Here is your fake name -->  " + next_letter(response) + " is also known as " + response
	response = gets.chomp
end