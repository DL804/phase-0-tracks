#Release 0
class Puppy

  def initialize(age, color)
  	 puts "initializing new puppy instance"
     @age = age
     @color = color
  end 

  def fetch(toy)
    puts "I brought back the #{toy}!"
  end
  
  def speak(num)
     num.times do 
      puts "Woof"
     end
  end
  
  def roll_over
    puts "*rolls over*"
  end 
  
  def dog_years(num)
    num = num.to_i
    num * 15
  end
  
  def talking(word)
    puts "#{word}"
  end
 
end

lucky = Puppy.new(4, "brown")
lucky.fetch("ball")
lucky.speak(3)
lucky.roll_over
lucky.dog_years("10")
lucky.talking("How you doing?")

#Release 1-2

#create new instances, then covert into array to .each. 

class Puppynew

  def bark(sound)
    puts "#{sound}"
  end

  def move(jump)
    puts "#{jump}"
  end

end



dog_array = []
instance = 0 
  while instance < 5 
  dog_array << dog = Puppynew.new 
  instance +=1 
end

dog_array.each do |dog|
  dog.bark("ahhh..woof")
  dog.move("jump")
end