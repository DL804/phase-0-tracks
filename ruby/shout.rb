# Release 0 

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



