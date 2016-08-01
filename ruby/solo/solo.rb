class Word 

	attr_reader :guess_count, :player1input 
	attr_accessor :correct_letters
	
	def initialize(player1input)
		@player1input = player1input 
		@guess_count = player1input.length
		@guess = []
		@correct_letters = [].join('')
	end


	def print_status
	word = ""
		player1input.split('').each do |letter|
			if	@correct_letters.include?(letter)
			word += letter
			else 
			word += "_ "
			end 
		end
		 puts word
	end 
	
	def check_user2input(letter)
		if @guess.include?(letter) || @correct_letters.include?(letter)
		puts "You've already selected this letter, please select another"
		elsif   @player1input.include?(letter)
				@correct_letters << letter 
			    puts "You guessed a letter, please pick another"
		elsif  !@player1input.include?(letter)
				@guess_count -=1
				puts "letter is not in the word"
		else  
			puts "Sorry you ran out of guesses"
		end
	end
end



puts "Welcome to the Word game!"


puts "Please enter a word for Player 2"
player1word = gets.chomp 
Player2 = Word.new(player1word)

validinput = false || player1word == @correct_letters
until validinput 
puts "You have #{Player2.guess_count} guesses left"
puts "Please enter a letter"
player2letter = gets.chomp
 if Player2.guess_count == 0
 	puts "You are out of guesses, try again"
	validinput = true
elsif player2letter.length > 1
	puts "please only enter one letter"
else 
Player2.check_user2input(player2letter)
Player2.print_status
Player2.guess_count
end
end



