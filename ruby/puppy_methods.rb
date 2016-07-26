#Release 0
class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
  end
  
  def speak(sound)
  	 puts "#{sound} #{sound} #{sound}"
  end
  
  def roll_over(move)
  	puts "#{move}"
  end 
  
  def dog_years(num)
  	num = num.to_i
  	num * 15
  end
  
  def speak(word)
  	puts "#{word}"
  end
  
  def initialize 
  	puts "initializing new puppy instance"
  end
 

end

lucky = Puppy.new
lucky.fetch("ball")
lucky.speak("Woof")
lucky.roll_over("*rolls over*") 
lucky.dog_years("10")
lucky.speak("How you doing?")

#Release 2

#create new instances, then covert into array to .each. 

class Puppy

	def bark(sound)
		puts "#{sound}"
	end

	def move(jump)
		puts "#{jump}"
	end

end



dog_array = []
instance = 0 
	while instance < 50 
	dog_array << dog = Puppy.new 
	instance +=1 
end

dog_array.each do |dog|
	dog.bark("ahhh..woof")
	dog.move("jump")
end




