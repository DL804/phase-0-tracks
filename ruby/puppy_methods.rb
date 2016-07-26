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
  
  
 

end

lucky = Puppy.new
lucky.fetch("ball")
lucky.speak("Woof")
lucky.roll_over("*rolls over*") 
lucky.dog_years("10")
lucky.speak("How you doing?")
