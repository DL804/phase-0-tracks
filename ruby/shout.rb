=begin Release 0 

module Shout

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def self.yelling_happily(words)
  	words + "ahhh happy"
  end

end

p Shout.yell_angrily("mad")
p Shout.yelling_happily("happy")

=end

# Release 3


module Speed
	def moving(sound)
		puts "This is the sound when go fast #{sound}"
	end
end

class Motorcycle
	include Speed
end

class Car
	include Speed
end

motorcycle = Motorcycle.new
motorcycle.moving("Vroom Vroom")

car = Car.new
car.moving("Vrooooooooooooooooomm")

