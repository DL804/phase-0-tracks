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


module Shout

  def yell_angrily(words)
    puts words + "!!!" + " :("
  end

  def yelling_happily(words)
  	puts words + "ahhh happy"
  end

end

class Boy
	include Shout
end

class Girl
	include Shout
end

boy = Boy.new
boy.yell_angrily("angry boy")
boy.yelling_happily("happy boy")

girl = Girl.new
girl.yell_angrily("angry girl")
girl.yelling_happily("happy girl")

