class Game

	def match_letter(user1_word, user2_letter)
	#take the final word and split it into an array 
	correct_word = user1_word.split('')
	#now iterate through each letter in that word, compare it to user_2 input 
	#any matching letter will be pushed into a incomplete guessed word array 
	incomplete_word = []
		correct_word.each do |letter|
			if letter == user2_letter
			incomplete_word << letter 
			end
	end 

	def print 
		

end